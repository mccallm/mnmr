## multicolor rug function
multi_color_rug <- function(den, col="YlOrRd", ticksize=0.03, side=1, lwd=0.5) 
{
    if (side%%1!=0) {stop("Input value for side is not an integer.")}
    if(0 >= side | side > 4) {stop("Input value for side must be an integer between 1 and 4.")}
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