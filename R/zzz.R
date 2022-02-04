#' Adds the content of www to NHSRshiny/
#'
#' @importFrom shiny addResourcePath
#'
#' @noRd
#'
.onLoad <- function(...) {
  shiny::addResourcePath('NHSRshiny',
                         system.file('www', package = 'NHSRshiny')
  )
}
