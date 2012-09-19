\name{logit.pv}
\alias{logit.pv}
\title{Compute Predicted Values for \code{logit.gam}}
\usage{
  logit.pv(obj, x, inv, num)
}
\arguments{
  \item{obj}{a \code{zelig} object specifying a GAM fit to
  the x \code{setx} object}

  \item{x}{a \code{setx} object specifying counterfactuals}

  \item{inv}{the inverse-link function}

  \item{num}{an integer specifying the number of
  simulations to produce}
}
\value{
  the predicted values for the given data and regression
}
\description{
  Compute Predicted Values for \code{logit.gam}
}
\note{
  \code{logit.pv} is not intended to be called directly.
}
\author{
  Matt Owen \email{mowen@iq.harvard.edu}
}

