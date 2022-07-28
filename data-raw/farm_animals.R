## code to prepare `farm_animals` dataset goes here

# this file is just so the code to generate the data is included,
# but is not a necessary part of the package.

animals <- c("pig", "cow", "sheep", "chicken", "duck")
sounds <- c("oink", "moo", "baa", "cluck", "quack")
farm_animals <- data.frame(animals=animals, sounds=sounds)

#this is the important one to create the 'official' data.
usethis::use_data(farm_animals, overwrite = TRUE)

