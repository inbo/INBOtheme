# eerst ggplot2 laden en dan pas INBOtheme
library(ggplot2)
library(INBOtheme)
#INBO huisstijl = standaard naar het laden van INBOtheme
p <- ggplot(mtcars, aes(x = mpg, y = disp)) +
  geom_point()
p
p + theme_elsevier()
theme_set(theme_elsevier())
switchColour("black")
p
ggsave(
  p,
  filename = "test.pdf",
  width = page.width,
  height = 0.5 * page.height
 )
ggsave(
  p,
  filename = "test.pgn",
  width = column.width,
  height = 3
)
# overschakelen naar theme_INBO()
theme_set(theme_elsevier())
switchColour(INBObrown)
p + theme_INBO()
