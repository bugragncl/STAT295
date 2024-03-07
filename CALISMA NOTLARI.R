myarray <- array(c(1:12), dim = c(2, 2, 3))
myarray
## , , 1
##
## [,1] [,2]
## [1,] 1 3
## [2,] 2 4
##
## , , 2
##
## [,1] [,2]
## [1,] 5 7
## [2,] 6 8
##
## , , 3
##
## [,1] [,2]
## [1,] 9 11
## [2,] 10 12

#Time and date
#Computer time 
now <- Sys.time()
now
## [1] "2024-02-19 11:09:22 +03"
class(now)
## [1] "POSIXct" "POSIXt"
#POSIXct shows the seconds between now and 1 Jan 1970 (in the Universal Time Coordinated (UTC) zone).
unclass(now)
## [1] 1708330162
#What was the date and time 1000000 seconds ago?
  mil <- 1000000
now - mil
## [1] "2024-02-07 21:22:42 +03"

data(iris)
?iris
head(iris)
## Sepal.Length Sepal.Width Petal.Length Petal.Width Species
## 1 5.1 3.5 1.4 0.2 setosa
## 2 4.9 3.0 1.4 0.2 setosa
## 3 4.7 3.2 1.3 0.2 setosa
## 4 4.6 3.1 1.5 0.2 setosa
## 5 5.0 3.6 1.4 0.2 setosa
## 6 5.4 3.9 1.7 0.4 setosa
class(iris)
## [1] "data.frame"
class(iris$Sepal.Length)
## [1] "numeric"
class(iris$Species)
## [1] "factor"
str(iris)
## 'data.frame': 150 obs. of 5 variables:
## $ Sepal.Length: num 5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
## $ Sepal.Width : num 3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
## $ Petal.Length: num 1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
## $ Petal.Width : num 0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
## $ Species : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
summary(iris)
## Sepal.Length Sepal.Width Petal.Length Petal.Width
## Min. :4.300 Min. :2.000 Min. :1.000 Min. :0.100
## 1st Qu.:5.100 1st Qu.:2.800 1st Qu.:1.600 1st Qu.:0.300
## Median :5.800 Median :3.000 Median :4.350 Median :1.300
## Mean :5.843 Mean :3.057 Mean :3.758 Mean :1.199
## 3rd Qu.:6.400 3rd Qu.:3.300 3rd Qu.:5.100 3rd Qu.:1.800
## Max. :7.900 Max. :4.400 Max. :6.900 Max. :2.500
## Species
## setosa :50
## versicolor:50
## virginica :50
##
##
##
iris$Sepal.Length

#Select the first row:
  iris[1,]
## Sepal.Length Sepal.Width Petal.Length Petal.Width Species
## 1 5.1 3.5 1.4 0.2 setosa
#Select the first column:
  iris[,2]
