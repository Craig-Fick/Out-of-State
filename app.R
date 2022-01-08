# Here is a list of packages used
library(stringr)
library(sf)
library(xml2)
library(shiny)
library(shinythemes)
library(choroplethr) 
library(choroplethrMaps)

full_shin_df <- read.csv("https://raw.githubusercontent.com/FannyPackFanatic/Out-of-State/main/OutofState.csv")

# sidebar
ui <- fluidPage(title = 'Explore What States Have to Offer!',
                theme = shinythemes::shinytheme('flatly'),
                sidebarLayout(
                  sidebarPanel(width = 3,
                               sliderInput("num_colors",
                                          label = "Number of Colors:",
                                          min = 1,
                                          max = 9,
                                          value = 7),
                               selectInput("select", 
                                           label = "Select Variable to Explore:", 
                                           choices = colnames(full_shin_df)[2:15],
                                           selected = 1)),
                  mainPanel(width = 9, 
                            tabsetPanel(
                              tabPanel(title = 'Output Map', 
                                       plotOutput(outputId = "map")),
                              tabPanel(title = 'Data Table',
                                       dataTableOutput(outputId = 'table')
                                       )
                              )
                            )
                  )
                )
# server
server <- function(input, output) {
  output$map <- renderPlot({
    full_shin_df$value = full_shin_df[, input$select]
    state_choropleth(full_shin_df,
                     title = input$select, 
                     num_colors = input$num_colors)
    })
  output$table <- renderDataTable({
    full_shin_df[order(full_shin_df[input$select]), ]
  })
}

shinyApp(ui,server)

