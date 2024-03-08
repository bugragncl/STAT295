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




# Function using for loop
sum_of_squares_loop <- function(x) {
  sum_squares <- 0
  for (i in 1:length(x)) {
    sum_squares <- sum_squares + x[i]^2
  }
  return(sum_squares)
}

# Function without using for loop
sum_of_squares_no_loop <- function(x) {
  sum_squares <- sum(x^2)
  return(sum_squares)
}

# Generate a vector for testing
large_vector <- rnorm(10^6)

# Test the two different function
time_loop <- system.time(sum_of_squares_loop(large_vector))
time_no_loop <- system.time(sum_of_squares_no_loop(large_vector))

#results
cat("Execution time using for loop:", time_loop[3], "seconds\n")

cat("Execution time without using a loop:", time_no_loop[3], "seconds\n")


data <- read.csv("https://users.ssc.wisc.edu/~hemken/Rworkshops/read/classm.csv")

lapply <- system.time({
  fill_na_with_mean <- function(fill_column) {
    mean_val <- mean(fill_column, na.rm = TRUE)
    fill_column[is.na(fill_column)] <- mean_val
    return(fill_column)
  }
  #using lapply
  lapply(data, fill_na_with_mean)
})
##
loop <- system.time({
  fill_na_with_mean <- function(fill_column) {
    mean_val <- mean(fill_column, na.rm = TRUE)
    fill_column[is.na(fill_column)] <- mean_val
    return(fill_column)
  }
  
  #using loops
  for (col in names(data)) {
    data[[col]] <- fill_na_with_mean(data[[col]])
  }
})
cat("Execution time using lappy:", lapply[3], "seconds\n")

cat("Execution time using a loop:", loop[3], "seconds\n")



daily_activity <- function() {
  activities <- c("Waking up", "Breakfast", "Work", "Lunch break", "Afternoon work", "Dinner", "Relaxation", "Bedtime")
  durations <- c(5, 10, 20, 5, 10, 5, 10, 5)  # Duration of each activity as seconds
  cat("Simulating daily activities...\n")
  
  for (i in seq_along(activities)) {
    cat("Activities:", activities[i], "...\n")
    Sys.sleep(durations[i])
  }
  cat("Day complete. Time to rest.\n")
}
daily_activity()


library(magrittr)
# Apply operations using pipe operator
seq(-0, 100, 4) |> 
  divide_by(2) |> 
  add(10) |> 
  log() |> 
  round(digits = 2) |> 
  head(10)

matrix_q3 <- matrix(c(rnorm(4),rnorm(4),rnorm(4), rnorm(4)), nrow=4, byrow=TRUE)
matrix_q3 %>% solve()  %>%  '%*%' (matrix_q3) %>% round(10)

data <- read.csv("https://users.ssc.wisc.edu/~hemken/Rworkshops/read/classm.csv")
data %>%
  subset(Height > 56.5) %>% 
  aggregate(Height ~ Sex, ., mean) 

female <- subset(data, Sex == "F") %>% 
  summarise(Mean_Height = mean(Height),
            Median_Height = median(Height),
            Min_Height = min(Height),
            Max_Height = max(Height)) 

male <- subset(data, Sex == "M") %>% na.omit() %>% #there are some NA values in male
  summarise(Mean_Height = mean(Height),
            Median_Height = median(Height),
            Min_Height = min(Height),
            Max_Height = max(Height))

female$Sex <- "F"
male$Sex <- "M"
results <- bind_rows(female, male)
results
library(dplyr)
student <- read.csv("https://raw.githubusercontent.com/shriyaa01/Student-Result-Analysis/main/Expanded_data_with_more_features.csv", sep = ",")
head(student)

install.packages("dplyr")
library(dplyr)
new_student <- student |> select(PracticeSport, MathScore, ReadingScore, IsFirstChild,  LunchType)
new_student |> head(10)

q4_c <- new_student |> na.omit()
#Check NA values
sum(is.na(q4_c))

#Check the Structure
str(q4_c)