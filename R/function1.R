#' A Games Function
#'
#' This function finds the player associated with the maximum number of games for a specific year.
#' @name function1
#' @title Function 1
#' @param x Name of dataset
#' @param y Year you are looking for
#' @export
#' @examples
#' function1(data, 2001)

library("devtools")
data<- read.csv("/Users/shadiyasharif/Desktop/r working directory/Seasons_Stats_NBA.csv")
usethis::use_data(data, internal = TRUE, overwrite = TRUE)

function1<- function(x, y) {
  a <- dplyr::filter(x, Year == y)
  b <- a[a$G == max(a$G),]
  print(c(b$Player, b$G))
 }



