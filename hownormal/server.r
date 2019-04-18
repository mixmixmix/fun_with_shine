library("shiny")

## displaySum now takes arguments from input so
## it needs to be on the server side
## I keep all my functions, even if they are not useful.
## Maybe in the future?
displaySum <- function(numberOne, numberTwo){
    resultOfSum <- numberOne + numberTwo
    numberAsText <- paste(resultOfSum)
    return(numberAsText)
}

generateFunnyNormal <- function(meMean, meVariance){
    n <- 1000
    meNormal <- rnorm(n,meMean,meVariance)
    cat(file=stderr(), "Preparing normal with mean ", meMean, "\n")
    return(meNormal)
}

function(input, output) {
    output$myFunnyVar <- renderText({
        paste(input$meanVariance)
    })
    output$myFunnyPlot <- renderPlot({
        hist(generateFunnyNormal(input$meanMean,as.numeric(input$meanVariance)))
    })
    output$myFunnyTable <- renderTable({
        table(
            head(
                generateFunnyNormal(input$meanMean,as.numeric(input$meanVariance))
            )
        )
    })
}
