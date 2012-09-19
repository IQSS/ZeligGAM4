\name{param.normal.gam}
\alias{param.normal.gam}
\title{Simulate Parameters for the ``normal.gam'' Model
This method is used internally by Zelig to simulate parameters.}
\usage{
  \method{param}{normal.gam}(obj, num=1000, ...)
}
\arguments{
  \item{obj}{a zelig object}

  \item{num}{an integer specifying the number of
  simulations to compute}

  \item{...}{additional parameters}
}
\value{
  a list specifying link, link-inverse, random samples, and
  ancillary parameters
}
\description{
  Simulate Parameters for the ``normal.gam'' Model This
  method is used internally by Zelig to simulate
  parameters.
}
\note{
  This method is used as part of the Zelig 4 API. This
  should not be called explicitly.
}

