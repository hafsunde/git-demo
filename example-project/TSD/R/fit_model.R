# Fit one logistic regression per outcome and return aggregate results only.

min_cases <- 5  # cells smaller than this are not exported (privacy rule)

fit_one <- function(outcome, data) {
  n_cases <- sum(data[[outcome]])
  if (n_cases < min_cases) {
    return(data.frame(outcome = outcome, n_cases = NA, or = NA,
                      lower = NA, upper = NA, p = NA))
  }

  fit <- glm(as.formula(paste(outcome, "~ exposed + sex")),
             data = data, family = binomial)

  est <- coef(summary(fit))["exposed", ]
  data.frame(
    outcome = outcome,
    n_cases = n_cases,
    or      = exp(est[["Estimate"]]),
    lower   = exp(est[["Estimate"]] - 1.96 * est[["Std. Error"]]),
    upper   = exp(est[["Estimate"]] + 1.96 * est[["Std. Error"]]),
    p       = est[["Pr(>|z|)"]]
  )
}
