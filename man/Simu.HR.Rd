\name{Simu.HR}
\alias{Simu.HR}

\title{Simulation of random variables from their hazard rate function}

\description{
This function computes simulations of random variables from their chazard rate function.
}

\usage{
Simu.HR(N,lambda,verbose)
}

\arguments{
\item{N}{number of simulations.}

\item{lambda}{hazard rate function (can be computed in a vector of times).}

\item{verbose}{if TRUE, add a histogram of the simulations.}
}

\author{Romain Azais}

\seealso{
\code{\link{Simu.Cond.HR}}
}


\examples{
# Simu.HR

# Weibull distribution hazard rate function
example<-function(x){
	x
}
# Simulation of 100 iid random variables with hazard rate=example
Simu.HR(100,example)
}