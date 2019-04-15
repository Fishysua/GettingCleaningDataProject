These are the instructions for creating my output for the Tidy Data class project

Download
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Unzip the file folder "UCI HAR Dataset" into your working directory

Run the "run_analysis.R" script, which will do the following
	* Load the libraries you require 
		[data.table]
	* Load the necessary labels
		[read.table]
	* Load the Test Data and the Training Data
		[read.table]
	* Apply the labels
		[cbind]
	* Append the tables
		[rbind]
	* Reshape table to 4 fields
		[melt]
	* Create human readable text
		[sub]
	* Output file
		[write.table]