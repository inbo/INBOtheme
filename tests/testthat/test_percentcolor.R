test_that("percentcolor", {
  expect_identical(
    INBOtheme:::percentcolor(
      c("#0080FF", "#4488BB"),
      percent = 0.5
    ),
    c("#80C0FF", "#A2C3DD")
  )
  expect_identical(
    INBOtheme:::percentcolor(
      c("#0080FF", "#4488BB"),
      percent = 0.25
    ),
    c("#40A0FF", "#73A6CC")
  )
})
