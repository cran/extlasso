\name{fl.lambda}
\alias{fl.lambda}
\title{Coefficients of fused lasso penalized regression for a given pair of lambda1 and lambda2 values}
\description{The function computes regression coefficients for a fused lasso penalized regression model for a given pair of lambda1 and lambda2 values.}
\usage{fl.lambda(n,p,x,y,xpx,dxpx,xpy,beta.old,ofv.old,alpha, 
lambda1,lambda2,tol,maxiter,eps,xbeta.old)}
\arguments{
  	\item{n}{Number of observations}
  	\item{p}{Number of predictors.}   
	\item{x}{A n by l matrix of predictors. Here n is number of observations, l is number of active variables.}
	\item{y}{a vector of n observations.}
  	\item{xpx}{The X'X matrix}
	\item{dxpx}{A vector of order l of diagonal elements of x'x}
	\item{xpy}{A vector of order l containing x'y}
	\item{beta.old}{A vector initial values of beta. Optional}
  	\item{ofv.old}{Objective function value at beta.old}
	\item{alpha}{Approximation to be used for absolute value. Default is 10^-6.}
	\item{lambda1}{The value of lambda1}
	\item{lambda2}{The value of lambda2}
	\item{tol}{Tolerance criterion. Default is 10^-7}
	\item{maxiter}{Maximum number of iterations. Default is 100000.}
	\item{eps}{Value for which beta is set to zero if -eps<beta<eps. Default is 10^-6}
	\item{xbeta.old}{A n by 1 vector of xbeta values. Optional}
     }
\value{A list with following components
\item{beta.new}{Coefficient estimates}
\item{conv}{"yes" means converged and "no" means did not converge}
\item{iter}{Number of iterations to estimate the coefficients}
\item{ofv.new}{Objective function value at solution}
}
\author{B N Mandal and Jun Ma}
\details{This function is internal and used by fusedlasso function. User need not call this function.}
\keyword{internal}