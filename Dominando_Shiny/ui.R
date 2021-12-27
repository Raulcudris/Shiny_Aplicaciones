
library(ggplot2)
library(shiny)

# Define UI for application that draws a histogram


shinyUI(fluidPage(

    # Application title
    titlePanel("Aplicaciones de Shiny - Dominando.."),
    
    tabsetPanel(
      tabPanel( "Ejercicio 1", 
        sidebarLayout(
             sidebarPanel(
                         textInput("name", "¿Cual es tu nombre ?"),
                         ),
           
                        # Show a plot of the generated distribution
                        mainPanel(

                        )
                     )
      ),
      tabPanel("Ejercicio 2",
               sidebarLayout(
                 sidebarPanel(
                   sliderInput("x", label = "Si x es",
                               min = 1, 
                               max = 50, 
                               value =30),
                   "Entonces 5 por x es:",
                   
                   textOutput("product1")
                   
                 ), 
                 mainPanel(
                   
                 )
               )
      ),
      tabPanel("Ejercicio 3",
               sidebarLayout(
                 sidebarPanel(
                   sliderInput("x", label = "Si X es:",
                               min = 1, 
                               max = 50, 
                               value =30),
                   
                   sliderInput("y",label = "y  Y es:",
                               min = 1,
                               max = 50,
                               value =30),
                   
                   "Entonces X por Y es:",
                   
                   textOutput("product_xy")
                   
                 ), 
                 mainPanel(

                           )
               )
      ),
      tabPanel("Ejercicio 4",
               sidebarLayout(
                 sidebarPanel(
                   sliderInput("a", "Si X es:",
                               min = 1,
                               max = 50,
                               value = 30),
                   sliderInput("b", "y Y es:",
                               min = 1,
                               max = 50,
                               value = 5),
                   
                   "Entonces, (X * Y) es:",
                   textOutput("product"),
                   
                   
                   "y , (x * y) + 5 es: ", 
                   textOutput("product_plus5"),
                   
                   "y, (x * y) + 10 es:", 
                   textOutput("product_plus10")

                 ), 
                 mainPanel(

                          )
               )
      ),
      datasets <- c("economics", "faithfuld", "seals"),
      tabPanel("Ejercicio 5",
               sidebarLayout(
                 sidebarPanel(
                   selectInput("dataset", "Dataset", choices = datasets),
                 ), 
                 mainPanel(
                   verbatimTextOutput("summary"),
                   tableOutput("plot")
                 )
               )
      )
      
    )

   

))
