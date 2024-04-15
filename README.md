# ReadME

This repository contain the files needed to render Final_project_config_$WHICH_CONFIG.html. It contains a  hierarchically ordered set of code folders, a folder with the raw data and clean data set `data/Flurosis2.csv` a folder with the code output, the RMarkdown file Final_project.Rmd and its associated .html file, a .gitignore file, a Makefile that contains GNU Make commands for rendering the report and its components, and a config file that allows the user to customize the report. Briefly this analysis provides the descriptive  level of upper molar incisor teeth flurosis in the us stratified by age and gender.

# Instructions for generating the report
You will need RStudio, bash, and GNU Make to render this report as intended.

Clone the Final_projct4 repository from GtiHub to a local directory.
Navigate to the cloned repository. Set this as your working directory.
Type the command make in the RStudio terminal with a bash shell to create the components of the report and compile Final_project_config_$WHICH_CONFIG.html in your local final_project directory. Alternatively, open the Makefile to see what make commands are available generating individual components of the report. Additionally in the make file there is a code to restore the packages used in this project from the lockfile. 
NOTE: remove the rendered .html report and all files in the output folder with the command make clean.

## Initial code description

`code/Data_prepare.R`

  - clean and prepare a merged Data object from the Flurosis.csv data of NAHNES
  - saves cleaned data object as a `merged_data.rds` object in `output/` folder
  
`code/Table_descriptive.R`
  
  - create the first table description for the upermolar flurosis
  - saves table as a `Table_1.rds` object in `output/` folder
`code/box_plot.R`
  - create the first boxplot description for the data
  - saves table as a `box_plot.rds` object in `output/` folder

`code/render_report.R`

  - renders `Final_project.Rmd`

`Final_project.Rmd`

  
  - makes the overall project analysis (table and figure) with descriptive illustraion

------------------------------------------------------------------------



