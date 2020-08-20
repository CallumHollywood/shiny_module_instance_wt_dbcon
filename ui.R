
### LOGIC ####
##############

## Get a basic shiny instance up and running with a postgreSQL database connection


## IMPORTANT ##

# << THIS APP WILL NOT LAUNCH UNTIL VALID  >>
# << CREDENTIALS ARE PASSED TO db_con.R    >>


#############
# Setup
#############

options(dplyr.width = Inf)
options(scipen=10000)
options(dplyr.print_max = 1e9)


# Cntrl + F3 will present reactlog after app has started
# prob best not to leave on in prod
# options(shiny.reactlog=TRUE) 

#############
# Libraries
#############


# DB Con...
library(RPostgreSQL)
library(DBI)
library(pool)

# Shiny stuff...
library(shiny)
library(shinyjs)
library(shinythemes)
# library(shinyWidgets)
# library(shinyFiles)


# The Tidyverse...
library(ggplot2)
library(dplyr)
library(stringr)
library(lubridate)


###########
# Sources
###########

source("scripts/land_page.R")
source("scripts/banner.R")
source("scripts/banner_land.R")
source("scripts/abcxyz.R")
source("db_con.R")


###########
# UI
###########

ui <- fluidPage(
  title = "shiny_module_instance",
  theme = shinytheme("superhero"),
  useShinyjs(),
  
  uiOutput("main_ui")
  
)


