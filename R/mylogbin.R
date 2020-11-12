#' Log Binomial Function
#'
#' This function returns the log likelihood of a binomial probability
#' experiment
#'
#' @param x the vector of quantiles
#' @param prob probability of success on each trial
#' @param size the number of trials
#'
#' @return log likelihood of given experiment
#'
#' @examples
#' x=c(1,3,4,5,3,2)
#' mylogbin(x,1,1000)
#'
#'@export
#'
mylogbin=function(x,param,size) {
  log(dbinom(x,prob=param,size))
}
