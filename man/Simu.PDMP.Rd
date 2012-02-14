\name{Simu.PDMP}
\alias{Simu.PDMP}

\title{Simulation of a piecewise-deterministic Markov process with continuous state space}

\description{
This function computes a simulation of a particular piecewise-deterministic Markov process. The state space of the process is the interval ]0,10[. This function is given for illustrating the function CondPdf.CC.interval.}

\usage{
Simu.PDMP(x0,T,verbose)
}

\arguments{
\item{x0}{origin of the process.}

\item{T}{number of simulated jumps.}

\item{verbose}{if TRUE, add a plot of the simulation.}
}

\author{Romain Azais}

\seealso{
	\code{\link{CondPdf.CC.interval}}, \code{\link{Simu.PDMP.DC}}
}

\examples{
Simu.PDMP(2.4,20) 
}