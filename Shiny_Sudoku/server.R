library(shiny)

shinyServer(function(input, output) {
    
    x <- reactiveValues(M = matrix(0,9,9))
    y <- plot(0:10, 0:10, type="n", axes=FALSE, xlab=NA, ylab=NA)
    z <- reactiveValues(M = matrix(0,9,9))
    t <- reactiveValues(M = matrix(0,9,9))
    
    i <- reactiveValues(I = 1)
    j <- reactiveValues(J = 1)
    
    p <- reactiveValues(P = 0)
    
    
    
    observeEvent(input$Game, {x$M = Difficulte2(input$Difficulty)})
    observeEvent(input$Game, {z$M = x$M})
    
    observeEvent(input$id, {i$I = indice(10-(input$id$y))})
    observeEvent(input$id, {j$J = indice(input$id$x)})
    
    
    observeEvent(input$a, {p$P = 1})
    observeEvent(input$b, {p$P = 2})
    observeEvent(input$c, {p$P = 3})
    
    observeEvent(input$d, {p$P = 4})
    observeEvent(input$e, {p$P = 5})
    observeEvent(input$f, {p$P = 6})
    
    observeEvent(input$g, {p$P = 7})
    observeEvent(input$h, {p$P = 8})
    observeEvent(input$i, {p$P = 9})
    
    
    observeEvent(input$setButton, {t$M = x$M})
    observeEvent(input$setButton, {
        a <- i$I
        b <- j$J
        if (a != 0 & a != 10 & b != 0 & b != 10){
            if (is.na(z$M[a,b])){
                x$M[a,b] <- p$P
            }
        }
    })
    
    observeEvent(input$restart, {x$M =z$M})
    observeEvent(input$prec, {x$M = t$M})
    
    observeEvent(input$solve, {x$M = solve_sudoku1(x$M)})
    
    output$espace <- renderPlot(y)
    output$Sudoku <- renderPlot({
        plotSudoku_2(x$M,z$M)
    })
    
})

