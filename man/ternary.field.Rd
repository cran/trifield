\name{ternary.field}
\alias{ternary.field}
\title{
Constructs a ternary field
}
\description{
Constructs a \code{trifield} object, suitable for use with \code{\link{image}} and \code{\link{contour}} from a ternary grid
}
\usage{
ternary.field(grid, vals, dim.out = NULL)
}
\arguments{
  \item{grid}{
A ternary grid as returned e.g. by the \code{\link{ternary.grid}} function
}
  \item{vals}{
A vector of values where \code{length(vals) == nrow(grid)} as returned e.g. by the \code{\link{ternary.apply}} function
}
  \item{dim.out}{
Dimensions (rows and columns) of the output
}
}
\details{
This function constructs a \code{trifield} object suitable for plotting. It may be the case that the dimension indices contained in the ternary grid object may not contain sufficient information to determine the dimensions of the output. In that case, explicit output dimensions can be provided using the \code{dim.out} argument. If the \code{dim.out} argument is \code{NULL}, then the maximum row and column indices (\code{xi}, \code{yi}) will be extracted from the ternary grid. Note that \code{\link{image}} plots the transposition of input matrices and that \code{dim.out} must be specified with this in mind.
}
\value{
A list with \code{x}, \code{y} and \code{z} elements defining a plotting surface suitable for use with \code{\link{image}} and \code{\link{contour}}.
}
\author{
Tim Keitt <tkeitt@gmail.com
}
\references{\url{http://dx.doi.org/10.1016/j.ecolmodel.2012.05.020}}
\seealso{
\code{\link{ternary.grid}}, \code{\link{image.default}}
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
