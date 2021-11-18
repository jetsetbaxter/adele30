# functions and structure adapted from https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

adele30_colors <- c(
  `lipstick` = "#7B5761",
  `blush` = "#8B6F6E",
  `face` = "#9B93A0",
  `highlight` = "#A5A998",
  `blonde` = "#A29278",
  `backdrop_light` = "#305F6F",
  `backdrop_med` = "#213A3E",
  `backdrop_dark` = "#1A2C2E",
  `brow` = "#322D33"
)

adele30_cols <- function(...) {
  cols <- c(...)
  if (is.null(cols))
    return (adele30_colors)
  adele30_colors[cols]
}

adele30_palettes <- list(
  `full` = adele30_cols(),
  `face` = adele30_cols("face", "blush", "lipstick"),
  `backdrop` = adele30_cols("backdrop_light", "backdrop_med", "backdrop_dark")
)

adele30_pal <- function(palette = "full", reverse = FALSE, ...) {
  pal <- adele30_palettes[[palette]]
  if (reverse) pal <- rev(pal)
  colorRampPalette(pal, ...)
}
