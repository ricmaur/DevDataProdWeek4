library(shiny)
shinyUI(fluidPage(
    titlePanel("mtcars Dataset - Miles per Gallon"),
    sidebarPanel(
        selectInput("variable", "Select an option to see how various factors impact MPG:", 
                    c("Cylinders" = "cyl",
                      "Transmission" = "am",
                      "Gears" = "gear"))
    ),
    mainPanel(
        h3(textOutput("caption")),
        plotOutput("mpgPlot")
    )
))
