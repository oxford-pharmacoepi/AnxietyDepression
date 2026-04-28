# create logger ----
resultsFolder <- here("results")
if(!dir.exists(resultsFolder)){
  dir.create(resultsFolder)
}

createLogFile(logFile = tempfile(pattern = "log_{date}_{time}"))
logMessage("LOG CREATED")

# run ----
result <- list()
source(here("cohorts","instantiate_cohorts.R"))
logMessage("Running PhenotypeDiagnostics")
diagnostics <- phenotypeDiagnostics(cdm$study_cohort)

exportSummarisedResult(diagnostics,
                       minCellCount = minCellCount,
                       fileName = "phenotyper_results_{cdm_name}_{date}.csv",
                       path = resultsFolder)

logMessage("Finished")
