\name{hclust_color}
\alias{hclust_color}
\title{Plot hirarchical clustering with color label}
\description{
  This function takes the hclust object and plot the hierachical distance plot 
  for each data vector/feature.
}
\usage{
hclust_color (object, lab=object$label, lab.col=rep(1,length(object$label)), hang=0.1, ... )
}
\arguments{
  \item{object}{a class of hclust object that contains "merge", "height", "order", "labels", "method", "call","dist.method", "label""}
  \item{lab}{a numerical sequecne has a length of number features/vectors}
}
\value{
  A plot of hierachical clustering from distance matrix with labeling data vectors/features with different colors.
}
\author{Matthew N. McCall}
\examples{
  data(hclustData)
  dd <- dist(t(hclustData))
  hc <- hclust(dd, method = "single")
  hclust_color(hc, lab=hc$label, lab.col=rep(c("green", "blue", "red"),3))
}
\keyword{hclust}

