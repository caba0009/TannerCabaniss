#' 95% Confidence Interval
#'
#' This function creates a 95% confidence interval for a given set of data
#'
#' @param n the number of data points in the set
#' @param data the data vector
#'
#' @return The 95% confidence interval
#'
#' @examples
#' myci(5,c(15,10,12,13,14))
#'
#' @export
#'
myci=function(data) {
  n=length(data)
  t=qt(.975,(n-1))
  ci=c()
  ci[1]=mean(data)-t*sd(data)/sqrt(n)
  ci[2]=mean(data)+t*sd(data)/sqrt(n)
  return (ci)
}
