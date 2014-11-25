\name{Simu.Cond.HR}
\alias{Simu.Cond.HR}

\title{Simulation of random variables from their conditional hazard rate function}

\description{
This function computes simulations of random variables from their conditional hazard rate function.
}

\usage{
Simu.Cond.HR(N,lambda,x,verbose)
}

\arguments{
\item{N}{number of simulations.}

\item{lambda}{conditional hazard rate function (can be computed in a vector of times).}

\item{x}{the hazard rate function of the simulations is lambda(x,.).}

\item{verbose}{if TRUE, add a histogram of the simulations.}
}

\author{Romain Azais}

\seealso{
	\code{\link{Simu.HR}}
}

\examples{
# Simu.Cond.HR
example<-function(x,t){
	sqrt(sum(x^2))+t
}

# Simulations of 50 iid random variables with hazard rate=example given x=3
Simu.Cond.HR(50,example,3)

# Simulations of 50 iid random variables with hazard rate=example given x=0.5
# Simu.Cond.HR(50,example,0.5)
}
