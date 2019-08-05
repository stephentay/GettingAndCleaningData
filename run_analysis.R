#Create destination folder for the zip file to be downloaded before downloading it
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile ="./data/assignment.zip")

##Unzip the file and setting new working directory to the unzipped folder
unzip("./data/assignment.zip", exdir = "./data")
setwd("./data/UCI HAR Dataset")

##Read data from the six .txt files
subj_test <- read.table("./test/subject_test.txt")
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/Y_test.txt")

subj_train <- read.table("./train/subject_train.txt")
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/Y_train.txt")

##Extract only variables on the mean and standard deviation for x_test and x_train. 
#We first read data of features' names, then use regular expression to identify the index of mean and standard deviation variables. Based on the index, we select the mean and standard deviation variables for x_test and x_train
features <- read.table("features.txt")
variablesOfInterest <- grep("mean[()]|std[()]",features[,2])
x_test <- x_test[,variablesOfInterest]
x_train <- x_train[,variablesOfInterest]

##Label the data set with descriptive variable names (note: names of x_test and x_train features can be found in the second column of the features variable)
variablesNames <- features[variablesOfInterest,2]
variablesNames <- gsub("[()]", "", variablesNames)  #remove parentheses from names
variablesNames <- gsub("[-]", "_", variablesNames)  #replace dashes with underscores

names(subj_test) <- "subject"
names(x_test) <- variablesNames
names(y_test) <- "activity"

names(subj_train) <- "subject"
names(x_train) <- variablesNames
names(y_train) <- "activity"

##cbind() to combine the columns together for both test and training sets
testset <- cbind(subj_test,x_test,y_test)
trainset <- cbind(subj_train,x_train,y_train)

##Merge the test and training sets to create one data set. The class of subject and activity variables should be factor
dataset <- rbind(testset, trainset)
dataset$subject <- as.factor(dataset$subject)
dataset$activity <- as.factor(dataset$activity)

##Replace numbers with descriptive activity names in the data set (note: the activity names can be found in the activity_labels.txt)
activityLabel <- read.table("activity_labels.txt")
levels(dataset$activity) <- activityLabel[,2]

##Use melt() and dcast() to create the second tidy dataset with the average of each variable for each activity and each subject (note: melt() and dcast() functions requires "plyr" and "reshape2" packages)
library("plyr")
library("reshape2")
meltedDataset <- melt(dataset)
tidyDataset <- dcast(meltedDataset, subject + activity ~ variable, mean)

##Export tidyDataset to .csv and .txt
write.csv(tidyDataset, file = "tidy.csv")
write.table(tidyDataset, file = "tidy.txt", row.name = FALSE)
