#' An Age Function
#'
#' This function finds the oldest player for a specific year.
#' @name function2
#' @title Function 2
#'  @param x Name of dataset
#' @param y Year you are looking for
#' @export
#' @examples
#' function2(data, 2001)

library("devtools")
data<- read.csv("/Users/shadiyasharif/Desktop/r working directory/Seasons_Stats_NBA.csv")
usethis::use_data(data, internal = TRUE, overwrite = TRUE)

function2 <- function (x, y) {
  a <-dplyr::filter(x, Year == y)
  b <- a[a$Age == max(a$Age),]
  print(c(b$Player, b$Age))}



