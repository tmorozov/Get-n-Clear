# Get-n-Clear
coursera "Getting &amp; Cleaning Data Course" project

Input data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Input data could be downloaded from: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

run_analysis.R script does the following:
1. Checks if subdirectory "UCI HAR Dataset" is present in working directory
2. If no "UCI HAR Dataset" is present - download data from link provided, and unzip result in working directory
3. Loads datasets in R
4. Creates names for variables and binds subject and activity_name columns
5. Extracted only the measurements on the mean and standard deviation for each measurement
6. Merged the training and the test sets to create one data set
7. From the data set in step 6, creates a second, independent tidy data set with the average of each variable for each activity and each subject
8. Saves resulting dataset in "result.txt" file
