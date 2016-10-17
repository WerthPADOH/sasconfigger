library(testthat)

context('Find configurable values in SAS programs')

test_that('find_filepath finds all valid file paths', {
  paths <- c('"C:/users/nwerth/documents"')
  expect_equal(find_filepath('C:/users'),
               list(cbind(start = 1L, end = 8L)))
})
