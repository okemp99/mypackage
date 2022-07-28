#' Describes the Given Sound and Animal as a Message
#'
#' Takes an animal and a sound as a string, and creates a message stating that
#'  the animal says the sound, using the \code{\link{paste0}} function.
#'
#' @param animal A character string
#' @param sound A character string
#'
#' @return A message giving the constructed sentence.
#' @export
#'
#' @examples
#' animal_sounds("cow", "moo")
#' animal_sounds("sheep", "baa")
animal_sounds <- function(animal, sound) {
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, " says ", sound, "!")
}
