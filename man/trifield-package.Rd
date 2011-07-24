\name{trifield-package}
\alias{trifield-package}
\alias{trifield}
\docType{package}
\title{
Assists in creating and plotting ternary fields
}
\description{
The package can project between unity-summed ternary vectors and binary vectors. An "apply" function is provided to apply a function over a ternary field, as is a function for constructing ternary grids. Some rudimentary plotting functions are also provided. This is quick and dirty research code I needed in the course of writing a manuscript. Take it as such.
}
\details{
\tabular{ll}{
Package: \tab trifield\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-07-24\cr
License: \tab GPL 2\cr
LazyLoad: \tab yes\cr
}
Some simple routines, mainly aimed at making ternary fields and contour plots.
}
\author{
Tim Keitt <tkeitt@gmail.com>

Maintainer: Tim Keitt <tkeitt@gmail.com>
}
\references{\url{http://dx.doi.org/10.1016/j.ecolmodel.2012.05.020}}
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
\keyword{ package }
