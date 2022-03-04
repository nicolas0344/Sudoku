library(shiny)
library(shinyWidgets)

"File > New file > Shiny_Webb app : colles dans ui.R le fichier Ui et dans Server.R 
le fichier Server, ensuite appuis sur Run App en haut à droite!"

shinyUI(fluidPage(
    
    fluidRow(
        
        titlePanel("Sudoku_Game by Quentin Fontana and Nicolas Pralon "),
        column(width = 4,
            wellPanel(
                pickerInput(
                inputId = "Difficulty",
                label = "Difficulty :", 
                choices = c("Low", "Medium", "High", "Expert"),
                options = list(
                    style = "btn-primary")
                ),
                actionButton(inputId = "Game",label = "New game"),
                h4('Solve Manually:'),
                p('Use the row/column dropdowns to input your guesses:'),
                selectInput("row", label = "Row", 
                            choices = list(1,2,3,4,5,6,7,8,9," "=0), 
                            selected = 0),
                selectInput("col", label = "Column", 
                            choices = list(1,2,3,4,5,6,7,8,9," "=0), 
                            selected = 0),     
                selectInput("value", label = "Value", 
                            choices = list(1,2,3,4,5,6,7,8,9," "=0), 
                            selected = 0),
                actionButton("setButton", "Set"),
                hr(),
            )
        ),
        
        column(width = 8,plotOutput("Sudoku"))
    ),
))
