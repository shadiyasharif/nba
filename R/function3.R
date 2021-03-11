#' A Correlation Matrix Function
#'
#' This function creates a correlation matrix for all the numeric variables for a specific year.
#' @name function3
#' @title Function 3
#' @param x Name of dataset
#' @param y Year you are looking for
#' @export
#' @examples
#' function3(data, 2001)

library("devtools")
data<- read.csv("/Users/shadiyasharif/Desktop/r working directory/Seasons_Stats_NBA.csv")
usethis::use_data(data, internal = TRUE, overwrite = TRUE)

function3 <- function(x, y) {
  a <- dplyr::filter(x, Year == y)
  b <- purrr::keep(a, is.numeric)
  c <- stats::cor(b)
  print(c)}



