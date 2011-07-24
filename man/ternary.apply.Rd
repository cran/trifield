\name{ternary.apply}
\alias{ternary.apply}
\title{
Apply a function over a ternary grid
}
\description{
Given 1) a ternary grid and 2) a function that takes a ternary value as its first argument, this function returns a vector formed by applying the function to each point in the grid.
}
\usage{
ternary.apply(grid, f, ...)
}
\arguments{
  \item{grid}{
A data frame with columns \code{a}, \code{b} and \code{c} specifying points in a ternary field
}
  \item{f}{
A function that accepts a length 3 vector as its first argument
}
  \item{\dots}{
Additional arguments passed to \code{f}
}
}
\details{
Results will be concatenated into a vector; it is most useful for scalar-valued functions.
}
\value{
A vector of results
}
\author{
Tim Keitt <tkeitt@gmail.com>
}
\references{\url{http://dx.doi.org/10.1016/j.ecolmodel.2012.05.020}}
\seealso{
\code{\link{ternary.field}}
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
