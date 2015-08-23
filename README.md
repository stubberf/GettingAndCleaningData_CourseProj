# GettingAndCleaningData_CourseProj
Repo for Getting and Cleaning Data Coursera Course

##Summary
The instructions below will allow you to recreate a summarized tidy 
dataset version of the original *Human Activity Recognition Using 
Smartphones Data Set*. 
You will need to run the R file "run_analysis". The instructions will 
describe the setup needed to perform this correctly. 

##How to Prepare Tidy dataset
1. Download the original dataset Human Activity Recognition Using 
   Smartphones Data Set Version 1.0 from: 
   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
2. In order to run the R script "run_analysis.R" you will need the 
   following files in the working directory:
	* subject_test.txt
	* subject_train.txt
	* X_test.txt
	* X_train.txt
	* y_test.txt
	* y_train.txt
	* features.txt
3. Additionally, R setup will need to have the package "dplyr" 
   installed
4. Run the version 3.2.1 or newer will be need to script :
Run the R script "run_analysis.R"

#### Please note:
* The "run_analysis.R" script was designed with R version 3.2.1

##The dataset includes the following files:
* 'README.md'
* 'run_analysis.R': R program to recreate the tidy dataset
* 'UCI HAR Dataset - Final Tidy.txt': The final summarized tidy dataset
* 'features.txt': List of all features.
* 'X_train.txt': Training set.
* 'y_train.txt': Training labels.
* 'X_test.txt': Test set.
* 'y_test.txt': Test labels.
