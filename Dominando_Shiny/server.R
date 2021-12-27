library(ggplot2)
library(shiny)

shinyServer(function(input, output, session) {

  
    dataset <- reactive({
      get(input$dataset, "package:ggplot2")
    })
    output$summmry <- renderPrint({
      
      summary(dataset())
    })
    
    output$plot <- renderPlot({
      plot(dataset) res = 96
      
      })
    
  
    output$product1 <- renderText({ 
       input$x * 5
    })
    
    output$product_xy<- renderText({
      input$x * input$y
    })
    
    output$product_IO<- renderPrint({
      input$x * input$y
    })
    
    # Create a reactive expression

    mult1 <- reactive({
        input$a * input$b
    })
    
    mult2 <- reactive({
      input$a * input$b +5
    })
    
    mult3 <- reactive({
      input$a * input$b + 10
    })
    
    
    output$product <- renderText({
      mult1()
    })
    
    output$product_plus5 <- renderText({
      mult2()
    })
    
    output$product_plus10<- renderText({
      mult3()
    })
    

    
        
    
})
