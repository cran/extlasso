\name{fusedlasso}
\alias{fusedlasso}
\title{Fused lasso penalized linear regression}
\description{The function computes coefficients of a fused lasso penalized linear regression model using modified Jacobi gradient descent Algorithm for a pair of lambda1 and lambda2 values.}
\usage{fusedlasso(x,y,lambda1,lambda2,intercept=TRUE,normalize=TRUE, 
alpha=1e-6,eps=1e-6,tol=1e-8,maxiter=1e5)}
\arguments{
  \item{x}{x is a matrix of order n x p where n is number of observations and p is number of predictor variables. Rows should represent observations and columns should represent predictor variables.}
  \item{y}{y is a vector of response variable of order n x 1.}
  \item{lambda1}{The value of lambda1}
  \item{lambda2}{The value of lambda2}
  \item{intercept}{If TRUE, model includes intercept, else the model does not have intercept.}
  \item{normalize}{If TRUE, columns of x matrix are normalized with mean 0 and norm 1 prior to fitting the model. The coefficients at end are returned on the original scale. Default is normalize = TRUE.}
  \item{alpha}{The quantity in approximating \eqn{|\beta| = \sqrt(\beta^2+\alpha)} Default is alpha = 1e-12.}
  \item{eps}{A value which is used to set a coefficient to zero if coefficients value is within - eps to + eps. Default is eps = 1e-6.}
  \item{tol}{Tolerance criteria for convergence of solutions. Default is tol = 1e-6.}
  \item{maxiter}{Maximum number of iterations permissible for solving optimization problem for a particular lambda. Default is 10000. Rarely you need to change this to higher value.}
 }
\value{An object of class `extlasso' with following components:
  \item{intercept}{Value of intercept: TRUE or FALSE as used in input}
	\item{coef}{A vector of order (p+1) if intercept is TRUE, first element being estimates of intercept or a vector of order p if intercept is FALSE. Here p is number of predictor variables.}
	\item{lambda1}{The value of lambda1}
	\item{lambda2}{The value of lambda2}
	\item{L1norm}{L1norm of the coefficients}
  	\item{lambda.iter}{Number of iterations}
	\item{of.value}{Objective function value}
}
\references{Mandal, B.N. and Jun Ma, (2014). A Jacobi-Armijo Algorithm for LASSO and its Extensions.}
\author{B N Mandal and Jun Ma}
\examples{
n=50
p=100
rho=0
beta=rep(0,p)
beta[1:20]=1
beta[11:15]=2
beta[25]=3
beta[41:45]=1
x=matrix(rnorm(n*p),n,p)
y=x\%*\%beta+rnorm(n,0,0.5)
f1<-fusedlasso(x,y,lambda1=0.1,lambda2=1)
plot(beta,col="blue",type="b",pch=1,ylim=range(beta,f1$coef))
lines(f1$coef,type="b",lty=1,col="black")
legend("topright",pch=1,lty=1,merge=TRUE,text.col=c("blue","black"),legend=c("True","Fitted"))
}
\keyword{Fused LASSO}
\keyword{Penalized}
\keyword{Regularized}
\keyword{Jacobi}
\keyword{Regression}
\keyword{Gradient descent}