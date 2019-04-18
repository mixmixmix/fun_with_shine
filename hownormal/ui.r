library("shiny")

fluidPage(
    titlePanel("Showing off normal distributions."),
    sidebarLayout(
        sidebarPanel("This is our coat of arms: ",
                     p(img(src = "https://upload.wikimedia.org/wikipedia/en/0/0b/Uni_Glasgow_2017_arms.png", height = 140)),
                     numericInput("funNumberOne",
                                  h3("Fun number:"),
                                  value = 123),
                     numericInput("funNumberTwo",
                                  h3("Another fun number"),
                                  value = 321)
                     ),
        mainPanel(
            h1("Fun sum!"),
            textOutput("myFunnyVariabletine")
        )
    )
)
