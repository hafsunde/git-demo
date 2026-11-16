# Rebuild everything in results/ from the exports.
# Run from the project root: source("analysis/build_all.R")

export_dirs <- sort(list.dirs("exports/raw", recursive = FALSE))
latest <- tail(export_dirs, 1)
message("Using export: ", latest)

res <- read.csv(file.path(latest, "results.csv"))
res <- res[order(res$or), ]
res$q <- p.adjust(res$p, method = "BH")

dir.create("results", showWarnings = FALSE)

# Table
tab <- data.frame(
  Outcome  = res$outcome,
  Cases    = res$n_cases,
  `OR (95% CI)` = sprintf("%.2f (%.2f to %.2f)", res$or, res$lower, res$upper),
  q        = signif(res$q, 2),
  check.names = FALSE
)
write.csv(tab, "results/table_main.csv", row.names = FALSE)

# Figure
png("results/figure_main.png", width = 1600, height = 1000, res = 200)
par(mar = c(4, 8, 1, 1))
y <- seq_len(nrow(res))
plot(res$or, y, xlim = range(c(res$lower, res$upper)), yaxt = "n", pch = 19,
     log = "x", xlab = "Odds ratio (exposed vs not)", ylab = "")
segments(res$lower, y, res$upper, y)
abline(v = 1, lty = 2)
axis(2, at = y, labels = res$outcome, las = 1)
dev.off()

message("Wrote results/table_main.csv and results/figure_main.png")
