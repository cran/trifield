\name{xy2abc}
\alias{xy2abc}
\title{
Ternary projection of \code{x}, \code{y} coordinates
}
\description{
Projects \code{x}, \code{y} coordinates on the unit square to \code{a}, \code{b}, \code{c} ternary ordinates
}
\usage{
xy2abc(xy)
}
\arguments{
  \item{xy}{
A matrix of coordinates, one per row, on the unit square
}
}
\value{
A matrix of \code{a}, \code{b}, \code{c} triples
}
\author{
Tim Keitt <tkeitt@gmail.com>
}
\seealso{
\code{\link{abc2xy}}
}
\examples{
## The function is currently defined as
function(xy)
{
	tmat = c(sqrt(3) / 2, -0.5, 0, 1)
	dim(tmat) = rep(2, 2)
	res = as.matrix(xy) \%*\% tmat
	res = cbind(res[,2], 1 - rowSums(res), res[,1])
	colnames(res) = c("a", "b", "c")
	res
  }
}
\keyword{ manip }
