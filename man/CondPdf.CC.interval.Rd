\name{CondPdf.CC.interval}
\alias{CondPdf.CC.interval}

\title{Estimation of the density associated to the jump rate for piecewise-deterministic Markov processes (continuous state space)}

\description{
This is the main function of the package EstSimPDMP. It computes the estimation of the density associated to the jump rate for a piecewise-deterministic Markov process (PDMP) whose state space is continuous. Details about the estimator are given in the paper mentioned in References.
}

\usage{
CondPdf.CC.interval(dat,x,epsilon,tmin,tmax,nbre,h,alpha,verbose,bound)
}

\arguments{
\item{dat}{data from which the estimator is to be computed. It corresponds to the observation of a PDMP within a long time. dat is a matrix such that the last column contains the interarrival times, while the other columns contain the post-jump locations of the process.}

\item{x}{the conditional probability density function is estimated given state is around x.}

\item{epsilon}{the probability density function is estimated given the distance between state and x is less than epsilon. If epsilon is small, this is an approximation of the exact density.}

\item{tmin}{the probability density function is estimated between tmin and tmax.}

\item{tmax}{the probability density function is estimated between tmin and tmax. In addition, tmax must be less than bound.}

\item{nbre}{size of the grid plot.}

\item{h}{bandwith}

\item{alpha}{strictly positive real number. If h is NULL, the bandwith is 1/n^alpha where n is the number of data.}

\item{verbose}{if TRUE, add a plot between tmin and tmax.}

\item{bound}{the estimator is computed as an integral between the times 0 and bound. bound must be less than the deterministic exit time function tstar computed at state x}
}

\references{
Azais R., Dufour F., and Gegout-Petit A. \emph{Nonparametric estimation of the conditional distribution of the inter-jumping times for piecewise-deterministic Markov processes} Scandinavian Journal of Statistics, 2014.
}

\author{Romain Azais}

\seealso{
	\code{\link{CondPdf.DC.interval}}, \code{\link{Simu.PDMP}}
}

\examples{
# CondPdf.CC.interval

# Simulation of a PDMP with continuous state space
dat<-Simu.PDMP(2.3,500,verbose=FALSE)

# Estimation of the conditional density given state=1.8
CondPdf.CC.interval(dat,1.8,0.3,0.5,7.5,70,h=1/3,bound=7.8)

tmin<-0.5
tmax<-7.5
N<-70
a<-tmin:N*tmax
a<-a/N

x<-1.8
# Theoretical conditional pdf given state=1.8
grid<-(1/(1+x))*exp(-(1/(1+x))*a)
points(a,grid,"l",col="blue")
}
