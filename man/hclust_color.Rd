\name{hclust_color}
\alias{hclust_color}
\title{Coloring by group for the hierarchical clustering}
\description{
  This function adds color to the labels on the plot for hierarchical clustering. 
}
\usage{
hclust_color <- function(hclust, lab=hclust$labels,
                         lab.col=rep(1,length(hclust$labels)), hang=0.1, ... )
}
\arguments{
  \item{hclust}{a hierarchical clustering object on a set of dissimilarities.}
  \item{lab}{labels for the clustered data points.}
  \item{lab.col}{desired colors for labels.} 
  \item{hang}{the length of the tree branch on the plot. Default value 0.1.}
}
\value{
  The function adds coloring for the labels on the plot for the hierarchical clustering object hlust based on provided labels and colors. 
}
\author{Matthew N. McCall}
\examples{
  ## create dataset
  n=20
  dat<-matrix(c(rnorm(100),
              rnorm(100,mean=2),
              rnorm(100, sd=2)), ncol=n)
  ## compute pairwise distances
  dd<-dist(t(dat))
  ## perform hierarchical clustering
  hc<-hclust(dd, method="single")
  ## plo results
  plot(hc)
  ## cleate labels and colors
  hc$labels<-1:n
  lab.col=rep(c("green","blue","red"),each=5)
  hclust_color(hc, lab.col=lab.col)
}
\keyword{hclust_color}

