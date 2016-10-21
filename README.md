# Getting and Cleaning Data Course Project

Prerequisites: 

- This project takes data that was collected from the accelerometers from the Samsung Galaxy S smartphone and processes it for a particular outcome. A full description of the original dataset is available at the site where the data was obtained:

  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

  - The original dataset can be found at:

  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

  - The script requires that you have downloaded and unzipped the dataset above.

  - It also assumes you are in the directory containing the unzipped folder and that it is named "UCI_HAR_Dataset".

Script:

  The run_analysis.R script performs the tasks:

  1. Merges the training and the test sets to create one data set.

  2. Extracts only the measurements on the mean and standard deviation for each measurement.

  3. Uses descriptive activity names to name the activities in the data set.

  4. Appropriately labels the data set with descriptive variable names.

  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each   subject.
 
Output:

- The script outputs a file called "getcleandataproject.txt".

- A description of the variables in this file can be found in the "Codebook.txt" file.
