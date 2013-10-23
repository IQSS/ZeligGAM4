\name{zelig2hetnormal.gam}
\alias{zelig2hetnormal.gam}
\title{Interface between the Zelig Model normal.gam and
the Pre-existing Model-fitting Method}
\usage{
  zelig2hetnormal.gam(formula, sform, k = 5,..., data)
}
\arguments{
  \item{formula}{a formula for the mean function}
  
  \item{sform}{a formula for the variance function}
 
  \item{k}{Number of knot points to uniformly distribute across the range of first variable in formula}

  \item{...}{additional parameters}

  \item{data}{a data.frame}
}
\value{
  a list specifying '.function'
}
\description{
  Interface between the Zelig Model hetnormal.gam and the
  Pre-existing Model-fitting Method
  New class of model under development
}

