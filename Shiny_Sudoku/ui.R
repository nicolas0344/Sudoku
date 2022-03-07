library(shiny)
library(shinyWidgets)

"File > New file > Shiny_Webb app : colles dans ui.R le fichier Ui et dans Server.R 
le fichier Server, ensuite appuis sur Run App en haut à droite!"

shinyUI(fluidPage(
    
    fluidRow(
        
        titlePanel(" Sudoku_Game by Quentin Fontana and Nicolas Pralon "),
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
                fluidRow(
                    column(width = 5,
                           actionButton(inputId = "a",label = "1"),
                           actionButton(inputId = "b",label = "2"),
                           actionButton(inputId = "c",label = "3"))
                ),
                fluidRow(
                    column(width = 5, 
                           actionButton(inputId = "d",label = "4"),
                           actionButton(inputId = "e",label = "5"),
                           actionButton(inputId = "f",label = "6"))
                ),
                fluidRow(
                    column(width = 5, 
                           actionButton(inputId = "g",label = "7"),
                           actionButton(inputId = "h",label = "8"),
                           actionButton(inputId = "i",label = "9"))
                ),
                h6(""),
                actionButton("setButton", "Set"),
                actionButton("restart","Restart"),
                actionButton("prec","Prec"),
                actionButton("solve","Solution"),
                hr(),
            )
        ),
        column(width = 1,plotOutput("espace")),
        column(width = 5,plotOutput("Sudoku",click = "id")),
    ),
))
