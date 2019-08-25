changeColNameReducer <- function(action) {
  if (action$type == "CHANGE_COLNAME") {
    flog.info("Running changeColName Reducer. ColName: %s.", action$payload)
    globalState$selectedColName <<- action$payload$selectedColName
  }
}

selectedVarsTableReducer <- function(action) {
  if (action$type == "SELECT_VARS_TABLE") {
    flog.info("Running selectedVarsTableReducer Reducer. Vars: %s.", action$payload)
    globalState$selectedTableVars <<- as.character(action$payload$selectedTableVars)
  }
}

reducers <- list(changeColNameReducer=changeColNameReducer,
                 selectedVarsTableReducer=selectedVarsTableReducer)