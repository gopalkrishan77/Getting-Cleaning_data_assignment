## This project is based on the Davide Anguita, Alessandro Ghio, Luca Oneto,
## Xavier Parra and Jorge L. Reyes-Ortiz publication
## "Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine". 
## International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 

 
## This script merges data from a number of .txt files and produces
## a tidy data set which may be used for further analysis. 

# load test data
subject_test = read.table("./test/subject_test.txt")
X_test = read.table("./test/X_test.txt")
Y_test = read.table("./test/Y_test.txt")

# load training data
subject_train = read.table("./train/subject_train.txt")
X_train = read.table("./train/X_train.txt")
Y_train = read.table("./train/Y_train.txt")

# load lookup information
features <- read.table("./features.txt", col.names=c("featureId", "featureLabel"))
activities <- read.table("./activity_labels.txt", col.names=c("activityId", "activityLabel"))
activities$activityLabel <- gsub("_", "", as.character(activities$activityLabel))
includedFeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel)

# merge test and training data and then name them
subject <- rbind(subject_test, subject_train)
names(subject) <- "subjectId"
X <- rbind(X_test, X_train)
X <- X[, includedFeatures]
names(X) <- gsub("\\(|\\)", "", features$featureLabel[includedFeatures])
Y <- rbind(Y_test, Y_train)
names(Y) = "activityId"
activity <- merge(Y, activities, by="activityId")$activityLabel

# merge data frames of different columns to form one data table
data <- cbind(subject, X, activity)
write.table(data, "merged_tidy_data.txt", row.name=FALSE)

# create a dataset grouped by subject and activity after applying standard deviation and average calculations
library(data.table)
dataDT <- data.table(data)
calculatedData<- dataDT[, lapply(.SD, mean), by=c("subjectId", "activity")]
write.table(calculatedData, "mean_tidy_data.txt", row.name=FALSE)
