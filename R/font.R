#' Font Function
#'
#' This function adds rge nta fonts to the app. See
#' https://design-system.service.gov.uk/styles/typography/ for when they
#' are allowed.
#' @keywords font
#' @return no value returned.  This loads the font css file
#' @export
#' @examples
#' if (interactive()) {
#'
#'   ui <- fluidPage(
#'     font(),
#'     NHSRshiny::header(
#'       main_text = "Example",
#'       secondary_text = "User Examples",
#'       logo="NHSRshiny/images/moj_logo.png")
#'   )
#'
#'   server <- function(input, output, session) {}
#'
#'   shinyApp(ui = ui, server = server)
#' }

font <- function(){
  version <- as.character(packageVersion("NHSRshiny")[[1]])

  htmltools::htmlDependency(
    name = "font", version = version,
    src = c(href="NHSRshiny/css"),
    stylesheet = "font.css"
  )
}
