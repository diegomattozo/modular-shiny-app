library(shiny)
library(ggplot2)
library(datasets)
library(futile.logger)

dataset <- WorldPhones

source("components/LinkedBarPlot.R")
source("components/LinkedDataTable.R")
source("components/BarPlotInput.R")
source("components/DataTableInput.R")
source("actions/actions.R")
source("reducers/reducers.R")
source("server.R")
source("ui.R")


globalState <- reactiveValues(selectedColName="Europe",  
                              selectedTableVars = colnames(dataset))

StateManager <- function(reducers) {
  dispatch <- function(action) {
    for (reducer in reducers) {
      reducer(action) 
    }
  }
  list("dispatch" = dispatch)
}

manager <- StateManager(reducers)