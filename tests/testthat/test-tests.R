test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("add_numbers correctly adds two numbers", {
  result <- SCC_R_Package2::add_numbers(2, 3)
  expect_equal(result, 5)
})
