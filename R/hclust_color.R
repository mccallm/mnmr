hclust_color <- function(hclust, lab=hclust$labels,
                         lab.col=rep(1,length(hclust$labels)), hang=0.1, ... )
  {

#Replicates values in hclust with length of 2 for variabe y
    y <- rep(hclust$height,2)
    
#Converts hclust column for merge into numeric values
    x <- as.numeric(hclust$merge)
    
#Gets rid of all positive objects for height and merge columns. Makes merge objects positive.
    y <- y[which(x<0)]
    x <- x[which(x<0)]
    x <- abs(x)
    
#Orders x,y in ascending order
    y <- y[order(x)] #Orders y values in ascending order according to x
    x <- x[order(x)] #Orders x values in ascending order

#Executes a plot of hierarchical clustering (y-axis is Measure of Closeness of Values)
plot( hclust, labels=FALSE, hang=hang, sub="", xlab=paste0(hc$method,"
      Clustering Method", sep=""), ylab="Height (Measure of Closeness)", ... )
  text( x=x, y=y[hclust$order]-(max(hclust$height)*hang),
        labels=lab[hclust$order],
        col=lab.col[hclust$order],
        srt=90, adj=c(1,0.5), xpd=NA)
}
