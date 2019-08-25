DataTableInputUI <- function(id, dataset) {
  ns <- NS(id)
  tagList(
    varSelectInput(ns("selectedTableVars"), data = dataset,
                   selected = colnames(dataset),
                   label = "Select table variables", 
                   multiple = T),
    actionButton(ns("selectTableVarsBtn"), "Select variables"),
    textOutput(ns("hidden")))
}

DataTableInput <- function(input, output, session) {
  onSelectTableVars <- eventReactive(input$selectTableVarsBtn, {
    manager$dispatch(selectTableVars(input$selectedTableVars))
  })
  output$hidden <- renderText({
    onSelectTableVars()
    ""
  })
}
