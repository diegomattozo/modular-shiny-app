LinkedDataTableUi <- function(id) {
    ns <- NS(id)
    tagList(
      hr(),
      DT::dataTableOutput(ns("selectedVarsTable"))
    )
}

LinkedDataTable <- function(input, output, session,
                              selectedVars, eventBtn) {
  getSelectedVars <- eventReactive(eventBtn(), {
    manager$dispatch(selectTableVars(selectedVars()))
    globalState$selectedTableVars
  })
  
  output$selectedVarsTable <- DT::renderDataTable({
    getSelectedVars()
    dataset[, globalState$selectedTableVars]
  })
}