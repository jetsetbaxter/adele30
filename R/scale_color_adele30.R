#' Adele 30 colors for ggplot2 color aesthetic
#'
#' @param palette Either "full" "face" or "backdrop" - default "full"
#' @param discrete default TRUE
#' @param reverse default FALSE - reverses scale
#' @param ... additional arguments to be passed to scale functions
#'
#' @return
#' @export
#' @import utils
#' @import grDevices
#' @import ggplot2
scale_color_adele30 <- function(palette = "full", discrete = TRUE, reverse = FALSE, ...) {
  pal <- adele30_pal(palette = palette, reverse = reverse)
  if (discrete) {
    discrete_scale("colour", paste0("adele30_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
