
library(shiny)
library(RODBC)
library(dplyr)
library(DT)



# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Deshboard Iglesia"),
    tabsetPanel(
      tabPanel("Tabla base de Datos",
                 fluidRow(
                   column(12,DT::dataTableOutput("vuelos_tbl"))
                 )
              ),
      tabPanel("Tab 2",
                 sidebarLayout(
                        sidebarPanel(

                                    ), 
                           mainPanel(

                                    )
                       )
               ),
      tabPanel("Tab 3",
               sidebarLayout(
                 sidebarPanel(
                   
                 ), 
                 mainPanel(

                       )
               )
               )
      
    )

))
