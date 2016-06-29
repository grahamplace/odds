library(odds)

context("Conversions")

test_that("converting fractional -> decimal", {
  expect_equal(to.decimal("1/2"), 1.5)
})

test_that("converting decimal -> fractional", {
  expect_equal(to.fractional(1.5), "1/2")
})
