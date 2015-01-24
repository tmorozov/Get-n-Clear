# dplyr is required for data convertion
library("dplyr")

# function for dawnloading "UCI HAR Dataset" if needed
downloadData <- function () {
  
  # function for dawnloading "UCI HAR Dataset" 
  downloadDataSource <- function () {
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    tmpFile <- "./tmp.zip"
    
    # download zipped data (will take a while)
    download.file(fileUrl, destfile = tmpFile, method = "curl", mode="wb")
    
    #extract files
    unzip(tmpFile, exdir="./")
    
    #remove tmp file
    unlink(tmpFile)  
  }
  
  # check if "UCI HAR Dataset" is present, download if not
  if(!file.exists("./UCI HAR Dataset")) {
    downloadDataSource()
  } 
}

convertData <- function () {
  # load data in R
  activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
  features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
  
  subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
  X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
  
  subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
  X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
  
  # create valid names for variables
  feature_names <- make.names(features$V2, unique=TRUE)
  names(X_test) <- feature_names
  names(X_train) <- feature_names
  
  # select only mean and std values
  # add subject and activity_name variables
  tmp_test <- X_test %>% 
    select(contains(".mean."), contains(".std.")) %>%
    mutate(subject = subject_test$V1, activity_name=activity_labels[y_test$V1, "V2"])
  
  tmp_train <- X_train %>% 
    select(contains(".mean."), contains(".std.")) %>%
    mutate(subject = subject_train$V1, activity_name=activity_labels[y_train$V1, "V2"])
  
  # merge test and train data
  combined <- rbind_list(tmp_test, tmp_train)
  
  # group data by subject and activity
  # calculate mean for all groups
  # print results
  result <- combined %>% 
    group_by(subject, activity_name) %>%
    summarise_each(funs(mean)) %>%
    print()
  
  # write result to result.txt
  write.table(result, "./result.txt", row.name=FALSE)
  
  result
}

downloadData()
res <- convertData()
