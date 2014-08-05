#' Make a colour lighter
#' 
#' @param hex Hexadecimal values of the colour
#' @param percent The percentage to lighten the colour. 0 = no change, 1 = pure white
#' @importFrom colorspace hex2RGB
#' @importFrom grDevices rgb
percentcolor <- function(hex, percent = 0.95){
  tmp <- hex2RGB(hex)@coords + percent * (1 - hex2RGB(hex)@coords)
  rgb(tmp[, "R"], tmp[, "G"], tmp[, "B"])
}
