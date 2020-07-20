library(dplyr)

#Download the file

data<-"Week3_project.zip"

if(!file.exists("data")){
  fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileurl, data)
}

#Unzip the file

unzip(data)

#Reading data

features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#test

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

#train

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

# 1. Merges the training and the test sets to create one data set.

subject_merged<-rbind(subject_train,subject_test)
x_merged<-rbind( x_train, x_test)
y_merged<-rbind(y_train, y_test)
merged_data<-cbind(subject_merged,x_merged,y_merged)
colnames(merged_data)<-c("subject", features[, 2], "activity")

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

col_names_select<-grepl("subject|activity|mean|std", colnames(merged_data))
tidy_data<-merged_data[,col_names_select]

# 3. Uses descriptive activity names to name the activities in the data set

tidy_data$activity <- activities[tidy_data$activity, 2]

# 4. Appropriately labels the data set with descriptive variable names.

names(tidy_data)<-gsub("^t", "time", names(tidy_data))
names(tidy_data)<-gsub("Acc", "Accelerometer", names(tidy_data))
names(tidy_data)<-gsub("Gyro", "Gyroscope", names(tidy_data))
names(tidy_data)<-gsub("^f", "Frequency", names(tidy_data))
names(tidy_data)<-gsub("Mag", "Magnitude", names(tidy_data))
names(tidy_data)<-gsub("BodyBody", "Body", names(tidy_data))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Final_tidy_data <- aggregate( . ~ subject + activity, tidy_data, mean )
Final_tidy_data <- Final_tidy_data[order(Final_tidy_data$subject,Final_tidy_data$activity),]

write.table(Final_tidy_data, "Tidy_data.txt", row.name=FALSE)
