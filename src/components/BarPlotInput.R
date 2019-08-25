BarPlotInputUI <- function(id, dataset) {
  ns <- NS(id)
  tagList(
    selectInput(ns("selectedColName"), "Variable:", 
                selected="Europe",
                choices=colnames(dataset)),
    textOutput(ns("hidden")))
}

BarPlotInput <- function(input, output, session) {
    onSelectColName <- eventReactive(input$selectedColName, {
        manager$dispatch(changeColName(input$selectedColName))
      })
    output$hidden <- renderText({
      onSelectColName()
      ""
    })
}

