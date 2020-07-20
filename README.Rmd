---
title: "Getting and Cleaning Data Course Project"
author: "Elena Kotova"
date: "20 07 2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

This is a submission for Getting and Cleaning Data Course Project. It has the instructions on how to run analysis on Human Activity recognition dataset.

## Dataset

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

A full description is available at the site where the data was obtained:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

## Files

* CodeBook.md a code book that describes the contents of the data set (data, variables and transformations used to generate the data)

* run_analysis.R prepares data and follows the requirements specified in the task:
  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement.
  3. Uses descriptive activity names to name the activities in the data set
  4. Appropriately labels the data set with descriptive variable names.
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

* Tidy_data.txt is the exported final data.




