\name{multy_color_rug}
\alias{multy_color_rug}
\title{Color representatiom of the density}
\description{
  This function adds a color representation of the density on the x-axis.
}
\usage{
multi_color_rug <- function(den, col="YlOrRd", ticksize=0.03, side=1, lwd=0.5)
}
\arguments{
  \item{den}{density, this argument of a function may be created using function density(x, ...).}
  \item{col}{color pallet. Default is "YlOrRd".}
  \item{ticksize}{the length of tick marks as a fraction of the smaller of the width or height of the plotting region. Default is 0.3.} 
  \item{side}{an integer specifying which side of the plot the axis is to be drawn on. The values of side are: 1=below, 2=left, 3=above, 4=right. Default is 1.}
  \item{lwd}{line width. Default is 0.5.}
}
\value{
  This function adds a color representation of the density on the x-axis. Color scheme can be choosen from 3 types of palettes: sequential, diverging, and qualitative.
}
\author{Matthew N. McCall}
\examples{
  A useful example goes here.
  dat<-matrix(c(rnorm(100),
              rnorm(100,mean=2),
              rnorm(100, sd=2)), ncol=15) 
  den<-density(dat)
  plot(den)

  multi_color_rug(den)

  ## create age dependent data
  ages<-abs(runif(300)*dat)*25
  plot(y=ages, x=dat, pch=20)
}
\keyword{multy_color_rug}
