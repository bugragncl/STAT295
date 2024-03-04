1:100
2.35:50
1::100
mydice <- 1:6

mydice * mydice
mydice %*% mydice
mydice %o% mydice
dim(mydice) <- c(1, 2, 3)
m <- matrix(mydice, nrow = 2)
myarray <- array(c(1:12), dim = c(2, 2, 3))
now <- Sys.time()
class(now)
unclass(now)
mil <- 1000000
now - mil
data(iris)
?iris
head(iris)
summary(iris)
LogicIndex <- iris[, "Petal.Length"] > 5.5
MeanAndStd <- function(x) {
  c(mean=mean(x), std=sd(x))
}
MeanAndStd(iris$Sepal.Length)
Stats <- aggregate(Sepal.Length ~ Species, data=iris,
                   FUN=MeanAndStd)
Stats
plot(iris$Sepal.Length,
     col=as.numeric(iris$Species),
     ylab="Sepal Length")
legend('topleft', legend = levels(iris$Species), pch = 1:3)
