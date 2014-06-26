\name{extlasso.normal}
\alias{extlasso.normal}
\title{Entire regularization path of penalized generalized linear model for normal family using modified Jacobi Algorithm}
\description{The function computes coefficients of a penalized generalized linear model for normal family using modified Jacobi Algorithm for a sequence of lambda values. Currently lasso and elastic net penalty are supported.}
\usage{extlasso.normal(x,y,intercept=TRUE,normalize=TRUE,tau=1,alpha=1e-12, 
eps=1e-6,tol=1e-6,maxiter=1e5,nstep=100,min.lambda=1e-4)}
\arguments{
  \item{x}{x is matrix of order n x p where n is number of observations and p is number of predictor variables. Rows should represent observations and columns should represent predictor variables.}
  \item{y}{y is a vector of response variable of order n x 1. y should follow normal distribution.}
  \item{intercept}{If TRUE, model includes intercept, else the model does not have intercept.}
  \item{normalize}{If TRUE, columns of x matrix are normalized with mean 0 and norm 1 prior to fitting the model. The coefficients at end are returned on the original scale. Default is normalize = TRUE.}
  \item{tau}{Elastic net parameter, \eqn{0 \le \tau \le 1} in elastic net penalty \eqn{\lambda\{\tau\|\beta\|_1+(1-\tau)\|\beta\|_2^2\}}. Default tau = 1 corresponds to LASSO penalty.}
  \item{alpha}{The quantity in approximating \eqn{|\beta| = \sqrt(\beta^2+\alpha)} Default is alpha = 1e-12.}
  \item{eps}{A value which is used to set a coefficient to zero if coefficients value is within - eps to + eps. Default is eps = 1e-6.}
  \item{tol}{Tolerance criteria for convergence of solutions. Default is tol = 1e-6.}
  \item{maxiter}{Maximum number of iterations permissible for solving optimization problem for a particular lambda. Default is 10000. Rarely you need to change this to higher value.}
  \item{nstep}{Number of steps from maximum value of lambda to minimum value of lambda. Default is nstep = 100.}
  \item{min.lambda}{Minimum value of lambda. Default is min.lambda=1e-4.}
}
\value{An object of class `extlasso' for which plot, predict and coef method exists. The object has following components:
	\item{intercept}{Value of intercept: TRUE or FALSE as used in input}
	\item{coef}{A matrix of order nstep x p if intercept is FALSE or nstep x (p+1) if intercept is TRUE, first column being estimates of intercept. Each row denotes solution for a particular lambda. Corresponding lambda values are available in `lambdas' element of the `extlasso' object. Here p is number of predictor variables.}
	\item{lambdas}{Sequence of lambda values for which coefficients are obtained}
	\item{L1norm}{L1norm of the coefficients}
	\item{norm.frac}{Fractions of norm computed as L1 norm at current lambda divided by maximum L1 norm}
	\item{lambda.iter}{Number of iterations used for different lambdas}
	\item{of.value}{Objective function values}
	\item{normx}{Norm of x variables}
}
\references{Mandal, B.N. and Jun Ma, (2014). A Jacobi-Armijo Algorithm for LASSO and its Extensions.}
\author{B N Mandal and Jun Ma}
\examples{
x=matrix(rnorm(100*30),100,30)
y=rnorm(100)
g1=extlasso.normal(x,y)
plot(g1)
plot(g1,xvar="lambda")
g1$of.value
}
\keyword{internal}