# server.R

source("helpers.R")
counties <- readRDS("data/counties.rds")
library(maps)
library(mapproj)

shinyServer(
 
    function(input, output) {
      
      output$map <- renderPlot({
     
      data <- switch(input$var,
        "Percent White" = countries$white,
        "Percent Black" = countries$black,
        "Percent Hispanic" = countries$hispanic,
        "Percent Asian" = countries$asian)  
        
      percent_map(data, "DarkGreen", input$var, input$range[1] , input$range[2] )# some arguments )
    })
      
  }
)
    