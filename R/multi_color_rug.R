## multicolor rug function
multi_color_rug <- function(den, col="YlOrRd", ticksize=0.03, side=1, lwd=0.5)
{
    x <- den$x
    y <- den$y
    n <- length(y)
    ind <- rank(y)
    rampcol <- colorRampPalette(brewer.pal(9, col))(n)
    for(i in 1:n){
      axis(side=side, at=x[i], labels=FALSE, lwd=lwd, col=rampcol[ind[i]],
           tck=ticksize)
    }
}

## work with the density function
den <- density(dat)
plot(den)

## try multi_color_rug function
## DESCRIPTION: "Imports: RColorBrewer"
library(RColorBrewer)
multi_color_rug(den)

## try a sparser example
# dat2 <- sample(dat, size=15)
## args(sample)
# den <- density(dat2)
# plot(den)

## try multi_color_rug function
# multi_color_rug(den)

## create some other data --- let's say ages
ages <- abs(runif(300)*dat)*25

hist(ages)
plot(y=ages, x=dat, pch=20, col="red")
multi_color_rug(den)
