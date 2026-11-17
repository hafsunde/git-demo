# Make the fake data used by analysis.R. Already run: you don't need to run it again.
# Kept for documentation, so you can see how sim_data.csv was made.

set.seed(2026)
n <- 1000

dat <- data.frame(education = round(rnorm(n, mean = 13, sd = 2.5)))  # years
dat$age_first_birth <- round(27 + 0.8 * (dat$education - 13) + rnorm(n, sd = 3))
dat$health <- round(30 + 0.2 * dat$age_first_birth + 2 * dat$education +
  rnorm(n, sd = 10), 1)                                              # score 0-100

write.csv(dat, "sim_data.csv", row.names = FALSE)
