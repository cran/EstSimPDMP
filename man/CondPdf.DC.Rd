\name{CondPdf.DC}
\alias{CondPdf.DC}

\title{Estimation of the density associated to the jump rate for piecewise-deterministic Markov processes (discrete state space)}

\description{
This function computes the estimation of the density associated to the jump rate for a piecewise-deterministic Markov process whose state space is finite. The estimator is given in the paper mentioned in References.
}

\usage{
CondPdf.DC(dat,x,t,h,alpha,bound)
}

\arguments{
\item{dat}{data from which the estimator is to be computed. It corresponds to the observation of a process within a long time. dat is a matrix such that the last column contains the interarrival times, while the other columns contain the states.}

\item{x}{the conditional probability density function is estimated given state=x.}

\item{t}{the conditional probability density function is estimated at time t. In addition, t must be less than bound.}

\item{h}{bandwith}

\item{alpha}{strictly positive real number. If h is NULL, the bandwith is 1/n^alpha where n is the number of data.}

\item{bound}{the estimator is computed as an integral between the times 0 and bound. bound must be less than the deterministic exit time function tstar computed at state x}
}

\references{
Azais R., Dufour F., and Gegout-Petit A. \emph{Nonparametric estimation of the conditional distribution of the inter-jumping times for piecewise-deterministic Markov processes} Scandinavian Journal of Statistics, 2014.
}

\author{Romain Azais}


\seealso{
	\code{\link{CondPdf.DC.interval}}, \code{\link{Simu.PDMP.DC}}
}

\examples{
# CondPdf.DC

# Simulation of a PDMP with discrete state space
dat<-Simu.PDMP.DC(1,200,verbose=FALSE)

# Estimation of the conditional density given state=2 at time 2
CondPdf.DC(dat,2,2,bound=5.8)
}
