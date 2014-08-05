INBOdarkgreen <- rgb(152, 152, 104, maxColorValue = 255) #60, 32, 60
INBOgreen <- rgb(202, 204, 65, maxColorValue = 255) #61, 68, 80
INBOdarkblue <- rgb(104, 133, 153, maxColorValue = 255) #205, 32, 60
INBOblue <- rgb(86, 152, 200, maxColorValue = 255) #205, 57, 78
INBObrown <- rgb(118, 91, 52, maxColorValue = 255) #36, 56, 46
INBOreddishbrown <- rgb(182, 101, 70, maxColorValue = 255) #17, 62, 71
INBOred <- rgb(204, 61, 61, maxColorValue = 255) #0, 70, 80
INBOextra <- rgb(c(238, 181, 142, 109, 150, 108), c(182, 66, 157, 74, 99, 175), c(0, 52, 167, 77, 125, 177), maxColorValue = 255)

page.width <- 190/25.4 #in inch, voor Elsevier
page.height <- 240/25.4 #in inch, voor Elsevier
column.width <- 90/25.4 #in inch, voor Elsevier
medium.width <- 140/25.4 #in inch, voor Elsevier

save(INBOdarkgreen, INBOgreen, INBOdarkblue, INBOblue, INBObrown, INBOreddishbrown, INBOred, INBOextra, page.width, page.height, column.width, medium.width, file = "u:/versiebeheer/INBOtheme/R/sysdata.rda")
