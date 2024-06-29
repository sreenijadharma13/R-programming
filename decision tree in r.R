#INSTALL PACAKAGES
install.packages("randomForest")
library(randomForest)

#use this line
data1<- Cerealdata_2024

#set up attributes in the data with columnnames and set data as factors
data1$age <- as.factor(data1$age)
data1$gender <- as.factor(data1$gender)
data1$marital <- as.factor(data1$marital)
data1$exercise <- as.factor(data1$exercise)
data1$breakfast <- as.factor(data1$breakfast)
head(data1)
str(data1)
summary(data1)

#split into trainng and validation
#trainingg set: validation set=70: 30 (30)
set.seed(100)
train <- sample(nrow(data1), 0.7*nrow(data1), replace = FALSE)
trainset <- data1[train,]
validset <- data1[-train,]
summary(trainset)
summary(validset)

#create a random forest model
model1 <- randomForest(breakfast ~ . , data = trainset, importance= TRUE)
model1

#predicting on train set
predtrain <- predict(model1, trainset, type = "class")
#checking classification on vadilation set
table(predtrain, trainset$breakfast)

#predicting on validation set
predvalid <- predict(model1, validset, type = "class")
#checking classification on vadilation set
table(predvalid, validset$breakfast)
mean(predvalid== validset$breakfast)

#to check importance validation
importance(model1)
varImpPlot(model1)

#Build the decision tree model
model <- rpart(breakfast ~ age + gender + marital + exercise, data = trainset, method = "class")

#Print the first few splits of the tree (optional)
print(model$breakf [1:5, ])

# Evaluate model performance on testing set
predictions <- predict(model, validset, type = "class")

# Confusion matrix
confusion_matrix <- table(validset$breakfast, predictions)
print(confusion_matrix)

# Accuracy
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
cat("Overall Accuracy: ", accuracy, "\n")

