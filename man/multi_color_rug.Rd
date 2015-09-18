\name{multi_color_rug}
\alias{multi_color_rug}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
adding the multiple density color on the x axis 
}
\description{
This function takes the density object and adds a density plot to an existing plot on the x axis. The deeper color shows the high density.
}
\usage{
multi_color_rug (object01, col="YlOrRd", ticksize=0.03, side=1, lwd=0.5) 
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object01}{a object of density
%%     ~~Describe \code{x} here~~
}
  \item{col}{default = "Yl0rRD"}
  \item{ticksize}{default =.03}
  \item{side}{default = 1}
  \item{lwd} {default =.5}
}

\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
A plot with density distribution on the x axis (one dimensional heatmap) is added to existing plot
}
\author{Matthew N. McCall}
\examples{
  data(hclustData)
  den <- density(hclustData)
  plot(den)
  multi_color_rug (den)
  
  age <- runif(300)*105
  plot(y=ages, x=dat, pch=20)
  mult_color_rug(den)
}
\keyword{density}
