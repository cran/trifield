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
\references{\url{http://dx.doi.org/10.1016/j.ecolmodel.2012.05.020}}
\seealso{
\code{\link{plot.default}}, \code{\link{image.default}}, \code{\link{contour.default}}
}
\examples{
# See demo(trifield)
\dontrun{
grid.size = 128
par(mar = rep(2, 4), oma = rep(0, 4))
tg = ternary.grid(grid.size)
f = function(x)
        sin(2 * pi * x[1]) +
        sin(3 * pi * x[2]) +
        sin(4 * pi * x[3])
z = ternary.apply(tg, f)
tf = ternary.field(tg, z)
plot(tf)
ternary.legend()
}
}
\keyword{ hplot }
