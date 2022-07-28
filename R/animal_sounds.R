#' Describes the Given Sound and Animal as a Message
#'
#' Takes an animal and a sound as a string, and creates a message stating that
#'  the animal says the sound, using the \code{\link{paste0}} function. If sound is NULL,
#'  the sentence states that animal makes no sound.
#'
#' @param animal A character string
#' @param sound A character string. If no input is given defaults to NULL.
#'
#' @return A message giving the constructed sentence.
#' @export
#'
#' @examples
#' animal_sounds("cow", "moo")
#' animal_sounds("sheep", "baa")
#' animal_sounds("fish")
animal_sounds <- function(animal, sound = NULL) {
  assertthat::assert_that(assertthat::is.string(animal), assertthat::is.string(sound) || is.null(sound))
  if (is.null(sound)) {
    paste0("The ", animal, " makes no sound.")
  } else {
    paste0("The ", animal, " says ", sound, "!")
  }
}
