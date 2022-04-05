

# Objetivo ----------------------------------------------------------------
# Construir una tabla con parámetros interactivos para la ley de Makeham


library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    

    output$table_makeham <- renderDataTable( {
       
        x <- seq(from = input$age_range[1], to = input$age_range[2], by = 1)
        
        s <- expression(exp(-input$param_A * t - input$param_B / log(input$param_C) * input$param_C^x * (input$param_C^t - 1)))
        
        s_x_t <- eval(s, list(x = x, t = 1))
        
        data.frame(t = x, `tPx` = s_x_t)
        

    }, options = list(pageLength = 5))

})
