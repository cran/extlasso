\name{bars}
\alias{bars}
\title{Error bars}
\description{The function places error bars on crossvalidation plots}
\usage{bars(x, up, low, width = 0.03, ...)}
\arguments{
  \item{x}{a vector}
  \item{up}{a vector}
  \item{low}{a vector}
  \item{width}{a vector}
 }
\author{B N Mandal and Jun Ma}
\details{This function is internal and used by cross validation routines.}
\examples{
x=rnorm(5)
up=rep(1,5)
low=rep(1,5)
plot(x)
bars(x,up,low)
}
\keyword{internal}