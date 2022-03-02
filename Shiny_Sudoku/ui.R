library(shiny)
library(shinyWidgets)

"File > New file > Shiny_Webb app : colles dans ui.R le fichier Ui et dans Server.R 
le fichier Server, ensuite appuis sur Run App en haut à droite!"

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
