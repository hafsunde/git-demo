# Toy project: exposure and childhood diagnoses

A small, fake project laid out like a real secure-server project.
All data are simulated.

## Where the analyses run

The real data cannot leave the secure server (TSD).
So **no data lives in this repo**.
The `TSD/` folder is edited here, copied to the server, and run there.
Only aggregate results come back, into `exports/`.

```text
local repo (git + GitHub)                 TSD (secure server)
──────────────────────────                ───────────────────
TSD/           ── copy in ─────────────▶  run_models.R on real data
exports/raw/   ◀── export aggregates ───  output/
analysis/      ──▶ results/  ──▶ manuscript/
development/   simulated data, so TSD/ scripts run locally
```

## Layout

| Path | What's in it |
|---|---|
| `TSD/` | Server scripts. `run_models.R` is the entry point. Self-contained. |
| `development/` | `simulate_data.R` makes fake data with the same columns as the real data. |
| `exports/raw/<date>_<tag>/` | Aggregate results from TSD. Never edited. See `exports/MANIFEST.md`. |
| `analysis/` | `build_all.R` rebuilds everything in `results/` from the latest export. |
| `results/` | Generated table and figure. |
| `manuscript/` | LaTeX draft, one sentence per line. |

## Run it locally

In R, with this folder as the working directory (open `toy-project.Rproj`):

```r
source("development/simulate_data.R")   # fake data -> development/sim_data.rds
setwd("TSD"); source("run_models.R"); setwd("..")   # "server" run on fake data
source("analysis/build_all.R")          # exports -> results/
```
