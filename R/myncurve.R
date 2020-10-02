#' Normal Distribution
#'
#' This function draws a normal distribution curve for
#' with mean=mu and sd=sigma an xlim of (mu-3*sigma,mu+3*sigma)
#' also shades region that corresponds with P(x<=a)
#'
#' @param mu integer for mean of normal distribution
#' @param sigma integer for sd of normal distribution
#' @param a integer for probability P(x<=a)
#'
#' @return Curve of normal distribution with mean=mu and sd=sigma,
#'     shaded probility area and probability of P(x<=a)
#'
#' @examples
#' myncurve(2,4,3)
#'
#'@export
myncurve = function(mu, sigma,a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma),ylab=("Density"))
  xcurve=seq(mu-3*sigma,a,length=1000)
  ycurve=dnorm(xcurve,mean=mu,sd=sigma)
  polygon(c(mu-3*sigma,xcurve,a),c(0,ycurve,0),col="Red")
  prob=pnorm(a,mu,sigma,lower.tail=TRUE)
  prob
}


