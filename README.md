# Getting and Cleaning Data Course Project

Overview
--------

- This project takes data that was collected from the accelerometers of a Samsung Galaxy S smartphone and creates table data averaging the mean and standard deviation of select data for each research subject and activity.

Preprocessing Requirements
--------------------------
-  Read the full description of the original dataset, which is available here:

  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

- Download the original dataset:

  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

- Unzip the dataset above so that it creates a folder named "UCI_HAR_Dataset".

- Set your R working directory to point to the folder containing the "UCI_HAR_Dataset".

- Run the run_analysis.R script

Script Functions
----------------

  The run_analysis.R script performs the following tasks:

  1. Merges the training and the test data sets to create one data set.

  2. Extracts only the measurements on the mean and standard deviation for each measurement.

  3. Provides the descriptive activity name for each activity code in the data set.

  4. Appropriately labels the data set with descriptive variable names.

  5. Creates a second, independent tidy data set with the average of each variable described above for each activity and each subject.
 
Output
------

- The script outputs a file called "getcleandataproject.txt".

- A description of the variables in this file can be found in the "Codebook.txt" file.
