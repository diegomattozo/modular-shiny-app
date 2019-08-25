server <- function(input, output, session) {
  callModule(BarPlotInput, "barPlotInput")
  callModule(DataTableInput, "dataTableInput")
  callModule(LinkedBarPlot, "app", dataset)
  callModule(LinkedDataTable, "table", dataset)
}