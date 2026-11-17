# Is age at first birth associated with health later in life?
# The data are simulated (see simulate_data.R).

dat <- read.csv("sim_data.csv")

fit <- lm(health ~ age_first_birth, data = dat)
summary(fit)
