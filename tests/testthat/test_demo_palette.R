context("demo_palette")
expect_is(
  junk <- demo_palette(c("green", "red")),
  "list"
)
