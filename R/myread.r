#' Reads csv file into R
#'
#' This function reads a csv file containing data into R so it can be
#' utilized in an R script or markdown file.
#'
#' @param csv Data file with ".csv" ending
#'
#' @return Loaded data file in the R workspace
#'
#' @examples
#' dird="C:\\Users\\Tanner Cabaniss\\Desktop\\"
#' myread("DDT.csv")
#'
#' @export
myread=function(csv){
  fl=paste(dird,csv,sep="")
  read.table(fl,header=TRUE,sep=",") }
