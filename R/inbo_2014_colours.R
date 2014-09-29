#' A colour pallet according the INBO style guide version <= 2014.
#' 
#' @export
#' @param n The number of colours
#' @author Thierry Onkelinx, Oona Op de Weerdt, Nicole De Groof
#' @return a vector of n hexadecimal values defining the colours.
inbo.2014.colours <- function(n) {
  palette <- c(inbo.groen, inbo.grijsblauw, inbo.oranje, inbo.lichtblauw, inbo.lichtgroen, inbo.rood, inbo.steun.blauw, inbo.hoofd, inbo.bruinrood)
  if (n > length(palette)){
    warning('generated palette has duplicated colours. The palette has only ', length(palette), ' unique colours.')
  }
  rep(palette, length.out=n)
}
