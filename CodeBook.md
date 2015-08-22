#Codebook for UCI HAR Dataset - Final Tidy dataset

Overview:
This is the codebook for the UCI HAR Dataset - Final Tidy version. 
This dataset is a summarized version of the Human Activity Recognition 
Using Smartphones Data Set Version 1.0, which can be found at 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.


##Study Design

####Specifics about the original dataset.
The *original* dataset is the result of experiments that have been 
carried out with a group of 30 volunteers. Each person performed six 
activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, 
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the 
waist. Using the phone's embedded accelerometer and gyroscope, they 
captured 3-axial linear acceleration and 3-axial angular velocity at a 
constant rate of 50Hz. 

The sensor signals (accelerometer and gyroscope) were pre-processed 
by the authors of the *original* by applying noise filters and then 
sampled in fixed-width sliding windows of 2.56 sec and 50% overlap 
(128 readings/window). The sensor acceleration signal, which has 
gravitational and body motion components, was separated using a 
Butterworth low-pass filter into body acceleration and gravity. The 
gravitational force is assumed to have only low frequency components, 
therefore a filter with 0.3 Hz cutoff frequency was used. From each 
window, a vector of features was obtained by calculating variables 
from the time and frequency domain. See 'features_info.txt' for more 
details. 

####What makes this dataset different?
Additionally, the *original* dataset contained a 561 feature vector 
of with time and frequency domain variables for each sample. This 
dataset attempted to only collect the *"mean"*, and *"standard 
deviation"* variables from the original vector. Concretely, it uses 
only those variables that contained the term "mean", or "std" in 
their name. This reduces the feature vector size to 86. This vector 
was summarized for each *subject*, and *activity* by taking the mean 
of the respective observations. This dataset contains 180 rows and 88
columns (2 additional from the "activity" label and "subject id").


##Codebook

