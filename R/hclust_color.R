hclust_color <- function(hclust, lab=hclust$labels,
                         lab.col=rep(1,length(hclust$labels)), hang=0.1, ... )
  {
    y <- rep(hclust$height,2)
    x <- as.numeric(hclust$merge)
    y <- y[which(x<0)]
    x <- x[which(x<0)]
    x <- abs(x)
    y <- y[order(x)]
    x <- x[order(x)]
    plot( hclust, labels=FALSE, hang=hang, ... )
    text( x=x, y=y[hclust$order]-(max(hclust$height)*hang),
         labels=lab[hclust$order],
         col=lab.col[hclust$order],
         srt=90, adj=c(1,0.5), xpd=NA)
}

## make some test data
dat <- matrix(c(rnorm(100),
                rnorm(100, mean=2),
                rnorm(100, sd=2)), ncol=15)

## compute pairwise distance
dd <- dist(t(dat))

## perform hierarchical clustering
hc <- hclust(dd)
plot(hc)

hc <- hclust(dd, method="single")
plot(hc)

hc <- hclust(dd, method="complete")
plot(hc)

## try the color function
hc$labels <- 1:15
hclust_color(hc,
             lab.col=rep(c("green", "blue", "red"), each=5))
