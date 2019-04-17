#Load Librarys
library(data.table)

filename <- "UCI HAR Dataset.zip"

#Download Files
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  

#Unzip Files
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

#Load files
FeatureNames <- read.table("UCI HAR Dataset/features.txt", sep = " ")
ActivityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("ActivityNumber", "ActivityName"))
TestLabels <- read.table("UCI HAR Dataset/test/y_test.txt", sep = " ", col.names = "ActivityNumber")
SubjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "SubjectID")
TestData <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = FeatureNames$V2)
TrainingLabels <- read.table("UCI HAR Dataset/train/y_train.txt", sep = " ", col.names = "ActivityNumber")
SubjectTraining <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "SubjectID")
TrainingData <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = FeatureNames$V2)

#Merge Files
TestData <- cbind(TestLabels, TestData)
TestData <- cbind(SubjectTest, TestData)
TrainingData <- cbind(TrainingLabels, TrainingData)
TrainingData <- cbind(SubjectTraining, TrainingData)
MasterData <- rbind(TestData, TrainingData)
MasterData <- merge(ActivityLabels,MasterData)

MasterData <- MasterData[grep("Name|Subject|mean|std", names(MasterData))]

#Human Readable Text
names(MasterData) <- sub("^t","TimeDomain",names(MasterData))
names(MasterData) <- sub("^f","FrequencyDomain",names(MasterData))
names(MasterData) <- sub("Acc","Accelerometer",names(MasterData))
names(MasterData) <- sub("Gyro","Gyroscope",names(MasterData))
names(MasterData) <- sub("Mag","Magnitude",names(MasterData))
names(MasterData) <- sub("gravity","Gravity",names(MasterData))


#Write Output to file
TidyData <- aggregate(MasterData[grep("mean|std", names(MasterData))], by = list(MasterData$ActivityName, MasterData$SubjectID), FUN = mean)
names(TidyData) <- sub("Group.1", "ActivityName", names(TidyData))
names(TidyData) <- sub("Group.2", "SubjectID", names(TidyData))
write.table(TidyData, file = "TidyData.txt", row.names = FALSE)