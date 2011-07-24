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
\references{\url{http://dx.doi.org/10.1016/j.ecolmodel.2012.05.020}}
\seealso{
\code{\link{abc2xy}}
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
\keyword{ manip }
