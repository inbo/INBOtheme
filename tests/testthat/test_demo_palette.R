test_that("demo_palette", {
  output <- tempfile(fileext = ".pdf")
  grDevices::pdf(output)
  expect_is(
    junk <- demo_palette(c("green", "red")),
    "list"
  )
  grDevices::dev.off()
  file.remove(output)
})
