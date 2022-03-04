library(shiny)

shinyServer(function(input, output) {
    
    x <- reactiveValues(M = matrix(0,9,9))
    
    observeEvent(input$setButton, {
        x$M[as.integer(input$row),as.integer(input$col)] <- as.integer(input$value)
    })
    observeEvent(input$Game, {x$M = Difficulté(input$Difficulty)})

    
    
    New_Game <- eventReactive(
        input$Game,{Difficulté(input$Difficulty)
    })

    output$Sudoku <- renderPlot({
            plotSudoku_2(x$M)
    })
    
})

