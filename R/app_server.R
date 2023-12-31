#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic

  # if app_prod() is true, print "production", otherwise, print "dev"
  message("Mode: ", if (golem::app_prod()) "Prod" else "Dev")

  r <- list()

  r$states <- reactiveValues()

  r$data <- data_structure()

  mod_sidebar_server("sidebar_1", r)
  mod_main_panel_server("main_panel_1", r)
}
