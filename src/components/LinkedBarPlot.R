LinkedBarPlotUI <- function(id) {
  ns <- NS(id)
  tagList(
      plotOutput(ns("Plot"))
  )  
}

LinkedBarPlot <- function(input, output, session, dataset,
                          xlab="", ylab="") {
  output$Plot <- renderPlot({
    barplot(dataset[, globalState$selectedColName]*1000, 
            main=globalState$selectedColName,
            ylab=ylab,
            xlab=xlab)
  })
}