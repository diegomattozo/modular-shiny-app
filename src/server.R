server <- function(input, output, session) {
  
  selectedColName <- reactive(input$selectedColName)
  selectedVars <- reactive(input$selectedTableVars)
  eventBtn <- reactive(input$selectTableVarsBtn)
  callModule(LinkedBarPlot, "app", 
             selectedColName=selectedColName, 
             xlab="teste", ylab="teste2")
  callModule(LinkedDataTable, "table", 
             selectedVars, eventBtn)
}