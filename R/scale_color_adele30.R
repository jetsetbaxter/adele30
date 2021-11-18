scale_color_adele30 <- function(palette = "full", discrete = TRUE, reverse = FALSE, ...) {
  pal <- adele30_pal(palette = palette, reverse = reverse)
  if (discrete) {
    discrete_scale("colour", paste0("adele30_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
