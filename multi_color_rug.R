## multicolor rug function
multi_color_rug <- function(den, col="YlOrRd", ticksize=0.03, side=1, lwd=4) {
  
  x <- den$x
  y <- den$y
  n <- length(y)
  ind <- rank(y)

#Printing Coordinates for Position of Max Density  
max4y = max(den$y)  # Find the maximum y value
max4x = den$x[match(max(den$y),den$y)] # Find corresponding maximum y value's x coordinate
print(paste0("Max Density Coordinates: ", max4x,", ", max4y)) #Print Density Max

#Assigning functions that interpolate a set of given colors to create new color palettes and color ramps, functions
#that map the interval [0,1]
  rampcol <- colorRampPalette(brewer.pal(9, col))(n)
  

#lwd  is line widths for the axis line  
  for(i in 1:n){
    axis(side=side, at=x[i], labels=FALSE, lwd=lwd, col=rampcol[ind[i]],
         tck=ticksize)
  }
  

}
