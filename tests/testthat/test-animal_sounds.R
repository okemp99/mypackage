test_that("animal_sounds produces expected strings", {
  giraffe_moo <- animal_sounds("giraffe", "moo")
  expect_equal(giraffe_moo,
               "The giraffe says moo!")
})

test_that("handles invalid inputs", {
  expect_error(animal_sounds(c("cat", "dog"), c("miaow", "woof")),
               "animal is not a string \\(a length one character vector\\)")
  expect_error(animal_sounds("cat", factor("meow")),
               "sound is not a string \\(a length one character vector\\)")
})

test_that("handles missing sound", {
  giraffe <- animal_sounds("giraffe")
  expect_equal(giraffe,
               "The giraffe makes no sound.")
})
