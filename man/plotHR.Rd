\name{plotHR}
\alias{plotHR}

\title{Plot the estimator of the hazard rate computed by the function HR}

\description{
Function for plotting the hazard rate estimator computed by the function HR between two times.
}

\usage{
plotHR(dat,tmin,tmax,N,h,alpha,bound)
}

\arguments{
\item{dat}{data from which the estimator is to be computed.}

\item{tmin}{the estimator is computed from time tmin to time tmax. tmax is greater than tmin.}

\item{tmax}{the estimator is computed from time tmin to time tmax. tmax is greater than tmin. In addition, tmax must be less than bound.}

\item{N}{size of the grid plot.}

\item{h}{bandwith.}

\item{alpha}{strictly positive real number. If h is NULL, the bandwith is 1/n^alpha where n is the number of data.}

\item{bound}{the estimator is computed as an integral between the times 0 and bound. bound may be the deterministic time of censorship. The default value is Inf: it means that there is no censorship. Moreover, tmax must be less than bound.}
}

\author{Romain Azais}

\references{
Ramlau-Hansen H. \emph{Smoothing counting process intensities by means of kernel functions} The Annals of Statistics, Vol. 11, No.2, (1983) 453-466

Andersen P.K., Borgan O., Gill R.D., Keiding N. \emph{Statistical models based on counting processes} Springer Series in Statistics. Springer-Verlag, New-York (1993)
}

\seealso{
\code{\link{HR}}
}

\examples{
# plotHR

# Simulation of 100 independent exponential random variables
dat<-rexp(100,1)

# Estimation of the exponential hazard rate between 0 and 2
plotHR(dat,1,2,100,h=0.2)

# Theoretical hazard rate of exponential distribution
points(1:2,c(1,1),col="blue",type="l")
}
