\name{triaxes}
\alias{triaxes}
\title{
Draws ternary axis lines
}
\description{
Draws lines separating adjacent halves of the equilateral triangle with unit altitude
}
\usage{
triaxes(lcol = "darkgrey", lty = 2)
}
\arguments{
  \item{lcol}{
line color
}
  \item{lty}{
line type
}
}
\value{
None
}
\author{
Tim Keitt <tkeitt@gmail.com>
}
\seealso{
\code{\link{plot.default}}, \code{\link{plot.trifield}}
}
\examples{
## The function is currently defined as
function(lcol = "darkgrey", lty = 2)
{
	lx = 2 / sqrt(3)
	lines(c(lx / 4, lx), c(1 / 2, 0),
	      lty = lty, col = lcol)
	lines(c(3 * lx / 4, 0), c(1 / 2, 0),
		  lty = lty, col = lcol)
	lines(c(lx / 2, lx / 2), c(0, 1),
		  lty = lty, col = lcol)
  }
}
\keyword{ hplot }
