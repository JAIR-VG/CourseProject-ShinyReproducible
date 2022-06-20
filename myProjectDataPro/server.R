#
# Author: Vicente Garcia Jimenez
# Date: Sun 19 June, 2022
# Aim: Plotting the variables from Iris Dataset


library(shiny)
library(tidyverse)
data(iris)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$selectedx <- renderText({paste("Variable in X-axis = ",input$variablex)})
    output$selectedy <- renderText({paste("Variable in Y-axis = ", input$variabley)})  
    output$distPlot <- renderPlot({
        ggplot(iris, aes_string(x=input$variablex, y=input$variabley, colour=iris$Species)) + geom_point() + labs(colour="Class Label")
    })
})
