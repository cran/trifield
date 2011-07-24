\name{abc2xy}
\alias{abc2xy}
\title{
Project unity-summed triples (a, b, c) to unit-square doubles (x, y)
}
\description{
Given a matrix of ternary values, this function will compute their \code{x}, \code{y} coordinates.
}
\usage{
abc2xy(abc)
}
\arguments{
  \item{abc}{
A 3-column matrix containing unity-summed triples
}
}
\details{
The \code{x}, \code{y} coordinates are scaled such that the altitude of the equilateral triangle defining the ternary space is equal to one.
}
\value{
A matrix of \code{x}, \code{y} values, one per row
}
\author{
Timothy H. Keitt <tkeitt@gmail.com>
}
\seealso{
\code{\link{xy2abc}}
}
\examples{
## The function is currently defined as
function(abc)
{
	tmat = c(1 / sqrt(3), 0, 2 / sqrt(3), 1, 0, 0)
	dim(tmat) = c(3, 2)
	res = as.matrix(abc) \%*\% tmat
	colnames(res) = c("x", "y")
	res
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ manip }
