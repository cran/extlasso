\name{coef.extlasso}
\alias{coef.extlasso}
\title{Extract coefficients from a fitted extlasso object}
\description{The function returns the coefficients from a fitted extlasso object}
\usage{\method{coef}{extlasso}(object,...)}
\arguments{
  \item{object}{A `extlasso' object obtained using `extlasso' function.}
  \item{...}{Not used}
  }
\value{Estimated coefficients for different lambdas starting from maximum value of lambda to minimum value of lambda}

\references{Mandal, B.N. and Jun Ma, (2014). A Jacobi-Armijo Algorithm for LASSO and its Extensions.}
\author{B N Mandal and Jun Ma}

\examples{
x=matrix(rnorm(100*30),100,30)
y=sample(c(0,1),100,replace=TRUE)
g1=extlasso(x,y,family="binomial")
coef(g1)
x=matrix(rnorm(100*30),100,30)
y=rnorm(100)
g1=extlasso(x,y,family="normal")
coef(g1)
}