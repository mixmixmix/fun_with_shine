library("shiny")

displaySum <- function(numberOne, numberTwo){
    resultOfSum <- numberOne + numberTwo
    numberAsText <- paste(resultOfSum)
    return(numberAsText)
}

fluidPage(
    titlePanel("Showing off normal distributions."),
    sidebarLayout(
        sidebarPanel("This is our coat of arms: ",
                     p(img(src = "https://upload.wikimedia.org/wikipedia/en/0/0b/Uni_Glasgow_2017_arms.png", height = 140))
                     ),

        mainPanel(
            textOutput("myFunnyVariabletine"),
            h1("Let us calculate 3 + 4:"),
            h2(displaySum(3,4))
        )
    )
)
