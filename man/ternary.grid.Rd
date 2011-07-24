\name{ternary.grid}
\alias{ternary.grid}
\title{
Constructs a ternary grid
}
\description{
The function builds a rectangular lattice of points bounded by an equilateral triangle with unit altitude. It can be used with \code{\link{ternary.apply}} and \code{\link{ternary.field}} to create a surface of values for plotting.
}
\usage{
ternary.grid(grid.size)
}
\arguments{
  \item{grid.size}{
The number of rows and columns in the grid
}
}
\details{
The size of the grid is the number of rows and colunn in the rectangular region bounding the ternary plot region. The number of output \code{x}, \code{y} and corresponding \code{a}, \code{b}, \code{c} points will be less than rows times columns because many \code{x}, \code{y} points fall outside the ternary region. In all cases, the sum of \code{a}, \code{b} and \code{c} will be unity.
}
\value{
Data frame with columns
\item{x}{x-coordinate}
\item{y}{y-coordinate}
\item{xi}{column indices (I think)}
\item{yi}{row indices (I think)}
\item{a}{distance along first ternary axis}
\item{b}{distance along second ternary axis}
\item{c}{distance along third ternary axis}
}
\author{
Tim Keitt <tkeitt@gmail.com>
}
\references{\url{http://dx.doi.org/10.1016/j.ecolmodel.2012.05.020}}
\seealso{
\code{\link{ternary.apply}}, \code{\link{ternary.grid}}
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