## [1] 3.5 3.0 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 3.7 3.4 3.0 3.0 4.0 4.4 3.9 3.5
## [19] 3.8 3.8 3.4 3.7 3.6 3.3 3.4 3.0 3.4 3.5 3.4 3.2 3.1 3.4 4.1 4.2 3.1 3.2
## [37] 3.5 3.6 3.0 3.4 3.5 2.3 3.2 3.5 3.8 3.0 3.8 3.2 3.7 3.3 3.2 3.2 3.1 2.3
## [55] 2.8 2.8 3.3 2.4 2.9 2.7 2.0 3.0 2.2 2.9 2.9 3.1 3.0 2.7 2.2 2.5 3.2 2.8
## [73] 2.5 2.8 2.9 3.0 2.8 3.0 2.9 2.6 2.4 2.4 2.7 2.7 3.0 3.4 3.1 2.3 3.0 2.5
## [91] 2.6 3.0 2.6 2.3 2.7 3.0 2.9 2.9 2.5 2.8 3.3 2.7 3.0 2.9 3.0 3.0 2.5 2.9
## [109] 2.5 3.6 3.2 2.7 3.0 2.5 2.8 3.2 3.0 3.8 2.6 2.2 3.2 2.8 2.8 2.7 3.3 3.2
## [127] 2.8 3.0 2.8 3.0 2.8 3.8 2.8 2.8 2.6 3.0 3.4 3.1 3.0 3.1 3.1 3.1 2.7 3.2
## [145] 3.3 3.0 2.5 3.0 3.4 3.0
#Select the column by name:
  iris[,"Species"]

  table(iris$Species)
  ##
  ## setosa versicolor virginica
  ## 50 50 5
  
  LogicIndex <- iris[, "Petal.Length"] > 5.5
  LogicIndex
  ## [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  ## [13] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  ## [25] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  ## [37] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  ## [49] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  ## [61] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  ## [73] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  ## [85] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  ## [97] FALSE FALSE FALSE FALSE TRUE FALSE TRUE TRUE TRUE TRUE FALSE TRUE
  ## [109] TRUE TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE TRUE TRUE FALSE
  ## [121] TRUE FALSE TRUE FALSE TRUE TRUE FALSE FALSE TRUE TRUE TRUE TRUE
  ## [133] TRUE FALSE TRUE TRUE TRUE FALSE FALSE FALSE TRUE FALSE FALSE TRUE
  ## [145] TRUE FALSE FALSE FALSE FALSE FALSE
  iris[LogicIndex, ]
  
  #Let’s say we want to find mean and standard deviation at the same time:
    MeanAndStd <- function(x) {
      c(mean=mean(x), std=sd(x))
    }
  MeanAndStd(iris$Sepal.Length)
  ## mean std
  ## 5.8433333 0.8280661
  Stats <- aggregate(Sepal.Length ~ Species, data=iris,
                     FUN=MeanAndStd)
  Stats
  ## Species Sepal.Length.mean Sepal.Length.std
  ## 1 setosa 5.0060000 0.3524897
  ## 2 versicolor 5.9360000 0.5161711
  ## 3 virginica 6.5880000 0.6358796
  
  plot(iris$Sepal.Length,
       col=as.numeric(iris$Species),
       ylab="Sepal Length")
  legend('topleft', legend = levels(iris$Species), pch = 1:3)
  
  # Attempting to multiply two objects in different lengths:
  vec1 <- c(1, 2, 3)
  vec2 <- c(1, 2)
  vec1 * vec2
  ## Warning in vec1 * vec2: longer object length is not a multiple of shorter
  ## object length
  ## [1] 1 4 3
 # Lets generate your own function with warning and error separately to see the difference between an error and
 # a warning:
    warn_test <- function(x){
      if(x<=0){
        warning("WATCH OUT! 'x' is less than or equal to 0. Set it to 1.")
        x <- 1 }
      return(2/x)
    }
  warn_test(0)
  warn_test(10)
  error_test <- function(x){
    if(x<=0){
      stop("'x' is less than or equal to 0... TERMINATE")
    }
    return(2/x)
  }
  error_test(0)
  error_test(10)
  
  myfibrec <- function(n){
    if(n<0){
      warning("Assuming you meant 'n' to be positive -- doing that instead")
      n <- n*-1
    } else if(n==0){
      stop("'n' is uninterpretable at 0")
    }
    if(n==1||n==2){
      return(1)
    } else {
      return(myfibrec(n-1)+myfibrec(n-2))
    } }
  
  myfibrec(0)
  myfibrec(10)
  myfibrec(-10)
  
 # But watch what happens when you pass that function call as the first argument to try:
    try(myfibrec(0))
  ## Error in myfibrec(0) : 'n' is uninterpretable at 0
  try(myfibrec(0),silent=TRUE)
  attempt1 <- try(myfibrec(0),silent=TRUE)
  
  #Meanwhile, if you pass a function to try and it doesn’t throw an error, then try has no effect, and you
  #simply get the normal return value.
  attempt2 <- try(myfibrec(6),silent=TRUE)
  attempt2
  
  myfibrecvector <- function(nvec){
    nterms <- length(nvec)
    result <- rep(0,nterms)
    for(i in 1:nterms){
      result[i] <- myfibrec(nvec[i])
    }
    return(result)
  }
  
  myfibrecvectorTRY <- function(nvec){
    nterms <- length(nvec)
    result <- rep(0,nterms)
    for(i in 1:nterms){
      attempt <- try(myfibrec(nvec[i]),silent=T)
      if(class(attempt)=="try-error"){
        result[i] <- NA
      } else {
        result[i] <- attempt
      }
    }
    return(result)
  }
  baz <- myfibrecvectorTRY(nvec=c(3,2,7,0,9,13))
  baz
  
  attempt4 <- suppressWarnings(myfibrec(-3))
  attempt4
  
  
  #You may make R pause for a specified amount of time, in seconds, before continuing:
    Sys.sleep(3)
 # When you run this code, R will pause for three seconds before you can continue using the console.
 # Consider the following:
    sleep_test <- function(n){
      result <- 0
      for(i in 1:n){
        result <- result + 1
        Sys.sleep(0.5)
      }
      return(result)
    }
  sleep_test(8)
  
  prog_test <- function(n){
    result <- 0
    progbar <- txtProgressBar(min=0,max=n,style=1,char="=")
    for(i in 1:n){
      result <- result + 1
      Sys.sleep(0.5)
      setTxtProgressBar(progbar,value=i)
    }
    close(progbar)
    return(result)
  }
  prog_test(9)
  
  
  #If you want to know how long a computation takes to complete, you can use the Sys.time command.
  Sys.time()
  ## [1] "2024-02-26 10:15:22 +03"
  #Highlight all four lines and execute them in the console:
    t1 <- Sys.time()
  Sys.sleep(3)
  t2 <- Sys.time()
  t2-t1
  ## Time difference of 3.007326 secs