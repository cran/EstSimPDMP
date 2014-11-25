\name{plotCHR}
\alias{plotCHR}

\title{Plot the Nelson-Aalen estimator}

\description{
Function for computing and plotting the Nelson-Aalen estimator of the cumulative hazard rate between two times.
}

\usage{
plotCHR(dat,tmin,tmax,N)
}

\arguments{
\item{dat}{data from which the estimator is to be computed.}

\item{tmin}{the estimator is computed from time tmin to time tmax.}

\item{tmax}{the estimator is computed from time tmin to time tmax. In addition, tmax is greater than tmin.}

\item{N}{size of the grid plot.}
}

\seealso{
\code{\link{CHR}}
}

\author{Romain Azais}

\references{
Andersen P.K., Borgan O., Gill R.D., Keiding N. \emph{Statistical models based on counting processes} Springer Series in Statistics. Springer-Verlag, New-York (1993)
}
\examples{
# plotCHR

# Simulation of 50 independent exponential random variables
dat<-rexp(50,1)

# Nelson-Aalen estimator of cumulative hazard rate between 0 and 2
plotCHR(dat,0,2,20)

# Theoretical cumulative hazard rate
points(0:2,0:2,col="blue",type="l")
}
