library(shiny)


shinyServer(function(input, output) {

    data <- eventReactive(input$Game, {Grille_incomplete(Sudoku(),30)
    })
    
    output$Sudoku <- renderPlot({
        plotSudoku_2(data())
    })


})

