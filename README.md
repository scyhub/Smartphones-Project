# Smartphones-Project

This repository contains the R script and the code book created for the project of the Coursera course: Getting and Cleaning Data. The R script prepares the data collected from the accelerometers from the Samsung Galaxy S smartphone during the experiment about human activity recognition described in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The R script works as follows:

* First, it reads the data files containing the test and the training sets (X_test.txt and X_train.txt), the test and the train class labels (y_test.txt and y_train.txt), the identifiers of the subjects who performed the activity for each window sample (subject_test.txt and subject_train.txt), the file that links the class labels with their activity name (activity_labels.txt) and the complete list of variables of each feature vector (features.txt). So, a total of eight data frames are obtained, one for each data file (X.test, y.test, subject.test, X.train, y.train, subject.train, activity.labels, features).

* Second, it merges the test and the training sets to create one data set using the rbind function that combines both data sets by rows. Thereby, the obtained data frame (test.train.dataset) has the same number of columns as the test and the training sets (X.test and X.train data frames) and a number of rows equals to the sum of the rows of those sets. No previous work on the sets is required before merging them because they have the same number of columns and, according with the information included in the data set (README.txt file), the columns of each set corresponds to the same variables.

* Third, it extracts only the measurements on the mean and standard deviation for each measurement (i.e., for each variable/column). To do that, it uses the grep function to extract the indexes of the measurements that include the character strings '-mean()' and '-std()' in their names, that is, in the variable names included in the data frame 'features'. Then it creates a vector with those indexes and sorts it. Next, this vector of indexes (mean.std.measurements) is used to subset the merged data set obtained in the previous step, so the resulting data frame (test.train.mean.std.dataset) only contains variables (i.e. columns) on the mean value and the standard deviation for each measurement such as tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z, tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z, tGravityAcc-mean()-X, tGravityAcc-mean()-Y, tGravityAcc-mean()-Z, tGravityAcc-std()-X, tGravityAcc-std()-Y, tGravityAcc-std()-Z, etc.

* Fourth, it assigns descriptive activity names to name the activities in the data set. For obtaining those descriptive activity names, the links between the class labels and the activity names included in the data frame 'activity.labels' are used. Thus, after merging the data frames with the test and train class labels (y.test and y.train) in a similar way as it was done to obtain the data frame 'test.train.dataset' - i.e., using the rbind function and adding the y.train data rows below the y.test data rows -, the match function is used to extract the positions of the matches of the class labels included in the 'class.labels' merged data frame in the first column of the 'activity.labels' data frame. Next, those indexes are used to extract the descriptive activity names from the second column of the 'activity.labels' data frame for each class label of the 'class.labels' data frame and the descriptive variable name 'activity' is assigned to the recoded class labels in the latter data frame.

* Fifth, it assigns descriptive variable names to the 'test.train.mean.std.dataset' data frame by labeling their columns with the corresponding variables names included in the second column of the features data frame. To extract the descriptive variable name from the 'features' data frame that corresponds to each variable (column) of the 'test.train.mean.std.dataset' data frame, it uses the vector of indexes 'mean.std.measurements' that was employed to extract the 'test.train.mean.std.dataset' data frame from the 'test.train.dataset' data frame (see the third point above). This way, proper descriptive variable names are assigned to 'test.train.mean.std.dataset' data frame.
At this point, the 'test.train.mean.std.dataset' data frame is completed by adding three new variables: the 'set', the 'subjectID' and the 'activity'. To do that, for each data set - the test and the training sets -, a data frame is formed with the variables 'set' and 'subjectID" - the former being equal to test/train and the latter being equals to subject.test/subject.train data frame, respectively - and the resulting data frames 'set.subjectID.activity.test' and 'set.subjectID.activity.train' are merged using the function rbind in a similar way as it was done to obtain the data frame 'test.train.dataset' (see second point above) to obtain the 'set.subjectID.activity.test.train' data frame. Next, a complete data frame is built by adding that 'set.subjectID.activity.test.train' data frame and the 'class.labels' data frame to the left of the 'test.train.mean.std.dataset' data frame using the function cbind.

* Sixth, it creates an independent tidy data set from the data set obtained at the end of the previous step, that contains the average of each measurement for each activity and each subject. This new data set is created from the extended version of the 'test.train.mean.std.dataset' using the aggregate function with the 'subjectID' and the 'activity' variables as grouping elements and the mean function as the function to compute the summary statistics. Then, it writes the resulting data set 'summarized.dataset' as a txt file using the function write.table.

The R script sets 'stringsAsFactors' to FALSE at the beginning of the script to prevent character vectors from being converted to factors. This setting is reverted to TRUE near the end of the script. The R script also includes several calls to the rm function to remove unnecessary objects from the global environment. 

The R script 'run_analysis.R' was created using the RStudio IDE Version 0.98.1103 and the details of the platform R is running on are:
R version 3.2.0 (2015-04-16)

Platform: i386-w64-mingw32/i386 (32-bit)

Running under: Windows Vista (build 6002) Service Pack 2



locale:

[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252

[3] LC_MONETARY=English_United States.1252 LC_NUMERIC=C

[5] LC_TIME=English_United States.1252



attached base packages:

[1] stats     graphics  grDevices utils     datasets  methods   base



loaded via a namespace (and not attached):

[1] tools_3.2.0
