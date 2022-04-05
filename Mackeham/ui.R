#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Makeham Law's"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            numericInput("param_A", "A value", value = 0.0001),
            numericInput("param_B", "B value", value = 0.00035),
            numericInput("param_C", "C value", value = 1.075)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            dataTableOutput("table_makeham")
        )
    )
))
