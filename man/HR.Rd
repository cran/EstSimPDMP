\name{HR}
\alias{HR}

\title{Estimator of the hazard rate function by a kernel method}

\description{The function computes the estimator of the hazard rate function from positive data. This is the smoothed estimator given in the article written by Ramlau-Hansen. The kernel must be continuous with support [-1,1]. The chosen kernel is the Epanechnikov kernel.
}

\usage{
HR(dat,t,h,alpha,bound)
}

\arguments{
\item{dat}{data from which the estimator is to be computed.}

\item{t}{the estimator is computed at time t.}

\item{h}{bandwith}

\item{alpha}{strictly positive real number. If h is NULL, the bandwith is 1/n^alpha where n is the number of data.}

\item{bound}{the estimator is computed as an integral between the times 0 and bound. bound may be the deterministic time of censorship. The default value is Inf: it means that there is no censorship.}
}

\seealso{
\code{\link{CHR}}, \code{\link{plotHR}}
}

\author{Romain Azais}

\references{
Ramlau-Hansen H. \emph{Smoothing counting process intensities by means of kernel functions} The Annals of Statistics, Vol. 11, No.2, (1983) 453-466

Andersen P.K., Borgan O., Gill R.D., Keiding N. \emph{Statistical models based on counting processes} Springer Series in Statistics. Springer-Verlag, New-York (1993)
}

\examples{
# HR

# Simulation of 100 independent exponential random variables
dat<-rexp(100,1)

# Estimation of the exponential hazard rate at time 0.4
HR(dat,0.4)
}