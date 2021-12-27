
library(DT)
library(shiny)
library(ggplot2)
library(dplyr)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$vuelos_tbl<- DT::renderDataTable({
    
    #Creacion de conexion de la base de datos a shiny
    con<- odbcDriverConnect('driver={SQL Server};
                               server=DESKTOP-AONN5VM;
                               database=Registros;
                               trusted_connection=true')
    query <- sqlQuery(con,'select * from Registros ;')
    out <- sqlQuery(con,query)
    
    query %>% DT:: datatable( rownames = FALSE,
                            extensions = 'Buttons',
                            options = list(
                            buttons = c('csv')
                            )
                         )
    
  })
  
  

})
