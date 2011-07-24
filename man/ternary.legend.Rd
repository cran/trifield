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
\references{\url{http://dx.doi.org/10.1016/j.ecolmodel.2012.05.020}}
\seealso{
\code{\link{plot.trifield}}
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
