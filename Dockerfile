FROM rocker/r-ubuntu as base

WORKDIR /project

RUN mkdir -p renv
COPY renv.lock renv.lock
COPY .Rprofile .Rprofile
COPY renv/activate.R renv/activate.R
COPY renv/settings.json renv/settings.json

RUN mkdir renv/.cache
ENV RENV_PATHS_CACHE renv/.RENV_PATHS_CACHE


RUN R -e "renv::restore()"

## DO NOT EDIT STAGE 1 BUILD LINES ABOVE####

FROM rocker/r-ubuntu

WORKDIR /project
COPY --from=base /project .

RUN apt-get update
RUN apt-get install -y pandoc

ENV WHICH_CONFIG="default"

RUN mkdir -p code output data report

COPY code /project/code
COPY data/Flurosis2.csv /project/data
COPY Makefile /project
COPY config.yml /project
COPY Final_project.Rmd /project
COPY README.md /project

CMD make Final_project_config_${WHICH_CONFIG}.html && mv Final_project_config_${WHICH_CONFIG}.html report
