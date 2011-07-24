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
\references{\url{http://dx.doi.org/10.1016/j.ecolmodel.2012.05.020}}
\seealso{
\code{\link{plot.default}}, \code{\link{plot.trifield}}
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
