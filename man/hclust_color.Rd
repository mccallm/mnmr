\name{hclust_color.R}
\alias{hclust_color}
\title{
Function to do hierarchical clustering (while applying colors to the clustering labels)
}
\description{
R package that takes in a distribution of values in numeric matrix which calls and performs hierarchical clustering for these values and produces a clustering chart. While also assigning colors to each of the numerical values represented in the clustering. Same colors should indicate similar groupings and therefore better indicate identical groupings or potential abnormalities. 
}

\usage{
function(hclust, lab=hclust$labels,lab.col=rep(1,length(hclust$labels)), hang=0.1, ... ))
}

\arguments{
  \item{hclust}{Hierarchical clustering object based in differences}
  \item{lab}{Labes to be used at each tree branch for the clustered data points}
  \item{lab.col}{Colors to be represented in plot}
  \item{hang}{Length of tree branch for the plot with a default of 0.1}
}

\value{
  Returned is a plot of the hierarchical clustering of the numerical matrix given with colors.
}

\author{
Matthew N. McCall <mccallm@gmail.com>
}

\examples{
## make some test data
dat <- matrix(c(rnorm(100), rnorm(100,mean=2), rnorm(100,sd=2)), ncol=15)

##compute pairwise distances
dd <- dist(t(dat))

##perform hierarchical clustering
hc <- hclust(dd, method="complete")

plot(hc)

##Don't have labels. Create them.
hc$labels <- 1:15

##try the color function
hclust_color(hc, lab.col = rep(c("green","blue","red"),each=5))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{hclust}
