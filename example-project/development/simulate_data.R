# Simulate a fake cohort with the same columns as the real data on TSD.
# Lets us run TSD/run_models.R locally and build the post-processing
# before the real results exist.
#
# Run from the project root: source("development/simulate_data.R")

set.seed(2026)
n <- 20000

sim <- data.frame(
  id         = seq_len(n),
  sex        = sample(c("female", "male"), n, replace = TRUE),
  birth_year = sample(1990:2010, n, replace = TRUE),
  exposed    = rbinom(n, 1, 0.3)
)

# Eight outcomes, each with its own true effect of exposure (log odds ratio)
true_effects <- c(
  asthma = 0.30, adhd = 0.20, depression = 0.15, anxiety = 0.10,
  migraine = 0.00, eczema = 0.05, obesity = 0.25, hypertension = 0.00
)
baseline <- c(
  asthma = -2.5, adhd = -3.0, depression = -2.8, anxiety = -2.6,
  migraine = -3.2, eczema = -2.9, obesity = -3.1, hypertension = -6.5
)

for (dx in names(true_effects)) {
  lp <- baseline[dx] + true_effects[dx] * sim$exposed +
    0.02 * (sim$birth_year - 2000)
  sim[[dx]] <- rbinom(n, 1, plogis(lp))
}

saveRDS(sim, "development/sim_data.rds")
message("Wrote development/sim_data.rds (", n, " rows). This file is gitignored.")
