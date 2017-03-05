# variable names, descriptions and data cleaning process

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


The data used for this project was downloaded from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data in smartphoneData.csv is derived from the accelerometer and gyroscope 3-axial raw signals from the smartphone. All values have been normalized to be in [-1,1].

Variables in startphoneData.csv:

subjectID, unique integer identifier for the subject

response, the type of activity the subject was performing when the measurements were made:
  walking
  walkingUpstairs
  walkingDownstairs
  sitting
  standing
  laying

tBodyAccMeanX, mean of the time signal for body acceleration, from the accelerometer, in the X-axis direction
tBodyAccMeanY, mean of the time signal for body acceleration, from the accelerometer, in the Y-axis direction
tBodyAccMeanZ, mean of the time signal for body acceleration, from the accelerometer, in the Z-axis direction
tGravityAccMeanX, mean of the time signal for gravity acceleration, from the accelerometer, in the X-axis direction
tGravityAccMeanY, mean of the time signal for gravity acceleration, from the accelerometer, in the Y-axis direction
tGravityAccMeanZ, mean of the time signal for gravity acceleration, from the accelerometer, in the Z-axis direction
tBodyAccJerkMeanX, mean of the time signal for body acceleration, from the accelerometer, for the jerk in the X-axis direction
tBodyAccJerkMeanY, mean of the time signal for body acceleration, from the accelerometer, for the jerk in the Y-axis direction
tBodyAccJerkMeanZ, mean of the time signal for body acceleration, from the accelerometer, for the jerk in the Z-axis direction
tBodyGyroMeanX, mean of the time signal for body acceleration, from the gyroscope, in the X-axis direction
tBodyGyroMeanY, mean of the time signal for body acceleration, from the gyroscope, in the Y-axis direction
tBodyGyroMeanZ, mean of the time signal for body acceleration, from the gyroscope, in the Z-axis direction
tBodyGyroJerkMeanX, mean of the time signal for body acceleration, from the gyroscope, for the jerk in the X-axis direction
tBodyGyroJerkMeanY, mean of the time signal for body acceleration, from the gyroscope, for the jerk in the Y-axis direction
tBodyGyroJerkMeanZ, mean of the time signal for body acceleration, from the gyroscope, for the jerk in the Z-axis direction
tBodyAccMagMean, mean of the time signal for body acceleration, from the accelerometer, in magnitude (vector sum of X,Y,Z)
tGravityAccMagMean, mean of the time signal for gravity acceleration, from the accelerometer, in magnitude (vector sum X,Y,Z)
tBodyAccJerkMagMean, mean of the time signal for body acceleration, from the accelerometer, for the jerk, in magnitude (vector sum X,Y,Z)
tBodyGyroMagMean, mean of the time signal for body acceleration, from the gyroscope, in magnitude (vector sum X,Y,Z)
tBodyGyroJerkMagMean, mean of the time signal for body acceleration, from the gyroscope, in magnitude (vector sum X,Y,Z)
fBodyAccMeanX, mean of the frequency signal for body acceleration, from the accelerometer, in the X-axis direction
fBodyAccMeanY, mean of the frequency signal for body acceleration, from the accelerometer, in the Y-axis direction
fBodyAccMeanZ, mean of the frequency signal for body acceleration, from the accelerometer, in the Z-axis direction
fBodyAccJerkMeanX, mean of the frequency signal for body acceleration, from the accelerometer, for the jerk in the X-axis direction
fBodyAccJerkMeanY, mean of the frequency signal for body acceleration, from the accelerometer, for the jerk in the Y-axis direction
fBodyAccJerkMeanZ, mean of the frequency signal for body acceleration, from the accelerometer, for the jerk in the Z-axis direction
fBodyGyroMeanX, mean of the frequency signal for body acceleration, from the gyroscope, in the X-axis direction
fBodyGyroMeanY, mean of the frequency signal for body acceleration, from the gyroscope, in the Y-axis direction
fBodyGyroMeanZ, mean of the frequency signal for body acceleration, from the gyroscope, in the Z-axis direction
fBodyAccMagMean, mean of the frequency signal for body acceleration, from the accelerometer, in magnitude (vector sum of X,Y,Z)
fBodyBodyAccJerkMagMean, mean of the frequency signal for body/body acceleration, from the accelerometer, for the jerk in magnitude (vector sum of X,Y,Z)
fBodyBodyGyroMagMean, mean of the frequency signal for body/body acceleration, from the gyrospace, in magnitude (vector sum of X,Y,Z)
fBodyBodyGyroJerkMagMean, mean of the frequency signal for body/body acceleration, from the gyrospace, for the jerk in magnitude (vector sum of X,Y,Z)
tBodyAccStdX, std dev of the time signal for body acceleration, from the accelerometer, in the X-axis direction
tBodyAccStdY, std dev of the time signal for body acceleration, from the accelerometer, in the Y-axis direction
tBodyAccStdZ, std dev of the time signal for body acceleration, from the accelerometer, in the Z-axis direction
tGravityAccStdX, std dev of the time signal for gravity acceleration, from the accelerometer, in the X-axis direction
tGravityAccStdY, std dev of the time signal for gravity acceleration, from the accelerometer, in the Y-axis direction
tGravityAccStdZ, std dev of the time signal for gravity acceleration, from the accelerometer, in the Z-axis direction
tBodyAccJerkStdX, std dev of the time signal for body acceleration, from the accelerometer, for the jerk in the X-axis direction
tBodyAccJerkStdY, std dev of the time signal for body acceleration, from the accelerometer, for the jerk in the Y-axis direction
tBodyAccJerkStdZ, std dev of the time signal for body acceleration, from the accelerometer, for the jerk in the Z-axis direction
tBodyGyroStdX, std dev of the time signal for body acceleration, from the gyroscope, in the X-axis direction
tBodyGyroStdY, std dev of the time signal for body acceleration, from the gyroscope, in the Y-axis direction
tBodyGyroStdZ, std dev of the time signal for body acceleration, from the gyroscope, in the Z-axis direction
tBodyGyroJerkStdX, std dev of the time signal for body acceleration, from the gyroscope, for the jerk in the X-axis direction
tBodyGyroJerkStdY, std dev of the time signal for body acceleration, from the gyroscope, for the jerk in the Y-axis direction
tBodyGyroJerkStdZ, std dev of the time signal for body acceleration, from the gyroscope, for the jerk in the Z-axis direction
tBodyAccMagStd, std dev of the time signal for body acceleration, from the accelerometer, in magnitude (vector sum of X,Y,Z)
tGravityAccMagStd, std dev of the time signal for gravity acceleration, from the accelerometer, in magnitude (vector sum X,Y,Z)
tBodyAccJerkMagStd, std dev of the time signal for body acceleration, from the accelerometer, for the jerk, in magnitude (vector sum X,Y,Z)
tBodyGyroMagStd, std dev of the time signal for body acceleration, from the gyroscope, in magnitude (vector sum X,Y,Z)
tBodyGyroJerkMagStd, std dev of the time signal for body acceleration, from the gyroscope, in magnitude (vector sum X,Y,Z)
fBodyAccStdX, std dev of the frequency signal for body acceleration, from the accelerometer, in the X-axis direction
fBodyAccStdY, std dev of the frequency signal for body acceleration, from the accelerometer, in the Y-axis direction
fBodyAccStdZ, std dev of the frequency signal for body acceleration, from the accelerometer, in the Z-axis direction
fBodyAccJerkStdX, std dev of the frequency signal for body acceleration, from the accelerometer, for the jerk in the X-axis direction
fBodyAccJerkStdY, std dev of the frequency signal for body acceleration, from the accelerometer, for the jerk in the Y-axis direction
fBodyAccJerkStdZ, std dev of the frequency signal for body acceleration, from the accelerometer, for the jerk in the Z-axis direction
fBodyGyroStdX, std dev of the frequency signal for body acceleration, from the gyroscope, in the X-axis direction
fBodyGyroStdY, std dev of the frequency signal for body acceleration, from the gyroscope, in the Y-axis direction
fBodyGyroStdZ, std dev of the frequency signal for body acceleration, from the gyroscope, in the Y-axis direction
fBodyAccMagStd, std dev of the frequency signal for body acceleration, from the accelerometer, in magnitude (vector sum of X,Y,Z)
fBodyBodyAccJerkMagStd, std dev of the frequency signal for body/body acceleration, from the accelerometer, for the jerk in magnitude (vector sum of X,Y,Z)
fBodyBodyGyroMagStd, std dev of the frequency signal for body/body acceleration, from the gyrospace, in magnitude (vector sum of X,Y,Z)
fBodyBodyGyroJerkMagStd, std dev of the frequency signal for body/body acceleration, from the gyrospace, for the jerk in magnitude (vector sum of X,Y,Z)
