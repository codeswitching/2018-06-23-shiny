library(shiny)

ui <- fluidPage(
  column(3,
         actionButton("button1", "Squirt Ink"),
         br(),
         checkboxGroupInput("checkbox1", "Order", choices = c("Octopuses", "Squidoos", "Cuddlefish", "Nautilus"),
                            selected = "Cuddlefish"),
         sliderInput("slider1", "Number of arms", min = 1, max = 8, value=5),
         selectInput("select1", "Species", choices = c("Broadclub", "Flamboyant", "Pharoah"))
  ),
  column(3,
         dateRangeInput("daterange", "Date range", start="2018-06-01", end = "2019-12-31"),
         radioButtons("radios", "Pupil shape", choices=c('W', '--', 'o'))
         )
)

server <- function(input, output) {
  
}

shinyApp(ui = ui, server = server)
