library("shiny")

fluidPage(
    titlePanel("Showing off normal distributions."),
    sidebarLayout(
        sidebarPanel("Sidebar: options and mansplainations"),
        mainPanel(textOutput("myFunnyVariabletine"))
    )
)
