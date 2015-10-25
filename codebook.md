Getting and Cleaning Data Course Project CodeBook
=================================================
This file describes the variables, the data, and any transformations or work performed to clean up the data.  
* This project is based on the Davide Anguita, Alessandro Ghio, Luca Oneto,
Xavier Parra and Jorge L. Reyes-Ortiz publication
"Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine". 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 
* The site where the data was obtained:  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones      
The data for the project:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

*Study Design
The source data was collected from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) to complete an assignment for a Coursera course named Getting and Cleaning Data instructed by Jeff Leek. The assignment involved working with the [data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and producing tidy data representation of the source data. Below is a list of the operations done to achieve the outputs.

1. Downloaded the data set
2. Unzipped the data set into my chosen working directory
3. Loaded test and training data sets into data frames
4. Loaded source variable names for test and training data sets
5. Loaded activity labels
6. Combined test and training data frames using rbind
7. Paired down the data frames to only include the mean and standard deviation variables
8. Replaced activity IDs with the activity labels for readability
9. Combined the data frames to produce one data frame containing the subjects, measurements and activities
10. Produced "merged_tidy_data.txt" with the combined data frame as the first expected output
11. Created another data set using the data.table library to easily group the tidy data by subject and activity
12. Then applied the mean and standard deviation calculations across the groups
13. Produced "mean_tidy_data.txt" as the second expected output

Please refer to [run_analysis.R] (https://github.com/gopalkrishan77/Getting-Cleaning_data_assignment/blob/master/run_analysis.R) for implementation details.

*Data points in files
- subjectId: 1 to 30 each representing a participant in the study
- activity: the activity that the subject was doing at the time of the measurement
- tBodyAcc-mean-X        
- tBodyAcc-mean-Y
- tBodyAcc-mean-Z
- tBodyAcc-std-X
- tBodyAcc-std-Y
- tBodyAcc-std-Z
- tGravityAcc-mean-X
- tGravityAcc-mean-Y
- tGravityAcc-mean-Z
- tGravityAcc-std-X
- tGravityAcc-std-Y
- tGravityAcc-std-Z
- tBodyAccJerk-mean-X
- tBodyAccJerk-mean-Y
- tBodyAccJerk-mean-Z
- tBodyAccJerk-std-X
- tBodyAccJerk-std-Y
- tBodyAccJerk-std-Z
- tBodyGyro-mean-X
- tBodyGyro-mean-Y
- tBodyGyro-mean-Z
- tBodyGyro-std-X
- tBodyGyro-std-Y
- tBodyGyro-std-Z
- tBodyGyroJerk-mean-X
- tBodyGyroJerk-mean-Y
- tBodyGyroJerk-mean-Z
- tBodyGyroJerk-std-X
- tBodyGyroJerk-std-Y
- tBodyGyroJerk-std-Z
- tBodyAccMag-mean
- tBodyAccMag-std
- tGravityAccMag-mean
- tGravityAccMag-std
- tBodyAccJerkMag-mean
- tBodyAccJerkMag-std
- tBodyGyroMag-mean
- tBodyGyroMag-std
- tBodyGyroJerkMag-mean
- tBodyGyroJerkMag-std
- fBodyAcc-mean-X
- fBodyAcc-mean-Y
- fBodyAcc-mean-Z
- fBodyAcc-std-X
- fBodyAcc-std-Y
- fBodyAcc-std-Z
- fBodyAccJerk-mean-X
- fBodyAccJerk-mean-Y
- fBodyAccJerk-mean-Z
- fBodyAccJerk-std-X
- fBodyAccJerk-std-Y
- fBodyAccJerk-std-Z
- fBodyGyro-mean-X
- fBodyGyro-mean-Y
- fBodyGyro-mean-Z
- fBodyGyro-std-X
- fBodyGyro-std-Y
- fBodyGyro-std-Z
- fBodyAccMag-mean
- fBodyAccMag-std
- fBodyBodyAccJerkMag-mean
- fBodyBodyAccJerkMag-std
- fBodyBodyGyroMag-mean
- fBodyBodyGyroMag-std
- fBodyBodyGyroJerkMag-mean
- fBodyBodyGyroJerkMag-std
 
© Gopal Krishan 2015 All Rights reserved.
