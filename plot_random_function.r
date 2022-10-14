#############
## Plot_random_function.R
##
## Maddie Moore
##
##Purpose:
## a function that will generate a random,
## sample of normal values, plot a histogram
## with an overlaid mean on the plot
## and returns summary statistics about the 
## generated data.
##
## Inputs:
## numpts = number of points to generate, defaults to 50
## bins = number of breakpoints in the hist() function
##        defaults to 10
## mu= mean of normal distribution, defaults to 0
## sigma= standard deviation of normal distribution, defaults to 1
## seed= seed for the random number generator, defaults
## to NULL -- so random each time, but ser
## can override the value
##
## Outputs: a list is returned with the following elements
## Ranndom_sample = the generated random sample
## Mean_sample = the mean of the random sample
## Sd_sample = the standard deviation of the random sample
##

plotRandomNormals <- function(numpts=50, bins=10,
                              mu=0, sigma=1,
                              seed=NULL){ 
  set.seed(seed)
  rand_sample <- rnorm(numpts, mean = mu, sd = sigma)
  hist(rand_sample, breaks=bins+1) 
  abline(v = mean(rand_sample), col="blue" )
  list(Random_sample = rand_sample,
       Mean_sample = mean(rand_sample), 
       SD_sample = sd(rand_sample) )
}



##Default values
plotRandomNormals()

##User specified number of points
plotRandomNormals(numpts = 30)

plotRandomNormals(numpts=1000, bins=200)

plotRandomNormals(seed=1)
