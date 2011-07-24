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
\seealso{
\code{\link{ternary.field}}
}
\examples{
## The function is currently defined as
function(grid, f, ...)
{
	f = match.fun(f)
	abc = grid[,letters[1:3]]
	g = function(i) f(abc[i,], ...)
	unlist(lapply(1:nrow(grid), g))
  }
}
\keyword{ manip }