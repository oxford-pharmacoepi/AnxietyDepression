
## Instructions to run

### Run diagnostics

1.  Open the **diagnostics_code** folder.
2.  Make sure to open the **diagnostics_code.Rproj** project in RStudio.
4.  Restore packages from `renv.lock` with `renv::restore()`.
5.  Open CodeToRun.R, fill in the required fields to connect to your database and create a cdm reference and the run `source(here("run_study.R"))`.
6.  When finished, a results .csv file will be created in the **Results** folder. This .csv file only contains aggregated data with results and can be shared.

### Review diagnostics in a Shiny app

1.  Navigate to the `diagnostics_shiny` folder and open the project file `shiny.Rproj` in RStudio. You should see the project name in the top-right corner of your RStudio session.
2.  Copy the result files (in .csv format) into the `data/raw` folder located within the `diagnostics_shiny` folder.
3.  Open the `global.R` script in the `shiny` folder.
4.  Click the *Run App* button in RStudio to launch the local Shiny app for interactive exploration of the results.

This repository contains the code to run the phenotype diagnostics for anxiety and depression. It contains two subfolders:

diagnostics_code for the code to run to analyse the cohorts of interest

diagnostics_shiny with the correspondent shiny app to view the output


NOTE: At this stage, we have only written code for the diagnostics, so the folders related to the study code and study shiny are empty.
