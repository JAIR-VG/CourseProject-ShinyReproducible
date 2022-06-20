#
# Author: Vicente Garcia Jimenez
# Date: Sun 19 June, 2022
# Aim: Plotting the variables from Iris Dataset

#

library(shiny)
choices <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")


# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Course Project"),

    # Sidebar with a slider input for selecting variables
    sidebarLayout(
        sidebarPanel(
           h3("Selecting variables for plotting the Iris dataset"),
            selectizeInput("variablex", "Variable X:", choices=choices),
           selectizeInput("variabley", "Variable Y:", choices=choices),
        ),

        # Show a plot of selected variables
        # Show a text of selected variables
        mainPanel(
          h3("Graph of Variables From Iris Dataset"),
          textOutput("selectedx"),
          textOutput("selectedy"),
          plotOutput("distPlot")
        )
    )
))
