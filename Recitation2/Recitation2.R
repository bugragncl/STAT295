#Check the current working directory
getwd()
# Set seed for reproducibility
set.seed(16)
M <- matrix(rbinom(72, size = 10, prob = 0.5),  nrow = 12, ncol = 6)
rownames(M) <- paste0("Row.", 1:nrow(M))
colnames(M) <- paste0("Col.", 1:ncol(M))

L <- matrix(rnorm(72),  nrow = 12, ncol = 6)
rownames(L) <- paste0("Row.", 1:nrow(L))
colnames(L) <- paste0("Col.", 1:ncol(L))

part3 <- list(M,L)
part3

write.csv(part3, file = "part3.csv")

data <- read.csv("https://people.sc.fsu.edu/~jburkardt/data/csv/biostats.csv")
#change the column names
colnames(data) <- c("Name", "Sex", "Age", "Height", "Weight")
#plot the data
plot(data$Height, data$Weight, col = "lightblue", lwd=3,
     xlab = "Height", ylab = "Weight",
     main = "Relationship between Height and Weight")

#Print as pdf file       
dev.print(pdf, "part_vi.pdf")

#To choose the same babynames for everyone
set.seed(16)
#Reach to data set
library(babynames)
#take sample since the babynames large data set.
baby_10 <- babynames[sample(nrow(babynames), size = 10, replace = FALSE),]
#Plot
barplot(baby_10$n, names.arg = baby_10$name, col = ifelse(baby_10$sex == "F", "pink", "lightblue"),main = "Number of Names by Gender", xlab = "Name Count", ylab = "Proportion",
        cex.names = 0.8, beside = TRUE)
#Add a legend
legend("topright", legend = unique(baby_10$sex), fill = c("pink", "lightblue"), title = "Gender")

#Print the plot
dev.print(pdf, "part_vii.pdf")

#Create a four different variables.
var1 <- seq(10, 60, 6)
var2 <- list(1:20, letters[1:20])
var3 <- matrix(rnorm(24), nrow = 12)
var4 <- matrix(rep(c(4,6,4),3), nrow = 3, byrow = TRUE)

#save a file
save(var1, var2, var3,var4, file = "myvar.RData")

#to remove all objects
#rm(list = ls())

#load the data file
load("myvar.RData")
#lastly check the objects in the global environment.
ls()