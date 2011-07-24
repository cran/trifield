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
\seealso{
\code{\link{ternary.grid}}, \code{\link{image.default}}
}
\examples{
## The function is currently defined as
ternary.field = function(grid, vals, dim.out = NULL)
{
with(grid,
{
if ( is.null(dim.out) ) dim.out = c(max(xi), max(yi))
q = array(NA, dim = dim.out)
q[cbind(xi, yi)] = vals
x.out = seq(0, 2 / sqrt(3), length = dim.out[1])
y.out = seq(0, 1, length = dim.out[2])
res = list(x = x.out, y = y.out, z = q)
class(res) = "trifield"
return(res)
})
}
}
\keyword{ manip }
