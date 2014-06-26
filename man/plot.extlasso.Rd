\name{plot.extlasso}
\alias{plot.extlasso}
\title{Plot of regularization path}
\description{Produces a plot of entire regularization path from a 'extlasso' object obtained using `extlasso' function.}
\usage{\method{plot}{extlasso}(x,xvar=c("lambda","L1norm","fraction of norm"),...)}
\arguments{
  \item{x}{A `extlasso' object obtained using `extlasso' function.}
  \item{xvar}{What should be on x-axis? xvar="lambda" produces a plot of regularization path with respect to lambda, xvar="L1norm" produces a plot of regularization path with respect to L1 norm of coefficients and xvar="fraction of norm" produces a plot of regularization path with respect to fraction of norm of coefficients. Default is xvar="L1norm".}
  \item{...}{Optional graphical parameters to matplot() function}
 }
\value{A plot of regularization path is produced.}


\references{Mandal, B.N. and Jun Ma, (2014). A Jacobi-Armijo Algorithm for LASSO and its Extensions.}
\author{B N Mandal and Jun Ma}

\examples{
x=matrix(rnorm(100*30),100,30)
y=rnorm(100)
g1=extlasso(x,y,family="normal")
plot(g1)
plot(g1,xvar="lambda")
x=matrix(rnorm(100*30),100,30)
y=sample(c(0,1),100,replace=TRUE)
g1=extlasso(x,y,family="binomial")
plot(g1)
plot(g1,xvar="lambda")
}
\keyword{LASSO}
\keyword{Elastic net}
\keyword{Penalized}
\keyword{Regularized}
\keyword{L1 norm}
\keyword{Jacobi}
\keyword{Regression}
\keyword{Generalized linear models}
\keyword{Gradient descent}