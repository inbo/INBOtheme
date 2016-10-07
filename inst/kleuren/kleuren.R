INBOdarkgreen <- rgb(152, 152, 104, maxColorValue = 255) #60, 32, 60
INBOgreen <- rgb(202, 204, 65, maxColorValue = 255) #61, 68, 80
INBOdarkblue <- rgb(104, 133, 153, maxColorValue = 255) #205, 32, 60
INBOblue <- rgb(86, 152, 200, maxColorValue = 255) #205, 57, 78
INBObrown <- rgb(118, 91, 52, maxColorValue = 255) #36, 56, 46
INBOreddishbrown <- rgb(182, 101, 70, maxColorValue = 255) #17, 62, 71
INBOred <- rgb(204, 61, 61, maxColorValue = 255) #0, 70, 80
INBOextra <- rgb(
  c(238, 181, 142, 109, 150, 108),
  c(182, 66, 157, 74, 99, 175),
  c(0, 52, 167, 77, 125, 177),
  maxColorValue = 255
)

inbo.hoofd <- rgb(192, 67, 132, maxColorValue = 255)
inbo.steun.donkerroos <- rgb(132, 56, 96, maxColorValue = 255)
inbo.steun.blauw <- rgb(53, 97, 150, maxColorValue = 255)
inbo.steun.geelgroen <- rgb(194, 196, 68, maxColorValue = 255)
inbo.oranje <- rgb(232, 120, 55, maxColorValue = 255)
inbo.rood <- rgb(190, 50, 84, maxColorValue = 255)
inbo.bruinrood <- rgb(104, 84, 87, maxColorValue = 255)
inbo.grijs <- rgb(142, 157, 167, maxColorValue = 255)
inbo.lichtgrijs <- rgb(186, 196, 205, maxColorValue = 255)
inbo.grijsblauw <- rgb(114, 155, 183, maxColorValue = 255)
inbo.lichtblauw <- rgb(189, 221, 215, maxColorValue = 255)
inbo.achtergrond <- rgb(243, 243, 243, maxColorValue = 255)
inbo.munt <- rgb(241, 242, 186, maxColorValue = 255)
inbo.lichtgroen <- rgb(228, 229, 23, maxColorValue = 255)
inbo.donkergroen <- rgb(167, 164, 125, maxColorValue = 255)
inbo.groen <- rgb(149, 155, 56, maxColorValue = 255)
inbo.geelgr <- rgb(252, 233, 85, maxColorValue = 255)

page.width <- 190 / 25.4 #in inch, voor Elsevier
page.height <- 240 / 25.4 #in inch, voor Elsevier
column.width <- 90 / 25.4 #in inch, voor Elsevier
medium.width <- 140 / 25.4 #in inch, voor Elsevier

# corporate level 1
vl.yellow <- rgb(255, 235, 0, maxColorValue = 255)
vl.darkyellow <- rgb(240, 215, 15, maxColorValue = 255)
vl.black <- rgb(60, 61, 0, maxColorValue = 255)
vl.grey1 <- rgb(237, 237, 237, maxColorValue = 255)
vl.grey2 <- rgb(229, 229, 229, maxColorValue = 255)
vl.grey3 <- rgb(213, 213, 213, maxColorValue = 255)
vl.grey4 <- rgb(152, 152, 152, maxColorValue = 255)
vl.grey5 <- rgb(107, 107, 107, maxColorValue = 255)
vl.grey6 <- rgb(73, 73, 73, maxColorValue = 255)
vl.grey7 <- rgb(60, 61, 60, maxColorValue = 255)
# corporate level 2, palet 7
vl.lightgreen <- rgb(163, 204, 0, maxColorValue = 255)
vl.darkgreen <- rgb(111, 139, 0, maxColorValue = 255)
vl.lightbrown <- rgb(210, 110, 37, maxColorValue = 255)
vl.darkbrown <- rgb(145, 78, 29, maxColorValue = 255)
vl.lightred <- rgb(213, 62, 94, maxColorValue = 255)
vl.darkred <- rgb(134, 38, 59, maxColorValue = 255)
vl.lightblue <- rgb(50, 178, 233, maxColorValue = 255)
vl.darkblue <- rgb(21, 70, 91, maxColorValue = 255)


save(
  INBOdarkgreen, INBOgreen, INBOdarkblue, INBOblue, INBObrown, INBOreddishbrown,
  INBOred, INBOextra,
  inbo.hoofd, inbo.steun.donkerroos, inbo.steun.blauw, inbo.steun.geelgroen,
  inbo.oranje, inbo.rood, inbo.bruinrood, inbo.grijs, inbo.lichtgrijs,
  inbo.grijsblauw, inbo.lichtblauw, inbo.achtergrond, inbo.munt,
  inbo.lichtgroen, inbo.donkergroen, inbo.groen, inbo.geelgr,
  page.width, page.height, column.width, medium.width,
  vl.yellow, vl.darkyellow, vl.black, vl.grey1, vl.grey2, vl.grey3, vl.grey4,
  vl.grey5, vl.grey6, vl.grey7, vl.lightgreen, vl.darkgreen, vl.lightblue,
  vl.darkblue, vl.lightred, vl.darkred, vl.lightbrown, vl.darkbrown,
  file = "R/sysdata.rda"
)
