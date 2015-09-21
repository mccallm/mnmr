## make some text data
dat <- matrix(c(rnorm(100),
                rnorm(100,mean=2),
                rnorm(100,sd=2)),ncol=15)
## compute pairwise distances
dd <- dist(t(dat))

## perform hierarchical clustering
hc <-hclust(dd)
plot(hc)

## try the color function
hc$labels <- 1:15
hclust_color(hc,
             lab.col=rep(c("green","blue","red"),each=5))


####################
####################

## work with the density function
den <- density(dat)
plot(den)

## try multi_color_rug function
multi_color_rug(den)

## try a sparser example
dat2 <- sample(dat,size=15)
den <- density(dat2)
plot(den)
multi_color_rug(den)


## create some other data -- let's say ages
ages <- abs(runif(300)*dat)*25
plot(y=ages,x=dat,pch=20)
multi_color_rug(den)
