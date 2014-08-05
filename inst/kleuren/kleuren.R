INBOdarkgreen <- rgb(152, 152, 104, maxColorValue = 255) #60, 32, 60
INBOgreen <- rgb(202, 204, 65, maxColorValue = 255) #61, 68, 80
INBOdarkblue <- rgb(104, 133, 153, maxColorValue = 255) #205, 32, 60
INBOblue <- rgb(86, 152, 200, maxColorValue = 255) #205, 57, 78
INBObrown <- rgb(118, 91, 52, maxColorValue = 255) #36, 56, 46
INBOreddishbrown <- rgb(182, 101, 70, maxColorValue = 255) #17, 62, 71
INBOred <- rgb(204, 61, 61, maxColorValue = 255) #0, 70, 80
INBOextra <- rgb(c(238, 181, 142, 109, 150, 108), c(182, 66, 157, 74, 99, 175), c(0, 52, 167, 77, 125, 177), maxColorValue = 255)

inbo.hoofd <- rgb(192, 86, 132, maxColorValue = 255)
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

page.width <- 190/25.4 #in inch, voor Elsevier
page.height <- 240/25.4 #in inch, voor Elsevier
column.width <- 90/25.4 #in inch, voor Elsevier
medium.width <- 140/25.4 #in inch, voor Elsevier

save(
  INBOdarkgreen, INBOgreen, INBOdarkblue, INBOblue, INBObrown, INBOreddishbrown, INBOred, INBOextra, 
  inbo.hoofd, inbo.steun.donkerroos, inbo.steun.blauw, inbo.steun.geelgroen, inbo.oranje, inbo.rood, inbo.bruinrood, inbo.grijs, inbo.lichtgrijs, inbo.grijsblauw, inbo.lichtblauw, inbo.achtergrond, inbo.munt, inbo.lichtgroen, inbo.donkergroen, inbo.groen, inbo.geelgr, 
  page.width, page.height, column.width, medium.width, 
  file = "R/sysdata.rda"
)
