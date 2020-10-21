#' Central Limit Theorem
#'
#' This function produces a histogram of the sum values
#' for a runif function
#'
#' @param n the number of the sample size in the runif function
#' @param iter the number of iterations run for said sample size
#'
#' @return histogram of sum values
#'
#' @examples
#' myclt(10,10000)
#'
#' @export
#'
myclt=function(n,iter){
  y=runif(n*iter,0,5) # A
  data=matrix(y,nr=n,nc=iter,byrow=TRUE) #B
  sm=apply(data,2,sum) #C
  hist(sm)
  sm
}
