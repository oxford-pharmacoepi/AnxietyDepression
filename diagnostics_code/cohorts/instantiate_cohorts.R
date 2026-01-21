
codes <- importCodelist(here::here("cohorts"), type = "csv")
cdm$study_cohort <- conceptCohort(cdm,
                                  conceptSet = codes,
                                  name = "study_cohort",
                                  exit = "event_start_date")
cdm$study_cohort <- cdm$study_cohort |>
  exitAtObservationEnd()
