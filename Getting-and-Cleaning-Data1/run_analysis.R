## 1. Reading and labeling files
test_meas <- read.table("./test/X_test.txt")
test_label <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

train_meas <- read.table("./train/X_train.txt")
train_label <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

activity_label <- read.table("./activity_labels.txt")
features <- read.table("./features.txt")


## Renaming the columns
names(activity_label) <- c("activityid", "activitylabel")

names(train_label) <- c("activityid")
names(subject_train) <- c("subjectid")
names(train_meas) <- features[, 2]
                              
names(test_label) <- c("activityid")
names(subject_test) <- c("subjectid")
names(test_meas) <- features[, 2]

## Building the data1 = training set and data2 = test set with all the names
training_data <- cbind(train_label, subject_train, train_meas)
data1 <- merge(activity_label, training_data, by = "activityid")

test_data <- cbind(test_label, subject_test, test_meas)
data2 <- merge(activity_label, test_data, by = "activityid")

## Merging the data together into one data set
data <- rbind(data1, data2)

## 2. Extracting only the measurements on the mean and standard deviation for each measurement. 
std_mean <- cbind(activityid  = data$activityid, subjectid = data$subjectid, data[ , grep("mean\\b", names(data), value = TRUE)], data[, grep("std", names(data), value = TRUE)]);
std_mean <- std_mean[, !(names(std_mean) %in% "meanFreq")]


## 3. Using descriptive activity names to name the activities in the data set and removing the column activityid
std_mean <- merge(activity_label, std_mean, by = "activityid")
std_mean <- std_mean[, !names(std_mean) %in% "activityid"]

## 4. Appropriately labeling the data set with descriptive variable names : removing uppercase characters, punctuation and redundant terms
names(std_mean) <- tolower(names(std_mean))
names(std_mean) <- gsub("[[:punct:]]", "", names(std_mean))
names(std_mean) <- gsub("bodybody", "body", names(std_mean))

## 5. Creating a second, independent tidy data set with the average of each variable for each activity and each subject
finaldata <- aggregate(std_mean[, 3:ncol(std_mean)], by=list(subjectid = std_mean$subjectid, activitylabel = std_mean$activitylabel), mean)

## Final data set
write.table(finaldata, file = "./finaldata.txt", row.names = FALSE)

