inbo_hoofd <- rgb(192, 67, 132, maxColorValue = 255)
inbo_steun_donkerroos <- rgb(132, 56, 96, maxColorValue = 255)
inbo_steun_blauw <- rgb(53, 97, 150, maxColorValue = 255)
inbo_steun_geelgroen <- rgb(194, 196, 68, maxColorValue = 255)
inbo_oranje <- rgb(232, 120, 55, maxColorValue = 255)
inbo_rood <- rgb(190, 50, 84, maxColorValue = 255)
inbo_bruinrood <- rgb(104, 84, 87, maxColorValue = 255)
inbo_grijs <- rgb(142, 157, 167, maxColorValue = 255)
inbo_lichtgrijs <- rgb(186, 196, 205, maxColorValue = 255)
inbo_grijsblauw <- rgb(114, 155, 183, maxColorValue = 255)
inbo_lichtblauw <- rgb(189, 221, 215, maxColorValue = 255)
inbo_achtergrond <- rgb(243, 243, 243, maxColorValue = 255)
inbo_munt <- rgb(241, 242, 186, maxColorValue = 255)
inbo_lichtgroen <- rgb(228, 229, 23, maxColorValue = 255)
inbo_donkergroen <- rgb(167, 164, 125, maxColorValue = 255)
inbo_groen <- rgb(149, 155, 56, maxColorValue = 255)
inbo_geelgr <- rgb(252, 233, 85, maxColorValue = 255)

page_width <- 190 / 25.4 #in inch, voor Elsevier
page_height <- 240 / 25.4 #in inch, voor Elsevier
column_width <- 90 / 25.4 #in inch, voor Elsevier
medium_width <- 140 / 25.4 #in inch, voor Elsevier

# corporate level 1
vl_yellow <- rgb(255, 235, 0, maxColorValue = 255)
vl_darkyellow <- rgb(240, 215, 15, maxColorValue = 255)
vl_black <- rgb(60, 61, 0, maxColorValue = 255)
vl_grey1 <- rgb(237, 237, 237, maxColorValue = 255)
vl_grey2 <- rgb(229, 229, 229, maxColorValue = 255)
vl_grey3 <- rgb(213, 213, 213, maxColorValue = 255)
vl_grey4 <- rgb(152, 152, 152, maxColorValue = 255)
vl_grey5 <- rgb(107, 107, 107, maxColorValue = 255)
vl_grey6 <- rgb(73, 73, 73, maxColorValue = 255)
vl_grey7 <- rgb(60, 61, 60, maxColorValue = 255)
# corporate level 2, palet 7
vl_lightgreen <- rgb(163, 204, 0, maxColorValue = 255)
vl_darkgreen <- rgb(111, 139, 0, maxColorValue = 255)
vl_lightbrown <- rgb(210, 110, 37, maxColorValue = 255)
vl_darkbrown <- rgb(145, 78, 29, maxColorValue = 255)
vl_lightred <- rgb(213, 62, 94, maxColorValue = 255)
vl_darkred <- rgb(134, 38, 59, maxColorValue = 255)
vl_lightblue <- rgb(50, 178, 233, maxColorValue = 255)
vl_darkblue <- rgb(21, 70, 91, maxColorValue = 255)

save(
  inbo_hoofd, inbo_steun_donkerroos, inbo_steun_blauw, inbo_steun_geelgroen,
  inbo_oranje, inbo_rood, inbo_bruinrood, inbo_grijs, inbo_lichtgrijs,
  inbo_grijsblauw, inbo_lichtblauw, inbo_achtergrond, inbo_munt,
  inbo_lichtgroen, inbo_donkergroen, inbo_groen, inbo_geelgr,
  page_width, page_height, column_width, medium_width,
  vl_yellow, vl_darkyellow, vl_black, vl_grey1, vl_grey2, vl_grey3, vl_grey4,
  vl_grey5, vl_grey6, vl_grey7, vl_lightgreen, vl_darkgreen, vl_lightblue,
  vl_darkblue, vl_lightred, vl_darkred, vl_lightbrown, vl_darkbrown,
  file = "R/sysdata.rda"
)
