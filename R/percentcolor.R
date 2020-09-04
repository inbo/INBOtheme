#' Make a colour lighter
#'
#' @param hex Hexadecimal values of the colour
#' @param percent The percentage to lighten the colour.
#' 0 = no change, 1 = pure white.
#' @importFrom colorspace hex2RGB
#' @family colours
percentcolor <- function(hex, percent = 0.95) {
  hex_values <- c(0:9, LETTERS[1:6])
  relative <- percent + hex2RGB(hex)@coords * (1 - percent)
  absolute <- round(255 * relative)
  hexadecimal <- apply(
    absolute,
    1,
    function(x) {
      paste0(
        hex_values[1 + x %/% 16],
        hex_values[1 + x %% 16]
      )
    }
  )
  paste0("#", apply(hexadecimal, 2, paste, collapse = ""))
}
