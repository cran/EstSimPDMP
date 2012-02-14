\name{Simu.PDMP.DC}
\alias{Simu.PDMP.DC}

\title{Simulation of a piecewise-deterministic Markov process with discrete state space}

\description{
This function computes a simulation of a particular piecewise-deterministic Markov process. The state space of the process is the set (1,2,3). This function is given for illustrating the function CondPdf.DC.interval.}

\usage{
Simu.PDMP.DC(x0,T,verbose)
}

\arguments{
\item{x0}{origin of the process.}

\item{T}{number of simulated jumps.}

\item{verbose}{if TRUE, add a plot of the simulation.}
}

\author{Romain Azais}

\seealso{
	\code{\link{CondPdf.DC.interval}}
}

\examples{
Simu.PDMP.DC(1,50) 
}