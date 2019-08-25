ui <- fluidPage(
  titlePanel("MyApp"),
  
  sidebarLayout(      
    sidebarPanel(
      BarPlotInputUI("barPlotInput", dataset=dataset),
      DataTableInputUI("dataTableInput", dataset=dataset)),
    mainPanel(
      LinkedBarPlotUI("app"),
      LinkedDataTableUi("table")
    )
  )
)

