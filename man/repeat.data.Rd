\name{repeat.data}
\alias{repeat.data}
\title{Add Repittions of data...}
\usage{repeat.data(obj, x)}
\description{Add Repittions of \code{data.frame} from GAM-style Formula}
\details{\code{repeat.data} copies data-columns relative to the number of degrees of
freedom in the statistical regression. This allows appropriate simulations
of quantities of interest.}
\note{This function is not intended to be computed directly.}
\value{a correctly formatted data.frame}
\author{Matt Owen}
\arguments{\item{obj}{a \code{zelig} object specifying a statistical regression}
\item{x}{a \code{setx} object specifying information about counterfactuals}}
