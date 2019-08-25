ui <- fluidPage(
  titlePanel("MyApp"),
  
  sidebarLayout(      
    sidebarPanel(
      selectInput("selectedColName", "Variable:", 
                  choices=colnames(dataset)),
      varSelectInput("selectedTableVars", data = dataset,
                     selected = colnames(dataset),
                     label = "Select table variables", 
                     multiple = T),
      actionButton("selectTableVarsBtn", "Select variables")),
    mainPanel(
      LinkedBarPlotUI("app"),
      LinkedDataTableUi("table")
    )
  )
)

