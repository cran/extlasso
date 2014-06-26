\name{extlasso.norm.lambda}
\alias{extlasso.norm.lambda}
\title{Coefficients of penalized generalized linear models for a given lambda for normal family}
\description{The function computes regression coefficients for a penalized generalized linear models for a given lambda value for response variable following normal distribution.}
\usage{extlasso.norm.lambda(n,p,p1,x,y,xpx,dxpx,xpy,beta.old, 
tau,alpha,lambda1,tol,maxiter,eps,xbeta.old)}
\arguments{
  	\item{n}{Number of observations}
	\item{p}{Number of predictors.}  
	\item{p1}{Number of active predictors}
	\item{x}{A n by p1 matrix of predictors.}
	\item{y}{A vector of n observations.}
	\item{xpx}{Matrix X'X}
	\item{dxpx}{Diagonals of X'X}
	\item{xpy}{Vector X'y}
	\item{beta.old}{A vector of initial values of beta.}
	\item{tau}{Elastic net paramter. Default is 1}
	\item{alpha}{Approximation to be used for absolute value. Default is 10^-6.}
	\item{lambda1}{The value of lambda} 
	\item{tol}{Tolerance criterion. Default is 10^-6}
	\item{maxiter}{Maximum number of iterations. Default is 10000.}
	\item{eps}{value for which beta is set to zero if -eps<beta<eps. Default is 10^-6}
	\item{xbeta.old}{A n by 1 vector of xbeta values.}
      }
\value{A list with following components
	\item{beta.new}{Coefficient estimates}
	\item{conv}{"yes" means converged and "no" means did not converge}
	\item{iter}{Number of iterations to estimate the coefficients}
	\item{ofv.new}{Objective function value at solution}
	\item{xbeta.new}{xbeta values at solution}
      }
\author{B N Mandal and Jun Ma}
\details{This function is internal and used by extlasso.normal function. User need not call this function.}
\keyword{internal}