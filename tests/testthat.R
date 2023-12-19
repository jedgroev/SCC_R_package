library(testthat)
library(SCC_R_Package2)


test_check("SCC_R_Package2")
test_file('tests/testthat/test-tests.R')
test_local()

