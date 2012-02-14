\name{CHR}
\alias{CHR}

\title{Nelson-Aalen estimator}

\description{
This function computes the Nelson-Aalen estimator of the cumulative hazard rate from independent positive observations.
}

\usage{
CHR(dat,t)
}

\arguments{
\item{dat}{data from which the estimator is to be computed.}

\item{t}{the estimator is computed at time t.}
}

\seealso{
\code{\link{plotCHR}}
}

\author{Romain Azais}

\references{
Andersen P.K., Borgan O., Gill R.D., Keiding N. \emph{Statistical models based on counting processes} Springer Series in Statistics. Springer-Verlag, New-York (1993)
}

\examples{
# CHR

# Simulation of 100 independent exponential random variables
dat<-rexp(100,1)

# Nelson-Aalen estimator of cumulative hazard rate at time 2
CHR(dat,2)
}