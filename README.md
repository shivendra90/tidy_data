23/08/2015
11:22 PM
run_analysis.R
============================================================================
Human recognition data through Samsung smart phones v1.1 (revised and fixed)
============================================================================

The run_analysis.R is the script file that executes a set of instructions aiming to organise the data provided by smartlabs for measuring the linear and angular velocity measurements conducted through Samsung smart phones (Samsung Galaxy S II) attached on the hips of some 30 athletes. The data dates back to November 2012 and was developed to provide an insight on the sports abilities of select subjects through inbuilt gyroscopes and accelerometers. These devices measured the 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. Athletes were subject to 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). The intention of this script is to organise and summarise the data provided for a more in-depth analysis by anyone who wishes to conduct further research.
The script primarily aims to create the following datasets in addition to providing any required details wherever necessary:

* Forming an 'Activity' dataset for each experiment (training or test) and renaming the activity labels with proper, descriptive names instead of numerals ranging from 1 to 6.
* Merging the activities and subject dataset for each experiment with its respective parent dataset; so we have two datasets - 'training' and 'test' that have their own activities and subject datasets combined into them.
* Merging the 'training' and 'test' datasets to form a whole dataset, named here as final.data containing 10300 observations for 563 variables.
* Renaming the variable names of the training and test datasets to make more sense of the measurement concerned. So we have column names like 'TimeBodyAccelerometer-mean()-X' instead of the shorter form 'tBodyAcc-mean()-x' that suggests the velocity of the linear acceleration measured by the accelerometers for x-axis.
* Independent datasets that are a subset of the primary dataset 'final.data' with every mean and standard deviation measurement. Thus we have 'mean.data' that contains the mean variables for every activity and subject and 'std.data' that contains the variables with standard deviations.
* A dataset that contains the calculated averages for each activity and each subject for every measurement (variable), named here as 'mean.data.training_test'.

Datasets referred or modified:
* features.txt
* X_test.txt
* y_test.txt
* subject_test.txt
* X_train.txt
* y_train.txt
* subject_train.txt
