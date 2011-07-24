\name{plot.trifield}
\alias{plot.trifield}
\title{
Plot a ternary field
}
\description{
A simple wrapper around image and contour for plotting ternary fields
}
\usage{
\method{plot}{trifield}(x, contours = TRUE, col = topo.colors(256), lab1 = "A = 0", lab2 = "B = 0", lab3 = "C = 0", tribox = TRUE, axis.lines = TRUE, ...)
}
\arguments{
  \item{x}{
An object of class \code{trifield}
}
  \item{contours}{
Make contours?
}
  \item{col}{
Color palette to use
}
  \item{lab1}{
First axis label
}
  \item{lab2}{
Second axis label
}
  \item{lab3}{
Third axis label
}
  \item{tribox}{
Draw a triangle around the plot?
}
  \item{axis.lines}{
Draw internal (altitute) axis lines?
}
  \item{\dots}{
Additional graphics parameters to be passed to plot
}
}
\details{
This is a small demo function showing how one can make a ternary contour plot from a \code{trifield} object. The input object can be any list with x, y and z fields, but the result will be odd if non-NA z-values fall outside an equilateral triangle with unit altitude.
}
\value{
None
}
\author{
Tim Keitt <tkeitt@gmail.com>
}
\seealso{
\code{\link{plot.default}}, \code{\link{image.default}}, \code{\link{contour.default}}
}
\examples{
## The function is currently defined as
function(x, contours = TRUE,
                         col = topo.colors(256),
                         lab1 = 'A = 0', lab2 = 'B = 0',
                         lab3 = 'C = 0', tribox = TRUE,
                         axis.lines = TRUE, ...)
{
	lx = 2 / sqrt(3)
	plot(range(x$x), range(x$y), type = 'n', asp = 1,
		 axes = F, xlab = NA, ylab = NA, xpd = NA, ...)
	image(x, col = col, add = TRUE)
	if ( axis.lines ) triaxes()
	if ( contours ) contour(x, add = TRUE)
	if ( !is.na(lab1) )
		text(lx / 6 - 0.06, 1 / 3, lab3, srt = 60)
	if ( !is.na(lab2) )
		text(2 * lx / 3 + 0.06, 2 / 3, lab2, srt = -60)
	if ( !is.na(lab3) )
		text(2 * lx / 3, -0.06, lab1)
	if ( tribox ) tribox(lwd = 3)
  }
}
\keyword{ hplot }
