\name{extlasso.binom.lambda}
\alias{extlasso.binom.lambda}
\title{Coefficients of penalized generalized linear models for a given lambda for binomial family}
\description{The function computes regression coefficients for a penalized generalized linear models for a given lambda value for response variable following binomial distribution.}
\usage{extlasso.binom.lambda(n,p,p1,sumy,beta0.old,beta1.old,x,y, 
dxkx0,dxkx1,tau,lambda1,alpha,tol,maxiter,eps,xbeta.old,mu1)}
\arguments{
  	\item{n}{Number of observations}
	\item{p}{Number of predictors}  
	\item{p1}{Number of active predictors}
	\item{sumy}{Sum of y values}
	\item{beta0.old}{Initial value of intercept}
	\item{beta1.old}{A vector of initial values of slope coefficients}
	\item{x}{A n by p1 matrix of predictors}
	\item{y}{A vector of n observations}
	\item{dxkx0}{In case of a model with intercept, first diagonal of X'X}
	\item{dxkx1}{Diagonals of X'X}
	\item{tau}{Elastic net paramter. Default is 1}
	\item{lambda1}{The value of lambda}
	\item{alpha}{Approximation to be used for absolute value. Default is 10^-6}
	\item{tol}{Tolerance criterion. Default is 10^-6}
	\item{maxiter}{Maximum number of iterations. Default is 10000}
	\item{eps}{value for which beta is set to zero if -eps<beta<eps. Default is 10^-6}
	\item{xbeta.old}{A n by 1 vector of xbeta values}
	\item{mu1}{The value of mu at beta.old}
	
 }
\value{A list with following components
	\item{beta0.new}{Intercept estimate}
	\item{beta1.new}{Slope coefficient estimates}
	\item{conv}{"yes" means converged and "no" means did not converge}
	\item{iter}{Number of iterations to estimate the coefficients}
	\item{ofv.new}{Objective function value at solution}
	\item{xbeta.new}{xbeta values at solution}
	\item{mu1}{Value of mu at solution}
}
\author{B N Mandal and Jun Ma}
\details{This function is internal and used by extlasso.binomial function. User need not call this function.}
\keyword{internal}