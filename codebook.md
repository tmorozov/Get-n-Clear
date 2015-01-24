### Codebook

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation

Then observations are grupped by subject and by activity.
Average values of variables are calculated for each group and saved to "result.txt"

####variables in result dataset

|name|units|description|
|----|----------|-----------|
|subject|int|identifies the subject who performed the activity (range 1:30)|
|activity_name|chr|activity name (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)|
|tBodyAcc.mean...X|num|average of tBodyAcc X mean|
|tBodyAcc.mean...Y|num|average of tBodyAcc Y mean|
|tBodyAcc.mean...Z|num|average of tBodyAcc Z mean|
|tGravityAcc.mean...X|num|average of tGravityAcc X mean|
|tGravityAcc.mean...Y|num|average of tGravityAcc Y mean|
|tGravityAcc.mean...Z|num|average of tGravityAcc Z mean|
|tBodyAccJerk.mean...X|num|average of tBodyAccJerk X mean|
|tBodyAccJerk.mean...Y|num|average of tBodyAccJerk Y mean|
|tBodyAccJerk.mean...Z|num|average of tBodyAccJerk Z mean|
|tBodyGyro.mean...X|num|average of tBodyGyro X mean|
|tBodyGyro.mean...Y|num|average of tBodyGyro Y mean|
|tBodyGyro.mean...Z|num|average of tBodyGyro Z mean|
|tBodyGyroJerk.mean...X|num|average of tBodyGyroJerk X mean|
|tBodyGyroJerk.mean...Y|num|average of tBodyGyroJerk Y mean|
|tBodyGyroJerk.mean...Z|num|average of tBodyGyroJerk Z mean|
|tBodyAccMag.mean|num|average of tBodyAccMag mean|
|tGravityAccMag.mean|num|average of tGravityAccMag mean|
|tBodyAccJerkMag.mean|num|average of tBodyAccJerkMag mean|
|tBodyGyroMag.mean|num|average of tBodyGyroMag mean|
|tBodyGyroJerkMag.mean|num|average of tBodyGyroJerkMag mean|
|fBodyAcc.mean...X|num|average of fBodyAcc X mean|
|fBodyAcc.mean...Y|num|average of fBodyAcc Y mean|
|fBodyAcc.mean...Z|num|average of fBodyAcc Z mean|
|fBodyAccJerk.mean...X|num|average of fBodyAccJerk X mean|
|fBodyAccJerk.mean...Y|num|average of fBodyAccJerk Y mean|
|fBodyAccJerk.mean...Z|num|average of fBodyAccJerk Z mean|
|fBodyGyro.mean...X|num|average of fBodyGyro X mean|
|fBodyGyro.mean...Y|num|average of fBodyGyro Y mean|
|fBodyGyro.mean...Z|num|average of fBodyGyro Z mean|
|fBodyAccMag.mean|num|average of fBodyAccMag mean|
|fBodyBodyAccJerkMag.mean|num|average of fBodyBodyAccJerkMag mean|
|fBodyBodyGyroMag.mean|num|average of fBodyBodyGyroMag mean|
|fBodyBodyGyroJerkMag.mean|num|average of fBodyBodyGyroJerkMag mean|
|tBodyAcc.std...X|num|average of tBodyAcc X standard deviation|
|tBodyAcc.std...Y|num|average of tBodyAcc Y standard deviation|
|tBodyAcc.std...Z|num|average of tBodyAcc Z standard deviation|
|tGravityAcc.std...X|num|average of tGravityAcc X standard deviation|
|tGravityAcc.std...Y|num|average of tGravityAcc Y standard deviation|
|tGravityAcc.std...Z|num|average of tGravityAcc Z standard deviation|
|tBodyAccJerk.std...X|num|average of tBodyAccJerk X standard deviation|
|tBodyAccJerk.std...Y|num|average of tBodyAccJerk Y standard deviation|
|tBodyAccJerk.std...Z|num|average of tBodyAccJerk Z standard deviation|
|tBodyGyro.std...X|num|average of tBodyGyro X standard deviation|
|tBodyGyro.std...Y|num|average of tBodyGyro Y standard deviation|
|tBodyGyro.std...Z|num|average of tBodyGyro Z standard deviation|
|tBodyGyroJerk.std...X|num|average of tBodyGyroJerk X standard deviation|
|tBodyGyroJerk.std...Y|num|average of tBodyGyroJerk Y standard deviation|
|tBodyGyroJerk.std...Z|num|average of tBodyGyroJerk Z standard deviation|
|tBodyAccMag.std|num|average of tBodyAccMag standard deviation|
|tGravityAccMag.std|num|average of tGravityAccMag standard deviation|
|tBodyAccJerkMag.std|num|average of tBodyAccJerkMag standard deviation|
|tBodyGyroMag.std|num|average of tBodyGyroMag standard deviation|
|tBodyGyroJerkMag.std|num|average of tBodyGyroJerkMag standard deviation|
|fBodyAcc.std...X|num|average of fBodyAcc X standard deviation|
|fBodyAcc.std...Y|num|average of fBodyAcc Y standard deviation|
|fBodyAcc.std...Z|num|average of fBodyAcc Z standard deviation|
|fBodyAccJerk.std...X|num|average of fBodyAccJerk X standard deviation|
|fBodyAccJerk.std...Y|num|average of fBodyAccJerk Y standard deviation|
|fBodyAccJerk.std...Z|num|average of fBodyAccJerk Z standard deviation|
|fBodyGyro.std...X|num|average of fBodyGyro X standard deviation|
|fBodyGyro.std...Y|num|average of fBodyGyro Y standard deviation|
|fBodyGyro.std...Z|num|average of fBodyGyro Z standard deviation|
|fBodyAccMag.std|num|average of fBodyAccMag standard deviation|
|fBodyBodyAccJerkMag.std|num|average of fBodyBodyAccJerkMag standard deviation|
|fBodyBodyGyroMag.std|num|average of fBodyBodyGyroMag standard deviation|
|fBodyBodyGyroJerkMag.std|num|average of fBodyBodyGyroJerkMag standard deviation|
