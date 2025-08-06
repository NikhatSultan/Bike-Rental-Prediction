
# Install packages
install.packages("readxl")
install.packages("ggplot2")
install.packages("caret")
install.packages("randomForest")

# Load libraries
library(readxl)
library(ggplot2)
library(caret)
library(randomForest)

# Load data
bike_data <- read_excel("1657875746_day.xlsx")

# Missing Value Analysis
colSums(is.na(bike_data))

# Attributes distributions and trends
# Plot monthly distribution of the total number of bikes rented
ggplot(bike_data, aes(x = mnth, y = cnt)) +
  geom_boxplot() + labs(title = "Monthly Distribution of Total Bike Rentals")

# Plot yearly distribution of the total number of bikes rented
ggplot(bike_data, aes(x = yr, y = cnt)) +
  geom_boxplot() + labs(title = "Yearly Distribution of Total Bike Rentals")

# Plot boxplot for outliers analysis
boxplot(bike_data$cnt, main = "Outlier Analysis of Total Rentals")

# Convert categorical variables to factors
bike_data$season <- as.factor(bike_data$season)
bike_data$yr <- as.factor(bike_data$yr)
bike_data$mnth <- as.factor(bike_data$mnth)
bike_data$holiday <- as.factor(bike_data$holiday)
bike_data$weekday <- as.factor(bike_data$weekday)
bike_data$workingday <- as.factor(bike_data$workingday)
bike_data$weathersit <- as.factor(bike_data$weathersit)

# Split the dataset into train and test dataset
set.seed(123)
index <- createDataPartition(bike_data$cnt, p = 0.8, list = FALSE)
train <- bike_data[index, ]
test <- bike_data[-index, ]

# Create a model using the random forest algorithm
model_rf <- randomForest(cnt ~ . - dteday - instant, data = train, ntree = 100)

# Predict on test set
pred <- predict(model_rf, newdata = test)

# Evaluate performance
MAE <- mean(abs(pred - test$cnt))
RMSE <- sqrt(mean((pred - test$cnt)^2))

# Print results
print(MAE)
print(RMSE)
