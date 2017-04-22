# gettingdata
Coursera - getting &amp; cleaning data. Week 4, assignment 1.
FB 4/21/17.

## Synopsis
This repo contains the files necessary to complete the week 4 assignemnt of the Coursera course called "getting and cleaning data". The purpose of the assignment is to demonstrate the ability to process data.

## Data source & description. 
The data used here were collected from the accelerometers from the Samsung Galaxy S smartphone. Briefly, 30 test subject were monitored as they performed six activities: walking, walking up stairs, walking down stairs, sitting, standing, & laying. The provided data result from various measurements of the subjects' motions when performing each of the six activities. The data were split into a test set (subdirectory "test") and a training set (subdir "train"). 

A full description is available at the site where the data was obtained: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

Here is the data set for the project: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Brief explanation of the data files

Note that these files are not included in this repo. Links to the files are provided above.

1.  activity_labels.txt: explains how the activities are coded. Activity is a factor variable with six levels, enumerated as indicated in the file. 
2.  features_info.txt: provides some details as to what each variable is measuring. 
3.  features.txt: this is a list of the 561 variables measured.
4.  ./test/Inertial\ Signals: the data in this subdir are outside the scope of this assignment. Delete the entire subdir.
5.  ./test/subject_test.txt: part of the test set data. 2947 observations of 1 variable, which is the subject number (in the range 1 - 30).
6.  ./test/X_test.txt: part of the test set data. 2947 observations of 561 variables. These are the motion measurements.  
7.  ./test/y_test.txt: part of the test set data. 2947 observations of 1 variable with numeric values 1-6. These are the levels of the "activity" factor variable. 
8.  ./train/Inertial\ Signals: analogous to #4. Delete the entire subdir.
9.  ./train/subject_train.txt: "training" set data. Analogous to #5.
10. ./train/X_train.txt: "training" set data. Analogous to #6.
11. ./train/y_train.txt: "training" set data. Analogous to #7.

## Tasks required for the assignment

1. Include in this GitHub repo one R script called *run_analysis.R* that does the following.
  * Merges the training and the test sets to create one data set.
  * Extracts only the measurements on the mean and standard deviation for each measurement.
  * Uses descriptive activity names to name the activities in the data set
  * Appropriately labels the data set with descriptive variable names.
  * From the data set in the previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
2. Upload the second data set (average of each variable by activity & subject) via the Coursera assignment website.
3. Include this README in this GitHub repo.
4. Write a codebook for the 2nd data set and include it in this repo. 
5. Submit a link to this repo via the Coursera assignemnt website.

## Files and their relevance
This repo includes the following files:

1. run_analysis.R: satisfies requirement #1 from the task list above.
2. README.md: satisfies requirement #3 from the task list above.
3. codebook.md: satisfies requirement #4 from the task list above.
