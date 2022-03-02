library(shiny)
library(shinyWidgets)

shinyUI(fluidPage(
    
    fluidRow(
        
        column(width = 5,
               
            titlePanel("Sudoku_Game by Quentin Fontana and Nicolas Pralon "),
            
            wellPanel(pickerInput(
                inputId = "Difficulty",
                label = "Difficulty :", 
                choices = c("Low", "Medium", "High", "Expert"),
                options = list(
                    style = "btn-primary")
            ),
        
            actionButton(inputId = "Game",label = "New game")
        )),
        column(width = 7,
               
            plotOutput("Sudoku"))
    )
))
