library("shiny")

fluidPage(
    titlePanel("Showing off normal distributions."),
    sidebarLayout(
        sidebarPanel("This is our coat of arms: ",
                     p(img(src = "https://upload.wikimedia.org/wikipedia/en/0/0b/Uni_Glasgow_2017_arms.png", height = 140)),
                     selectInput("meanVariance",
                                  h3("unfun Variances to choose from:"),
                                  choices = list(
                                      "small" = 1,
                                      "so, so" = 10,
                                      "a big one!" = 33),
                                  selected = 10),
                     sliderInput("meanMean",
                                  h3("Very mean, mean :/"),
                                  min = 0,
                                  max = 100,
                                  value = 17)
                     ),
        mainPanel(
            h1("Fun sum!"),
            plotOutput(outputId = "myFunnyPlot"),
            tableOutput("myFunnyTable")
        )
    )
)
