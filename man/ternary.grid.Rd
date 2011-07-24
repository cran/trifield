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
\seealso{
\code{link{ternary.apply}}, \code{link{ternary.grid}}
}
\examples{
## The function is currently defined as
function(grid.size)
{
	lx = 2 / sqrt(3)
	nx = trunc(lx * grid.size)
	ny = grid.size
	x = seq(0, lx, length = nx)
	y = seq(0, 1, length = ny)
	xy = as.matrix(expand.grid(x = x, y = y))
	xyi = as.matrix(expand.grid(x = 1:nx, y = 1:ny))
	abc = xy2abc(xy)
	i = rowSums(abc < 0) == FALSE
	abc = abc[i,]
	xy = xy[i,]	
	xyi = xyi[i,]
	res = data.frame(xy, xyi, abc)
	names(res) = c('x', 'y', 'xi', 'yi', 'a', 'b', 'c')
	res
  }
}
\keyword{ manip }
