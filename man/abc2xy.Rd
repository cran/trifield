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
\references{\url{http://dx.doi.org/10.1016/j.ecolmodel.2012.05.020}}
\seealso{
\code{\link{xy2abc}}
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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ manip }
