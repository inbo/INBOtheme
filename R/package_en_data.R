#' @title Package with several ggplot2 themese
#' @description Lod this package AFTER loading ggplot2. theme_INBO() will be set as the default theme. 
#' @name INBOtheme-package
#' @aliases INBOtheme
#' @docType package
#' @author Thierry Onkelinx \email{Thierry.Onkelinx@@inbo.be}
#' @keywords package
#' @seealso \code{\link{theme_INBO}}, \code{\link{theme_elsevier}}
NULL

#'@name inbo.hoofd
#'@aliases inbo.steun.donkerroos inbo.steun.blauw inbo.steun.geelgroen inbo.oranje inbo.rood inbo.bruinrood inbo.grijs inbo.lichtgrijs inbo.grijsblauw inbo.lichtblauw inbo.achtergrond inbo.munt inbo.lichtgroen inbo.donkergroen inbo.groen inbo.geelgr 
#'@title Colour according to the INBO style guide version > 2014
#'@description Colour according to the INBO style guide as hexadecimal values.
#'\itemize{
#'  \item inbo.hoofd
#'  \item inbo.steun.donkerroos
#'  \item inbo.steun.blauw
#'  \item inbo.steun.geelgroen
#'  \item inbo.oranje
#'  \item inbo.rood
#'  \item inbo.bruinrood
#'  \item inbo.grijs
#'  \item inbo.lichtgrijs
#'  \item inbo.grijsblauw
#'  \item inbo.lichtblauw
#'  \item inbo.achtergrond
#'  \item inbo.munt
#'  \item inbo.lichtgroen
#'  \item inbo.donkergroen
#'  \item inbo.groen
#'  \item inbo.geelgr
#'}
#'@docType data
#'@export inbo.hoofd inbo.steun.donkerroos inbo.steun.blauw inbo.steun.geelgroen inbo.oranje inbo.rood inbo.bruinrood inbo.grijs inbo.lichtgrijs inbo.grijsblauw inbo.lichtblauw inbo.achtergrond inbo.munt inbo.lichtgroen inbo.donkergroen inbo.groen inbo.geelgr
#'@usage inbo.hoofdkleur
#'@keywords datasets
#'@seealso \code{\link{theme_inbo2014}}
NULL

#'@name INBOblue
#'@aliases INBOblue INBObrown INBOdarkblue INBOdarkgreen INBOgreen INBOred INBOreddishbrown INBOextra
#'@title Colour according to the INBO style guide version <= 2014
#'@description Colour according to the INBO style guide as hexadecimal values.
#'\itemize{
#'  \item INBOblue
#'  \item INBOdarkblue
#'  \item INBOgreen
#'  \item INBOdarkgreen
#'  \item INBObrown
#'  \item INBOreddishbrown
#'  \item INBOred
#'  \item INBOextra
#'}
#'@docType data
#'@export INBOblue INBObrown INBOdarkblue INBOdarkgreen INBOgreen INBOred INBOreddishbrown INBOextra
#'@usage INBOblue
#'@keywords datasets
#'@seealso \code{\link{theme_INBO}}
NULL

#'@name page.height
#'@aliases page.width column.width medium.width
#'@title Standard dimensions for the Elsevier style guide
#'\itemize{
#'  \item{page.height}{Maximal height of a figuur (in inch)}
#'  \item{page.width}{Width of a figure covering two columns (in inch)}
#'  \item{column.width}{Width of a figure covering one column (in inch)}
#'  \item{medium.width}{Width of a figure covering 1.5 columns (in inch)}
#'}
#'@docType data
#'@export page.height page.width column.width medium.width
#'@usage page.height
#'@keywords datasets
#'@seealso \code{\link{theme_elsevier}}
NULL
