#Load Librarys
library(data.table)

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

#One Observation per row
TallData <- melt(MasterData, id = c("ActivityName", "SubjectID"), measure.vars = grep("mean|std", names(MasterData)),variable.name = "feature")

#Human Readable Text
TallData$feature <- sub("^t","TimeDomain",TallData$feature)
TallData$feature <- sub("^f","FrequencyDomain",TallData$feature)
TallData$feature <- sub("Acc","Accelerometer",TallData$feature)
TallData$feature <- sub("Gyro","Gyroscope",TallData$feature)
TallData$feature <- sub("Mag","Magnitude",TallData$feature)
TallData$feature <- sub("gravity","Gravity",TallData$feature)


#Write Output to file
TidyData <- TallData
TinyTidyData <- aggregate(TidyData$value, by = list(TidyData$ActivityName, TidyData$SubjectID, TidyData$feature), FUN = mean)
write.table(TidyData, file = "TidyData.txt", row.names = FALSE)