#' @title Package with several `ggplot2` themes
#' @description Load this package AFTER loading `ggplot2`.
#' `theme_inbo()` will be set as the default theme.
#' @name INBOtheme-package
#' @aliases INBOtheme
#' @docType package
#' @author Thierry Onkelinx \email{Thierry.Onkelinx@@inbo.be}
#' @keywords package
#' @seealso `theme_inbo`(), `theme_elsevier()`
NULL

#'@name inbo_colours_2015
#'@rdname inbo_colours_2015
#'@aliases inbo_hoofd inbo_steun_donkerroos inbo_steun_blauw
#'inbo_steun_geelgroen inbo_oranje inbo_rood inbo_bruinrood inbo_grijs
#'inbo_lichtgrijs inbo_grijsblauw inbo_lichtblauw inbo_achtergrond inbo_munt
#'inbo_lichtgroen inbo_donkergroen inbo_groen inbo_geelgr
#'@title Colour according to the INBO style guide version >= 2015
#'@author Thierry Onkelinx, Oona Op de Weerdt, Nicole De Groof
#'@family colours
#'@description Colour according to the INBO style guide as hexadecimal values.
#'- `inbo_hoofd`
#'- `inbo_steun_donkerroos`
#'- `inbo_steun_blauw`
#'- `inbo_steun_geelgroen`
#'- `inbo_oranje`
#'- `inbo_rood`
#'- `inbo_bruinrood`
#'- `inbo_grijs`
#'- `inbo_lichtgrijs`
#'- `inbo_grijsblauw`
#'- `inbo_lichtblauw`
#'- `inbo_achtergrond`
#'- `inbo_munt`
#'- `inbo_lichtgroen`
#'- `inbo_donkergroen`
#'- `inbo_groen`
#'- `inbo_geelgr`
#'@docType data
#'@export inbo_hoofd inbo_steun_donkerroos inbo_steun_blauw inbo_steun_geelgroen
#'@export inbo_oranje inbo_rood inbo_bruinrood inbo_grijs inbo_lichtgrijs
#'@export inbo_grijsblauw inbo_lichtblauw inbo_achtergrond inbo_munt
#'@export inbo_lichtgroen inbo_donkergroen inbo_groen inbo_geelgr
#'@keywords datasets
#'@seealso `theme_inbo2015()`
NULL

#'@name dimensions
#'@rdname dimensions
#'@aliases page_height page_width column_width medium_width
#'@family utils
#'@title Standard dimensions for the Elsevier style guide
#'@description Several standard dimensions for the Elsevier style guide
#'-`page_height` Maximal height of a figure (in inch).
#'-`page_width` Width of a figure covering two columns (in inch).
#'-`column_width` Width of a figure covering one column (in inch).
#'-`medium_width` Width of a figure covering 1.5 columns (in inch).
#'@docType data
#'@export page_height page_width column_width medium_width
#'@keywords datasets
#'@seealso `theme_elsevier()`
NULL

#'@rdname vlaanderen_colours
#'@name vlaanderen_colours
#'@family colours
#'@aliases vl_yellow vl_darkyellow vl_black vl_grey1 vl_grey2 vl_grey3 vl_grey4
#'vl_grey5 vl_grey6 vl_grey7 vl_lightgreen vl_darkgreen vl_lightblue vl_darkblue
#'vl_lightred vl_darkred vl_lightbrown vl_darkbrown
#'@title Some colours for the corporate style of vlaanderen.be.
#'Taken from level 1, and level 2 palette 7
#'@references http://webstijlgids.vlaanderen.be/element/kleurgebruik
#'@author Thierry Onkelinx
#'@description Colour according to the Flanders style guide as hexadecimal
#'values.
#'- `vl_yellow`
#'- `vl_darkyellow`
#'- `vl_black`
#'- `vl_grey1`
#'- `vl_grey2`
#'- `vl_grey3`
#'- `vl_grey4`
#'- `vl_grey5`
#'- `vl_grey6`
#'- `vl_grey7`
#'- `vl_lightgreen`
#'- `vl_darkgreen`
#'- `vl_lightblue`
#'- `vl_darkblue`
#'- `vl_lightred`
#'- `vl_darkred`
#'- `vl_lightbrown`
#'- `vl_darkbrown`
#'@docType data
#'@export vl_yellow vl_darkyellow vl_black vl_grey1 vl_grey2 vl_grey3 vl_grey4
#'@export vl_grey5 vl_grey6 vl_grey7 vl_lightgreen vl_darkgreen vl_lightblue
#'@export vl_darkblue vl_lightred vl_darkred vl_lightbrown vl_darkbrown
#'@keywords datasets
NULL
