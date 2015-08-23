Data.to.be.submitted.txt

The 'Data.to.be.submitted.txt' file contains 563 variables for a total of 133 observations (132 if the header for the test dataset is to be ignored. This table provides the average measurements for each activity and each subject and its corresponding variable. Thus, for subject no. 1, the average value of the variable 'TimeBodyAccelerometer-mean()-X' for the activity WALKING was 0.277330758736842. All variables were renamed to make them more understandable and meaningful by adopting long form nomenclature. The original variables were characterised as the following:

1.tBodyAcc-XYZ
2.tGravityAcc-XYZ
3.tBodyAccJerk-XYZ
4.tBodyGyro-XYZ
5.tBodyGyroJerk-XYZ
6.tBodyAccMag
7.tGravityAccMag
8.tBodyAccJerkMag
9.tBodyGyroMag
10.tBodyGyroJerkMag
11.fBodyAcc-XYZ
12.fBodyAccJerk-XYZ
13.fBodyGyro-XYZ
14.fBodyAccMag
15.fBodyAccJerkMag
16.fBodyGyroMag
17.fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

The new dataset has the following variables:

1. Subject: numeric, lists down the athlete in consideration; from 1 to 30.
2. Activity: char, lists down all activities (see Readme.md).
3.TimeBodyAccelerometer-XYZ: measures the linear velocity at XYZ and planes
4.TimeGravityAccelerometer-XYZ: measures the linear gravity at XYZ planes
5.TimeBodyAccelerometerJerk-XYZ: measures linear jerk movements
6.TimeBodyAngular-XYZ: measures angular velocity at XYZ through gyroscope
7.TImeBodyAngularJerk-XYZ: measures the angular jerk velocity
8.TimeBodyAccelerometerMagnitude: measures the linear magnitude
9.TImeGravityAccelerometerMagnitude: measures linear gravitational magnitude
10.TimeBodyAccelerometerJerkMagnitude: measures linear jerk magnitude
11.TImeBodyAngularMagnitude: measures angular (gyroscopic) magnitude
12.TimeBodyAngularJerkMag: measures angular jerk magnitude
13.FreqBodyAccelerometer-XYZ: measures frequency of linear velocity
14.FreqBodyAccelerometerJerk-XYZ: measures frequency of linear jerk
15.FreqBodyAngular-XYZ: frequency of angular velocity
16.FreqBodyAccelerometerMagnitude: magnitude of frequency of linear velocity
17.FreqBodyAccelerometerJerkMagnitude: frequency of linear jerk
18.FreqBodyAngularMagnitude: frequency of angular magnitude
19.FreqBodyAngularJerkMagnitude: frequency of angular jerk magnitude

Set of variables as listed above remain the same.
