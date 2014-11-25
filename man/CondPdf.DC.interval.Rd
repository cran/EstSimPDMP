\name{CondPdf.DC.interval}
\alias{CondPdf.DC.interval}

\title{Estimation of the density associated to the jump rate for piecewise-deterministic Markov processes (discrete state space)}

\description{
This function computes the estimation of the density associated to the jump rate for a piecewise-deterministic Markov (PDMP) process whose state space is finite between the two times tmin and tmax. The estimator is given in the paper mentioned in References.
}

\usage{
CondPdf.DC.interval(dat,x,tmin,tmax,nbre,h,alpha,verbose,bound)
}

\arguments{
\item{dat}{data from which the estimator is to be computed. It corresponds to the observation of a PDMP within a long time. dat is a matrix such that the last column contains the interarrival times, while the other columns contain the states.}

\item{x}{the conditional probability density function is estimated given state=x.}

\item{tmin}{the conditional probability density function is estimated between tmin and tmax given state=x.}

\item{tmax}{the conditional probability density function is estimated between tmin and tmax given state=x. In addition, tmax must be less than bound.}

\item{nbre}{size of the grid plot.}

\item{h}{bandwith}

\item{alpha}{strictly positive real number. If h is NULL, the bandwith is 1/n^alpha where n is the number of data.}

\item{verbose}{if TRUE, add a plot between tmin and tmax.}

\item{bound}{the estimator is computed as an integral between the times 0 and bound. bound must be less than the deterministic exit time function tstar computed at state x.}
}

\references{
Azais R., Dufour F., and Gegout-Petit A. \emph{Nonparametric estimation of the conditional distribution of the inter-jumping times for piecewise-deterministic Markov processes} Scandinavian Journal of Statistics, 2014.
}

\author{Romain Azais}


\seealso{
	\code{\link{CondPdf.DC}}, \code{\link{Simu.PDMP.DC}}
}

\examples{
# CondPdf.DC.interval

# Simulation of a PDMP with discrete state space
dat<-Simu.PDMP.DC(1,500,verbose=FALSE)

# Estimation of the conditional density given state=2
CondPdf.DC.interval(dat,2,0.4,5.5,70,alpha=1/4,bound=5.8)

tmin<-0.4
tmax<-5.5
N<-70
a<-(N*tmin):(N*tmax)
a<-a/N

# Conditional density given state=2
gr<-exp(-a)
# Theoretical conditional pdf
points(a,gr,"l",col="blue")
}
