library(dplyr)
## Load the 'dplyr' package
## Assigning the 'features' data set


features = read.table('./UCI HAR Dataset/features.txt', sep = '')
names(features)[names(features) == 'V1'] <- 's.no'
names(features)[names(features) == 'V3'] <- 'Feature' ## Renaming the columns
keep <- 'Feature'
features <- features[,keep, drop = FALSE] ## selecting only the required column, deselecting 'S.no'


## Load the 'training_set' data set
subject.training = read.table('./UCI HAR Dataset/train/Subject_train.txt', sep = '', stringsAsFactors = TRUE) ## Listing dwon all the subjects
training_set = read.table('./UCI HAR Dataset/X_train.txt', sep = '', stringsAsFactors = TRUE) ## The training data set
activity.train <- read.table('./UCI HAR Dataset/train/y_train.txt', sep = '', stringsAsFactors = TRUE) 
activity.train <- names(activity.train)[names(activity.train) == 'V1'] <- 'Activity' ## The activity data set with renamed column


## Renaming activities 
activity.train$Activity[activity.train$Activity == 1] <- 'WALKING'
activity.train$Activity[activity.train$Activity == 2] <- 'WALKING_UPSTAIRS'
activity.train$Activity[activity.train$Activity == 3] <- 'WALKING_DOWNSTAIRS'
activity.train$Activity[activity.train$Activity == 4] <- 'SITTING'
activity.train$Activity[activity.train$Activity == 5] <- 'STANDING'
activity.train$Activity[activity.train$Activity == 6] <- 'LAYING'


## Repeat above steps for the 'test.set'
test.set = read.table('./UCI HAR Dataset/test/X_test.txt', sep = '', stringsAsFactors = TRUE)
subject.test = read.table('./UCI HAR Dataset/test/Y_test.txt', sep ='', stringsAsFactors = TRUE)
names(subject.test)[names(subject.test) = 'V1'] <- 'Subject'
activity.test = read.table('./UCI HAR Dataset/test/y_train.txt', sep = '', stringsAsFactors = TRUE)
names(activity.test)[names(activity.test) == 'V1'] <- 'Activity'


## Renaming activities
activity.test$Activity[activity.test$Activity == 1] <- 'WALKING'
activity.test$Activity[activity.test$Activity == 2] <- 'WALKING_UPSTAIRS'
activity.test$Activity[activity.test$Activity == 3] <- 'WALKING_DOWNSTAIRS'
activity.test$Activity[activity.test$Activity == 4] <- 'SITTING'
activity.test$Activity[activity.test$Activity == 5] <- 'STANDING'
activity.test$Activity[activity.test$Activity == 6] <- 'LAYING'


## Change the headers of both the datasets
names(training_set) <- sapply(features[1:561,], as.character)
names(test.set) <- sapply(features[1:561,], as.character)


## Finally combine the records to make two parent data frames for training and test
training <- cbind(subject.training, activity.train, training_set)
valid_training_columns <- make.names(names=names(training), unique = TRUE, allow_ = TRUE) ## Remove duplicate columns
names(training) <- valid_training_columns
test <- cbind(subject.test, activity.test, test.set)
valid_test_columns <- make.names(names=names(test), unique = TRUE, allow_ = TRUE) ## Remove duplicate columns
names(test) <- valid_test_columns


## Combine 'training' and 'test' to form one data frame
final.data <- rbind(training, names(test), setNames(test, names(training)))
## Form seperate, independent datasets subsetting mean and standard deviations provided in final.data
mean.data <- final.data[,c(1,2,3,4,5,43,44,45,83,84,85,123,124,125,163,164,165,203,216,229,242,255,268,269,230,347,348,349,426,427,428,505,
                           518,531,544,557,558,559,560,561,562,563)]
std.data <- final.data[,c(1,2,6:8,46:48,86:88,126:128,166:168,204,217,230,243,256,271:273,350:352,429:431,506,519,532,545, 557:563)]


## make column names of final.data unique by removing any duplicates
valid_columns <- make.names(names=names(final.data), unique = TRUE, allow_ = TRUE)
names(final.data) <- valid_columns


## Form a dataset that measures mean of each subject and each activity from the training data set
mean.training = summarise_each(group_by(training[,(1:563)], Subject, Activity), funs(mean))


## Repeat above step for test set
mean.test = summarise_each(group_by(test[,(1:563)], Subject, Activity), funs(mean))


## Form one final data set from mean.training and mean.test to form a dataset that measures the mean of each subject according to activity (Question 5)
mean.data.from.training_test <- rbind(mean.training, names(mean.test), setNames(mean.test, names(mean.training)))


## make a text file of the last dataset for submission
write.table(mean.data.from.training_test, './data.to.be.submitted.txt', sep = '\t\t', row.name = FALSE)

## The End
