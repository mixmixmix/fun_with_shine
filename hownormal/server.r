library("shiny")

## displaySum now takes arguments from input so
## it needs to be on the server side
displaySum <- function(numberOne, numberTwo){
    resultOfSum <- numberOne + numberTwo
    numberAsText <- paste(resultOfSum)
    return(numberAsText)
}

function(input, output) {
    output$myFunnyVariabletine = renderText(displaySum(input$funNumberOne, input$funNumberTwo))
}
