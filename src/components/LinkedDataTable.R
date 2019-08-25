LinkedDataTableUi <- function(id) {
    ns <- NS(id)
    tagList(
      hr(),
      DT::dataTableOutput(ns("selectedVarsTable"))
    )
}

LinkedDataTable <- function(input, output, session, dataset) {
  output$selectedVarsTable <- DT::renderDataTable({
    dataset[, globalState$selectedTableVars]
  })
}