*From the original codebook*
The features selected for this database come from the accelerometer 
and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time 
domain signals (prefix 't' to denote time) were captured at a 
constant rate of 50 Hz. Then they were filtered using a median 
filter and a 3rd order low pass Butterworth filter with a corner 
frequency of 20 Hz to remove noise. Similarly, the acceleration signal 
was then separated into body and gravity acceleration signals 
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth 
filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were 
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and 
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional 
signals were calculated using the Euclidean norm (tBodyAccMag, 
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these 
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to 
indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector 
for each pattern: '-XYZ' is used to denote 3-axial signals in the 
X, Y and Z directions.

Each observation contains the following info:

tBodyAcc-mean()-X 	= mean time domain body accel. in the X dir.
tBodyAcc-mean()-Y 	= mean time domain body accel. in the Y dir.
tBodyAcc-mean()-Z 	= mean time domain body accel. in the Z dir.
tBodyAcc-std()-X 	= std. dev. time domain body accel.in the X dir.
tBodyAcc-std()-Y	= std. dev. time domain body accel.in the Y dir.
tBodyAcc-std()-Z	= std. dev. time domain body accel.in the Z dir.
tGravityAcc-mean()-X = mean time domain gravity accel.in the X dir.
tGravityAcc-mean()-Y = mean time domain gravity accel.in the Y dir.
tGravityAcc-mean()-Z = mean time domain gravity accel.in the Z dir.
tGravityAcc-std()-X = std. dev. time domain gravity accel.in the X dir.
tGravityAcc-std()-Y = std. dev. time domain gravity accel.in the Y dir.
tGravityAcc-std()-Z = std. dev. time domain gravity accel.in the Z dir.
tBodyAccJerk-mean()-X = mean time domain body accel. jerk - X dir.
tBodyAccJerk-mean()-Y = mean time domain body accel. jerk - Y dir.
tBodyAccJerk-mean()-Z = mean time domain body accel. jerk - Z dir.
tBodyAccJerk-std()-X = std. time domain body accel. jerk - X dir.
tBodyAccJerk-std()-Y = std. time domain body accel. jerk - Y dir.
tBodyAccJerk-std()-Z = std. time domain body accel. jerk - Z dir.
tBodyGyro-mean()-X = mean time domain body gyro. in the X dir.
tBodyGyro-mean()-Y = mean time domain body gyro. in the Y dir.
tBodyGyro-mean()-Z = mean time domain body gyro. in the Z dir.
tBodyGyro-std()-X = std. time domain body gyro. in the X dir.
tBodyGyro-std()-Y = std. time domain body gyro. in the Y dir.
tBodyGyro-std()-Z = std. time domain body gyro. in the Z dir.
tBodyGyroJerk-mean()-X = mean time domain body gyro. jerk - X dir.
tBodyGyroJerk-mean()-Y = mean time domain body gyro. jerk - Y dir.
tBodyGyroJerk-mean()-Z = mean time domain body gyro. jerk - Z dir.
tBodyGyroJerk-std()-X = std. time domain body gyro. jerk - X dir.
tBodyGyroJerk-std()-Y = std. time domain body gyro. jerk - Y dir.
tBodyGyroJerk-std()-Z = std. time domain body gyro. jerk - Z dir.
tBodyAccMag-mean() = mean time domain body accel. magnitude
tBodyAccMag-std() = std. time domain body accel. magnitude.
tGravityAccMag-mean() = mean time domain grav accel. magnitude
tGravityAccMag-std() = std. time domain grav accel. magnitude
tBodyAccJerkMag-mean() = mean time domain body accel. jerk magnitude
tBodyAccJerkMag-std() = std. time domain body accel. jerk magnitude
tBodyGyroMag-mean() = mean time domain body gyro. magnitude
tBodyGyroMag-std() = std. time domain body gyro. magnitude
tBodyGyroJerkMag-mean() = mean time domain body gyro. jerk magnitude
tBodyGyroJerkMag-std() = std time domain body gyro. jerk magnitude
fBodyAcc-mean()-X = mean freq. domain body accel. in the X dir.
fBodyAcc-mean()-Y = mean freq. domain body accel. in the Y dir.
fBodyAcc-mean()-Z = mean freq. domain body accel. in the Z dir.
fBodyAcc-std()-X = std. freq. domain body accel. in the X dir.
fBodyAcc-std()-Y = std. freq. domain body accel. in the Y dir.
fBodyAcc-std()-Z = std. freq. domain body accel. in the Z dir.
fBodyAcc-meanFreq()-X = mean freq. domain body accel. in the X dir.
fBodyAcc-meanFreq()-Y = mean freq. domain body accel. in the Y dir.
fBodyAcc-meanFreq()-Z = mean freq. domain body accel. in the Z dir.
fBodyAccJerk-mean()-X = mean freq. domain body accel. Jerk - X dir.
fBodyAccJerk-mean()-Y = mean freq. domain body accel. Jerk - Y dir.
fBodyAccJerk-mean()-Z = mean freq. domain body accel. Jerk - Z dir.
fBodyAccJerk-std()-X = std. freq. domain body accel. Jerk - X dir.
fBodyAccJerk-std()-Y = std. freq. domain body accel. Jerk - Y dir.
fBodyAccJerk-std()-Z = std. freq. domain body accel. Jerk - Z dir.
fBodyAccJerk-meanFreq()-X = mean freq. domain body accel. Jerk - X dir.
fBodyAccJerk-meanFreq()-Y = mean freq. domain body accel. Jerk - Y dir.
fBodyAccJerk-meanFreq()-Z = mean freq. domain body accel. Jerk - Z dir.
fBodyGyro-mean()-X = mean freq. domain body gyro. in the X dir.
fBodyGyro-mean()-Y = mean freq. domain body gyro. in the Y dir.
fBodyGyro-mean()-Z = mean freq. domain body gyro. in the Z dir.
fBodyGyro-std()-X = std. freq. domain body gyro. in the X dir.
fBodyGyro-std()-Y = std. freq. domain body gyro. in the Y dir.
fBodyGyro-std()-Z = std. freq. domain body gyro. in the Z dir.
fBodyGyro-meanFreq()-X = mean freq. domain body gyro. in the X dir.
fBodyGyro-meanFreq()-Y = mean freq. domain body gyro. in the Y dir.
fBodyGyro-meanFreq()-Z = mean freq. domain body gyro. in the Z dir.
fBodyAccMag-mean() = mean freq. body accel. magnitude
fBodyAccMag-std() = std. freq. body accel. magnitude
fBodyAccMag-meanFreq() = meanfreq. body accel. magnitude
fBodyBodyAccJerkMag-mean() = mean freq. body accel. jerk magnitude
fBodyBodyAccJerkMag-std() = std. freq. body accel. jerk magnitude
fBodyBodyAccJerkMag-meanFreq() = meanfreq. domain body accel. jerk magnitude
fBodyBodyGyroMag-mean() = mean freq. domain gyro. body magnitude
fBodyBodyGyroMag-std() = std. freq. domain gyro. body magnitude
fBodyBodyGyroMag-meanFreq() = mean freq. domain gyro. body
fBodyBodyGyroJerkMag-mean() = mean freq. domain gyro. jerk body
fBodyBodyGyroJerkMag-std() = std. freq. domain gyro. jerk body magnitude
fBodyBodyGyroJerkMag-meanFreq() = mean freq. domain gyro. jerk body magnitude

*angle(): Angle between to vectors.*

angle(tBodyAccMean,gravity) = the angle between mean body accel. and 
                              gravity
angle(tBodyAccJerkMean),gravityMean) = the angle between mean body 
                                       accel. jerk and gravityMean
angle(tBodyGyroMean,gravityMean) = the angle between mean body gyro. 
                                   and gravityMean
angle(tBodyGyroJerkMean,gravityMean) = the angle between the body 
                                       gyro. jerk mean and the 
									   gravityMean
angle(X,gravityMean) = the angle between X and the gravityMean
angle(Y,gravityMean) = the angle between Y and the gravityMean
angle(Z,gravityMean) = the angle between Z and the gravityMean



