\name{ternary.legend}
\alias{ternary.legend}
\title{
Plots a ternary legend
}
\description{
Plots a legend giving the directions of the ternary axes and labels
}
\usage{
ternary.legend(x0 = 0.2, y0 = 0.8, radius = 0.1, lab1 = "A", lab2 = "B", lab3 = "C", infl = 1.5, cex = 0.75, length = 0.05, ...)
}
\arguments{
  \item{x0}{
x-coordinate of the center point
}
  \item{y0}{
y-coordinate of the center point
}
  \item{radius}{
how long to draw the axes
}
  \item{lab1}{
string giving first axis label
}
  \item{lab2}{
string giving second axis label
}
  \item{lab3}{
string giving third axis label
}
  \item{infl}{
space between axes and labels
}
  \item{cex}{
size of the labels
}
  \item{length}{
length of axis lines
}
  \item{\dots}{
additional parameters passed to \code{\link{arrows}}}
}
\value{
None
}
\author{
Tim Keitt <tkeitt@gmail.com>
}
\seealso{
\code{\link{plot.trifield}}
}
\examples{
## The function is currently defined as
function(x0 = 0.2, y0 = 0.8, radius = 0.1,
                          lab1 = 'A', lab2 = 'B', lab3 = 'C',
                          infl = 1.5, cex = 0.75, length = 0.05, ...)
{
	lx = 2 / sqrt(3)
	x1 = x0
	y1 = y0 + radius
	arrows(x0, y0, x1, y1, length = length, ...)
	y1 = y0 + infl * radius
	text(x1, y1, lab1, cex = cex)
	x1 = x0 - radius * cos(pi / 6)
	y1 = y0 - radius * sin(pi / 6)
	arrows(x0, y0, x1, y1, length = length, ...)
	x1 = x0 - infl * radius * cos(pi / 6)
	y1 = y0 - infl * radius * sin(pi / 6)
	text(x1, y1, lab2, cex = cex)
	x1 = x0 + radius * cos(pi / 6)
	y1 = y0 - radius * sin(pi / 6)
	arrows(x0, y0, x1, y1, length = length, ...)
	x1 = x0 + infl * radius * cos(pi / 6)
	y1 = y0 - infl * radius * sin(pi / 6)
	text(x1, y1, lab3, cex = cex)
  }
}
\keyword{ hplot }
