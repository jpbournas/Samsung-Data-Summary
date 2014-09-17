Samsung-Data-Summary
====================

Coursera Assignment - Samsung Data


This directory contains the R script for the Getting and Cleaning data project.The script run_analysis.R should be saved in the same
folder containing the data collected for Human Activity Recognition Using Smartphones. The data set can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script follwos the steps below to merge, format, summarize the data and finally export a csv file containing the table required for part 1 of the project:

Step 1 - the data files for test and training are opened and merged into one file.
Step 2 - the column names are extracted from features.txt and a selection applied to keep only the column containing 'mean' and 'std. 
Step 3 - using the list of meand and std columns, the relevant columns are extracted from the main file
Step 4 - the files containing the activity labels are opened and merged. 
Step 5 - the files containing the name of the activities if opened and matched against the previous list of activities
Step 6 - The column names are added to the file.
Step 7 - the files containing the sujectlabels are opened and merged with the main data set 
Step 8 - the average is computed for each activity and for each subject
Step 9 - the final data set is exported in csv file



Code Book
ActivityName	Type Character
Subject	Type Numeric
tBodyAcc-mean()-X	Type Numeric
tBodyAcc-mean()-Y	Type Numeric
tBodyAcc-mean()-Z	Type Numeric
tBodyAcc-std()-X	Type Numeric
tBodyAcc-std()-Y	Type Numeric
tBodyAcc-std()-Z	Type Numeric
tGravityAcc-mean()-X	Type Numeric
tGravityAcc-mean()-Y	Type Numeric
tGravityAcc-mean()-Z	Type Numeric
tGravityAcc-std()-X	Type Numeric
tGravityAcc-std()-Y	Type Numeric
tGravityAcc-std()-Z	Type Numeric
tBodyAccJerk-mean()-X	Type Numeric
tBodyAccJerk-mean()-Y	Type Numeric
tBodyAccJerk-mean()-Z	Type Numeric
tBodyAccJerk-std()-X	Type Numeric
tBodyAccJerk-std()-Y	Type Numeric
tBodyAccJerk-std()-Z	Type Numeric
tBodyGyro-mean()-X	Type Numeric
tBodyGyro-mean()-Y	Type Numeric
tBodyGyro-mean()-Z	Type Numeric
tBodyGyro-std()-X	Type Numeric
tBodyGyro-std()-Y	Type Numeric
tBodyGyro-std()-Z	Type Numeric
tBodyGyroJerk-mean()-X	Type Numeric
tBodyGyroJerk-mean()-Y	Type Numeric
tBodyGyroJerk-mean()-Z	Type Numeric
tBodyGyroJerk-std()-X	Type Numeric
tBodyGyroJerk-std()-Y	Type Numeric
tBodyGyroJerk-std()-Z	Type Numeric
tBodyAccMag-mean()	Type Numeric
tBodyAccMag-std()	Type Numeric
tGravityAccMag-mean()	Type Numeric
tGravityAccMag-std()	Type Numeric
tBodyAccJerkMag-mean()	Type Numeric
tBodyAccJerkMag-std()	Type Numeric
tBodyGyroMag-mean()	Type Numeric
tBodyGyroMag-std()	Type Numeric
tBodyGyroJerkMag-mean()	Type Numeric
tBodyGyroJerkMag-std()	Type Numeric
fBodyAcc-mean()-X	Type Numeric
fBodyAcc-mean()-Y	Type Numeric
fBodyAcc-mean()-Z	Type Numeric
fBodyAcc-std()-X	Type Numeric
fBodyAcc-std()-Y	Type Numeric
fBodyAcc-std()-Z	Type Numeric
fBodyAcc-meanFreq()-X	Type Numeric
fBodyAcc-meanFreq()-Y	Type Numeric
fBodyAcc-meanFreq()-Z	Type Numeric
fBodyAccJerk-mean()-X	Type Numeric
fBodyAccJerk-mean()-Y	Type Numeric
fBodyAccJerk-mean()-Z	Type Numeric
fBodyAccJerk-std()-X	Type Numeric
fBodyAccJerk-std()-Y	Type Numeric
fBodyAccJerk-std()-Z	Type Numeric
fBodyAccJerk-meanFreq()-X	Type Numeric
fBodyAccJerk-meanFreq()-Y	Type Numeric
fBodyAccJerk-meanFreq()-Z	Type Numeric
fBodyGyro-mean()-X	Type Numeric
fBodyGyro-mean()-Y	Type Numeric
fBodyGyro-mean()-Z	Type Numeric
fBodyGyro-std()-X	Type Numeric
fBodyGyro-std()-Y	Type Numeric
fBodyGyro-std()-Z	Type Numeric
fBodyGyro-meanFreq()-X	Type Numeric
fBodyGyro-meanFreq()-Y	Type Numeric
fBodyGyro-meanFreq()-Z	Type Numeric
fBodyAccMag-mean()	Type Numeric
fBodyAccMag-std()	Type Numeric
fBodyAccMag-meanFreq()	Type Numeric
fBodyBodyAccJerkMag-mean()	Type Numeric
fBodyBodyAccJerkMag-std()	Type Numeric
fBodyBodyAccJerkMag-meanFreq()	Type Numeric
fBodyBodyGyroMag-mean()	Type Numeric
fBodyBodyGyroMag-std()	Type Numeric
fBodyBodyGyroMag-meanFreq()	Type Numeric
fBodyBodyGyroJerkMag-mean()	Type Numeric
fBodyBodyGyroJerkMag-std()	Type Numeric
fBodyBodyGyroJerkMag-meanFreq()	Type Numeric



