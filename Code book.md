---
title: "Code book"
author: "Elena Kotova"
date: "20 07 2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

**run_analysis.R** prepares data and follows the requirements specified in the task.


### 1.	Download the dataset

Dataset was downloaded from the link and taken from the UCI HAR Dataset folder

### 2.	Read data from the files

* **features** <- features.txt: List of all features.
* **activity_labels** <-  activity_labels.txt: Links the class labels with their activity name.

* **x_train** <- train/X_train.txt: Training set.
* **y_train** <- train/y_train.txt: Training labels.
* **subject_train** <- test/subject_test.txt: Train subjects.

* **x_test** <-  test/X_test.txt: Test set.
* **y_test** <- test/y_test.txt: Test labels.
* **subject_test** <- test/subject_test.txt: Test subjects.

### 3.	Merges the training and the test sets to create one data set.

The data in subject, features and activity are merged and the complete data stored in merged_data.

### 4.	As a result of extracting the mean and standard deviation measurements (containing mean and std ) was created tidy_data.
### 5.	The activity identifiers (originally numbers ) were replaced with descriptive activity names.

* LAYING: subject was laying
* SITTING: subject was sitting
* STANDING: subject was standing
* WALKING: subject was walking
* WALKING_UPSTAIRS: subject was walking upstairs
* WALKING_DOWNSTAIRS: subject was walking downstairs

### 6.	Appropriately labels the data set with descriptive variable names.

* Everything that starts from **t** replaced by **Time**
* Everything that starts from **f** replaced by **Frequency**
* **Gyro** replaced by **Gyroscope**
* **Acc** replaced by **Accelerometer**
* **Mag** replaced by **Magnitude** 
* **BodyBody** replaced by **Body**

### 7.	From the data set in step 4, the final data set was created  (Final_tidy_data) with the average of each variable for each activity and each subject. Exported into Tidy_data.txt file.


