# run_analysis.R
#
# Preparing the data collected from the accelerometers from the Samsung Galaxy S 
# smartphone. 
# This script corresponds to the project for the Coursera course: Getting and 
# Cleaning Data


# Setting stringAsFactors:

options(stringsAsFactors = FALSE)


# Reading the data:

# (1) Reading the test data set:

X.test <- read.table("./CGACD/UCI HAR Dataset/test/X_test.txt")

# (2) Reading the test labels:

y.test <- read.table("./CGACD/UCI HAR Dataset/test/y_test.txt")

# (3) Reading the identifiers of the subjects who carried out the test experiment:

subject.test <- read.table("./CGACD/UCI HAR Dataset/test/subject_test.txt")

# (4) Reading the training data set:

X.train <- read.table("./CGACD/UCI HAR Dataset/train/X_train.txt")

# (5) Reading the training labels:

y.train <- read.table("./CGACD/UCI HAR Dataset/train/y_train.txt")

# (6) Reading the identifiers of the subjects who carried out the train:

subject.train <- read.table("./CGACD/UCI HAR Dataset/train/subject_train.txt")

# (7) Reading the file that links the class labels with their activity name:

activity.labels <- read.table("./CGACD/UCI HAR Dataset/activity_labels.txt")

# (8) Reading the complete list of variables of each feature vector:

features <- read.table("./CGACD/UCI HAR Dataset/features.txt")


# 1. Merges the training and the test sets to create one data set:

test.train.dataset <- rbind(X.test, X.train)

rm(X.test, X.train)


# 2. Extracts only the measurements on the mean and standard deviation for each 
# measurement:

mean.std.measurements <- sort(c(grep("-mean()", features$V2, fixed = TRUE), 
                                grep("-std()", features$V2, fixed = TRUE)))

test.train.mean.std.dataset <- 
        test.train.dataset[, mean.std.measurements]

rm(test.train.dataset)


# 3. Uses descriptive activity names to name the activities in the data set:

class.labels <- rbind(y.test, y.train)

activity.names <- match(class.labels$V1, activity.labels$V1)

class.labels$V1 <- activity.labels$V2[activity.names]

colnames(class.labels) = "activity"

rm(activity.names, y.test, y.train, activity.labels)

        
# 4. Appropriately labels the data set with descriptive variable names:

colnames(test.train.mean.std.dataset) <- gsub("BodyBody", "Body", 
                                              features$V2[mean.std.measurements])

rm(features, mean.std.measurements)


# Adding the variables set(test/train), subjectID and activity to the data set:

set.subjectID.activity.test <- data.frame(set = "test", 
                                          subjectID = subject.test$V1)

set.subjectID.activity.train <- data.frame(set = "train", 
                                           subjectID = subject.train$V1)

set.subjectID.activity.test.train <- rbind(set.subjectID.activity.test, 
                                           set.subjectID.activity.train)

test.train.mean.std.dataset <- cbind(set.subjectID.activity.test.train, 
                                          class.labels, 
                                          test.train.mean.std.dataset)

rm(subject.test, subject.train, set.subjectID.activity.test, 
   set.subjectID.activity.train, set.subjectID.activity.test.train, class.labels)


# Setting stringsAsFactors to its original value:

options(stringsAsFactors = TRUE)
        

# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject:

summarized.dataset <- aggregate(test.train.mean.std.dataset[,-(1:3)], 
                             by=list(subjectID = test.train.mean.std.dataset$subjectID, 
                                     activity = test.train.mean.std.dataset$activity), 
                             FUN = mean)

rm(test.train.mean.std.dataset)


# Writting the data set as a txt file created with write.table() using 
# row.name=FALSE:

write.table(summarized.dataset,"./CGACD/HARbySGS.txt", quote = FALSE, sep = " ", 
            row.name = FALSE)

