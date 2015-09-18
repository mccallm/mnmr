\name{multi_color_rug}
\alias{multi_color_rug}
\title{
Multi Color Density Rug Function
}
\description{
After obtaining a two variable data set matrix of density values, the package prints a type of heatmap for the variables graphed. When plotted, the highest concentration of data points will have a darker shade of coloring, indicating a higher density/concentration of data at a particular coordinate.
}
\usage{
function(den, col="YlOrRd", ticksize=0.03, side=1, lwd=0.5)
}
%- maybe also 'usage' for other objects documented here.
  \item{den}{Are a matrix of density values being called}
  \item{col}{The colors being used}
  \item{ticksize}{Height of the heatmap from the base of the graph}
  \item{side}{Indicates which side the plot the heatmap will be on (1=Bottom)}
  \item{lwd}{How wide each column of color will be}
  
}

\value{
A value really will not be returned, but a heatmap in the form of a 'rug' will be placed beneath the plot of data points, showing a varying amount of intensity through colors of the location of data points. 
}

\author{
Matthew N. McCall <mccallm@gmail.com>
}

\examples{
dat <- matrix(c(rnorm(100), rnorm(100,mean=2), rnorm(100,sd=2)), ncol=15)
den <- density(dat)
plot(den)
multi_color_rug(den)
}

\keyword{density}
\keyword{den}
