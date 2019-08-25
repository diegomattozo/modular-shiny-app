LinkedBarPlotUI <- function(id) {
  ns <- NS(id)
  tagList(
      plotOutput(ns("Plot"))
  )  
}

LinkedBarPlot <- function(input, output, session, selectedColName, xlab, ylab) {
    getSelectedColName <- reactive({ 
      manager$dispatch(changeColName(selectedColName()))
      globalState$selectedColName
    })


  output$Plot <- renderPlot({
    getSelectedColName()
    barplot(dataset[, globalState$selectedColName]*1000, 
            main=globalState$selectedColName,
            ylab=ylab,
            xlab=xlab)
  })
}