# Getting and Cleaning Data Course Project

## Purpose of this Project
The purpose of this project is to demonstrate course participants' ability to collect, work with, and clean a dataset, as part of Johns Hopkins University's course assignment.

## Project Requirements
To create a R script (called run_analysis.R) that does the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## About the Dataset
Data was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description and the source of dataset can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## The run_analysis.R Script
Briefly, the run_analysis.R script does the following:
1. Downloading and unzipping the data zip file.
2. Reading data from the six .txt files (i.e. subject_test.txt, X_test.txt, Y_test.txt, subject_train.txt, X_train.txt, Y_train.txt).
3. Extracting 66 variables on the mean and standard deviation from X_test and X_train which is part of the project requirement.
4. Labelling the column names.
5. Combining all the six datasets together to form one dataset.
6. Reshaping the dataset to form the second tidy dataset with the average of each variable for each activity and each subject
7. Exporting the tidy dataset to .csv and .txt

## Other Documents
Besides the run_analysis.R script, other documents in this repo include:
* A CodeBook
* The tidy dataset in .csv and .txt formats
