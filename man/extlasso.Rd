\name{extlasso}
\alias{extlasso}
\title{Entire regularization path of penalized generalized linear model for normal/binomial/poisson family using modified Jacobi Algorithm}
\description{The function computes coefficients of a penalized generalized linear model for normal/binomial/poisson family using modified Jacobi Algorithm for a sequence of lambda values. Currently lasso and elastic net penalty are supported.}
\usage{extlasso(x,y,family=c("normal","binomial","poisson"),intercept=TRUE, 
normalize=TRUE,tau=1,alpha=1e-12,eps=1e-6,tol=1e-6,maxiter=1e5, nstep=100,min.lambda=1e-4)}
\arguments{
  \item{x}{x is matrix of order n x p where n is number of observations and p is number of predictor variables. Rows should represent observations and columns should represent predictor variables.}
  \item{y}{y is a vector of response variable of order n x 1. y should follow either normal/binomial/poisson distribution.}
  \item{family}{family should be one of these: "normal","binomial","poisson"}
  \item{intercept}{If TRUE, model includes intercept, else the model does not have intercept.}
  \item{normalize}{If TRUE, columns of x matrix are normalized with mean 0 and norm 1 prior to fitting the model. The coefficients at end are returned on the original scale. Default is normalize = TRUE.}
  \item{tau}{Elastic net parameter, \eqn{0 \le \tau \le 1} in elastic net penalty \eqn{\lambda{\tau||\beta||_1+(1-\tau)||\beta||_2^2}}. Default tau = 1 corresponds to LASSO penalty.}
  \item{alpha}{The quantity in approximating \eqn{|\beta_j| = \sqrt(\beta_j^2+\alpha)} Default is alpha = 1e-12.}
  \item{eps}{A value which is used to set a coefficient to zero if coefficients value is within - eps to + eps. Default is eps = 1e-6.}
  \item{tol}{Tolerance criteria for convergence of solutions. Default is tol = 1e-6.}
  \item{maxiter}{Maximum number of iterations permissible for solving optimization problem for a particular lambda. Default is 10000. Rarely you need to change this to higher value.}
  \item{nstep}{Number of steps from maximum value of lambda to minimum value of lambda. Default is nstep = 100.}
  \item{min.lambda}{Minimum value of lambda. Default is min.lambda=1e-4.}
}
\value{An object of class `extlasso' with following components:
	\item{beta0}{A vector of order nstep of intercept estimates. Each value denote an estimate for a particular lambda. Corresponding lambda values are available in `lambdas' element of the `extlasso' object.}
	\item{coef}{A matrix of order nstep x p of slope estimates. Each row denotes solution for a particular lambda. Corresponding lambda values are available in `lambdas' element of the `extlasso' object. Here p is number of predictor variables.}
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
#LASSO
x=matrix(rnorm(100*30),100,30)
y=rnorm(100)
g1=extlasso(x,y,family="normal")
plot(g1)
plot(g1,xvar="lambda")

#Elastic net
g2=extlasso(x,y,family="normal",tau=0.6)
plot(g2)
plot(g2,xvar="lambda")

#Ridge regression
g3=extlasso(x,y,family="normal",tau=0)
plot(g3)
plot(g3,xvar="lambda")

#L1 penalized GLM for binomial family
x=matrix(rnorm(100*30),100,30)
y=sample(c(0,1),100,replace=TRUE)
g1=extlasso(x,y,family="binomial")
plot(g1)
plot(g1,xvar="lambda")

#Elastic net with GLM with binomial family
g2=extlasso(x,y,family="binomial",tau=0.8)
plot(g2)
plot(g2,xvar="lambda")
}
\keyword{LASSO}
\keyword{L1 penalty}
\keyword{Elastic net}
\keyword{Generalized linear model}
\keyword{Regression}
\keyword{Ridge regression}
\keyword{Regularization}