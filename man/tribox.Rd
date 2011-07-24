\name{tribox}
\alias{tribox}
\title{
Draws an equilateral triangle with unit altitude
}
\description{
Like the \code{\link{box}} graphics function, this function draws a "box" around a ternary plot
}
\usage{
tribox(...)
}
\arguments{
  \item{\dots}{
Additional graphic parameters to be passed to \code{\link{polygon}}
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
function(...)
{
	lx = 2 / sqrt(3)
	tribox = cbind(c(0, lx / 2, lx), c(0, 1, 0))
	polygon(tribox, ...)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ hplot }
