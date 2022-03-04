library(shiny)

shinyServer(function(input, output) {
    
    x <- reactiveValues(M = matrix(0,9,9))
    
    observeEvent(input$setButton, {
        if (is.na(x$M)){
            return(x$M[as.integer(input$row),as.integer(input$col)] <- as.integer(input$value)
                   )
        }
    })
    observeEvent(input$Game, {x$M = New_Game()})
    
    
    New_Game <- eventReactive(
        input$Game,{Difficulté(input$Difficulty)
    })

    output$Sudoku <- renderPlot({
            plotSudoku_2(x$M)
    })
    
})

