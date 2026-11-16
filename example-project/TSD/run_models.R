# Entry point on the secure server.
# This folder is copied to TSD as a unit and run there, with the working
# directory set to this TSD/ folder. Locally it runs on simulated data.

on_tsd <- dir.exists("/tsd")

data_file <- if (on_tsd) {
  "/tsd/pXXXX/data/durable/prepared/cohort.rds"   # real data, never leaves TSD
} else {
  "../development/sim_data.rds"                    # simulated data
}

source("R/fit_model.R")

dat <- readRDS(data_file)
outcomes <- c("asthma", "adhd", "depression", "anxiety",
              "migraine", "eczema", "obesity", "hypertension")

results <- do.call(rbind, lapply(outcomes, fit_one, data = dat))

dir.create("output", showWarnings = FALSE)
out_file <- file.path("output", paste0(Sys.Date(), "_results.csv"))
write.csv(results, out_file, row.names = FALSE)
message("Wrote ", out_file, ". Check it, then export it from TSD.")
