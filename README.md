# ReadME

This repository contain the files needed to render Final_project_config\_\$WHICH_CONFIG.html. It contains a hierarchically ordered set of code folders, a folder with the raw data and clean data set `data/Flurosis2.csv` a folder with the code output, the RMarkdown file Final_project.Rmd and its associated .html file, a .gitignore file, a Makefile that contains GNU Make commands for rendering the report and its components, and a config file that allows the user to customize the report. Briefly this analysis provides the descriptive level of upper molar incisor teeth flurosis in the us stratified by age and gender.

# Instructions for generating the report

You will need RStudio, bash, and GNU Make to render this report as intended.

A. Clone the Final_projct4 repository from GtiHub to a local directory. B. Navigate to the cloned repository. Set this as your working directory. C. Synchronize your local project directroy with the renv.lock file to make sure that your have the correct R packages and versions of this analysis. You can do this by running the command `make install` in the bash shell of Rstudion terminal. D. Type the command `make` in the RStudio terminal with a bash shell to create the components of the report and compile Final_project_config\_\$WHICH_CONFIG.html in your local final_project directory under report folder. Alternatively, open the Makefile to see what make commands are available generating individual components of the report.

P.S: You can remove the rendered .html report and all files in the output folder with the command make clean.

## Initial code description

`code/Data_prepare.R`

-   clean and prepare a merged Data object from the Flurosis.csv data of NAHNES

`code/Table_descriptive.R`

-   create the first table description for the upermolar flurosis
-   saves table as a `Table_1.rds` `code/box_plot.R`
-   create the first boxplot description for the data
-   saves table as a `box_plot.png`

`code/render_report.R`

-   renders the html report Final_project_config\_\$WHICH_CONFIG.html

## Docker Build 
The Docker image called 'final_project4' is available as a public DockerHub repository [here](https://hub.docker.com/r/nati1515/final_report4/tags "here").The Image was built by using the comand `docker build-t final_project4 .`. You call pull the image by using the command \`docker pull nati1515/final_report4.

## Docker Run 
Run the containerized code by using the make command `make mounted-report`for windows operating system and`make mounted-report-mac\` for mac computer in a bash terminal of R terminal. This command mounts a local directory called report to the local machine and retrieves the rendered .html report in the directory.
