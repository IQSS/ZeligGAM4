\name{compute.ev}
\alias{compute.ev}
\title{Simulate Expected Values for GAM Models...}
\usage{compute.ev(obj, x, inv, num)}
\description{Simulate Expected Values for GAM Models}
\note{\code{compute.ev} is not intended to be called directly.}
\value{the predicted values for the given data and regression}
\author{Matt Owen \email{mowen@iq.harvard.edu}}
\arguments{\item{obj}{a \code{zelig} object specifying a GAM fit to the x \code{setx}
object}
\item{x}{a \code{setx} object specifying counterfactuals}
\item{inv}{the inverse-link function}
\item{num}{an integer specifying the number of simulations to produce}}
