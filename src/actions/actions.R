changeColName <- function(colName) {
  list(
    "type" = "CHANGE_COLNAME",
    "payload" = list("selectedColName" = colName)
  )
}

selectTableVars <- function(tableVars) {
  list(
    "type" = "SELECT_VARS_TABLE",
    "payload" = list("selectedTableVars" = tableVars)
  )
}