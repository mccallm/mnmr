## hierachical clustering with coloring label for each vectors/covariates
## lab = number of data vectors (covariates)

hclust_color <- function(hclust, lab=hclust$label,
                         lab.col=rep(1,length(hclust$label)), hang=0.1, ... )
  {
    y <- rep(hclust$height,2)
    x <- as.numeric(hclust$merge)
    y <- y[which(x<0)]
    x <- x[which(x<0)]
    x <- abs(x)
    y <- y[order(x)]
    x <- x[order(x)]
    par(mgp = c(2, .8, 0))
    plot( hclust, labels=FALSE, hang=hang, 
          sub="", xlab=paste("Clustering method =", hc$method), ylab="Criterion", ... )
    text( x=x, y=y[hclust$order]-(max(hclust$height)*hang),
         labels=lab[hclust$order],
         col=lab.col[hclust$order],
         srt=90, adj=c(1,0.5), xpd=NA)
    ## set back to default plot margins
    par(mgp = c(3, 1, 0))
}
