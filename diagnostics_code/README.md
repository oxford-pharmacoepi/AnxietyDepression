# Diagnostics code

Introduction
This repository contains the code to run the phenotype diagnostics of anxiety and depression.

Running the analysis
You should have downloaded the entire study repository (you can download as a zip folder using Code -> Download ZIP, or you can use GitHub Desktop).

Open the project diagnostics_code.Rproj in RStudio (when inside the project, you will see its name on the top-right of your RStudio session).

Load all the necessary libraries using renv.

renv::activate()

renv::restore()

Open the code_to_run.R file, which should be the only file that you need to interact with. Run the lines in the file, adding your database specific information and so on. The last line of this file will run the study: source(here("run_study.R").

After running you should then have results to share in your Results folder.

You can additionally check your results with the inbuilt shiny app. In the main study repository there is a folder called diangostics_shiny. Copy the resulting csv file in your results folder inside the data/raw folder in that shiny sub-repository and launch it to peruse the results. If you update the csv at any point you will have to delete the .RData/.qs file and relaunch the app for the changes to take effect.

