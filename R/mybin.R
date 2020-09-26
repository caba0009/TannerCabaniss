#' Binomial Experiment
#'
#' This function executes a binomial experiment for
#' a sample of population 10 with a probability of 0.7
#' with a default iterations set to 100.
#'
#' @param iter positive integer for iterations
#'
#' @return Table and barplot for data
#'
#' @examples
#' mybin(200)
#'
#'@export
mybin=function(iter=100,n=10, p=0.7){
  # make a matrix to hold the samples
  #initially filled with NA's
  sam.mat=matrix(NA,nr=n,nc=iter, byrow=TRUE)
  #Make a vector to hold the number of successes in each trial
  succ=c()
  for( i in 1:iter){
    #Fill each column with a new sample
    sam.mat[,i]=sample(c(1,0),n,replace=TRUE, prob=c(p,1-p))
    #Calculate a statistic from the sample
    succ[i]=sum(sam.mat[,i])
  }
  #Make a table of successes
  succ.tab=table(factor(succ,levels=0:n))
  #Make a barplot of the proportions
  barplot(succ.tab/(iter), col=rainbow(n+1), main="Binomial simulation", xlab="Number of successes")
  succ.tab/iter
}
