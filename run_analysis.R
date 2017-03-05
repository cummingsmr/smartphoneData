# the general flow of the process is described below:
# - download the data
# - read in the feature data first, for both the test and training datasets
# -- combine into one dataframe, Xdata
# - read in the response data, for both the test and training datasets
# -- combine into one dataframe, Ydata
# - read in the subject data, for both the test and training datasets
# -- combine into one dataframe, subjectID
# - read in the feature names, which will become the variable names
# - set all the column names for the dataframes
# - select the subset of the columns representing mean and standard dev measures
# - glue all the data together into one dataframe, allData
# - read in the defintions for the response variables
# - change the response numbers to categorical responses in the dataframe
# - clean up the variable names by removing parens, dashes, etc.
# - group the dataframe by subjectID, activity
# - summarize the grouped dataframe by determining the mean for each variable
# - write the dataframe to a csv file

setwd("~/coursera/getting_and_cleaning_data/project/")

if(!file.exists("./data")) {dir.create("./data")}

library(downloader)
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(fileUrl,dest="./data/sensor_data.zip",mode="wb")
unzip(zipfile = "./data/sensor_data.zip", exdir = "./data")

# start with the test data
# first read in the X_test.txt file, using varNames as column names
Xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt",
                    sep="",
                    header=FALSE)

# do the same steps with the training data
# first read in the X_train.txt file, using varNames as column names
Xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt",
                     sep="",
                     header=FALSE)

# row bind the Xtest, Xtrain data together
Xdata <- rbind(Xtest,Xtrain)

# read in the test response data
Ytest <- read.table("./data/UCI HAR Dataset/test/Y_test.txt",
                    sep="",
                    header=FALSE)
# read in the training response data
Ytrain <- read.table("./data/UCI HAR Dataset/train/Y_train.txt",
                     sep="",
                     header=FALSE)
# row bind the Ytest, Ytrain data together
Ydata <- rbind(Ytest,Ytrain)

# read in the subject id file, subject_test.txt
testSubjects <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",
                           sep="",
                           header=FALSE)
# read in the subject id file, subject_train.txt
trainSubjects <- read.table("./data/UCI HAR Dataset/train/subject_train.txt",
                            sep="",
                            header=FALSE)
# row bind the test, training subject ID data
subjectID <- rbind(testSubjects,trainSubjects)

# now we want to add column names to the two datasets
# read the feature names from file, use these as starting variable names
varNames <- read.table("./data/UCI HAR Dataset/features.txt",
                       sep="",
                       header=FALSE,
                       col.names = c("index","featureName"))

# use the feature names for the colnames of the Xdata
# Ydata consists of only the response data
# subjectID consists of only the subject ID number
colnames(Xdata) <- varNames$featureName
colnames(Ydata) <- c("response")
colnames(subjectID) <- c("subjectID")

# now we want to select the features that represent the mean measurements
# we want those features that have "-mean()" in the name
# which corresponds to measurements of position, velocity and acceleration
selectcols <- grep("-mean[-(][-)]",names(Xdata), value = TRUE)
meanCols <- Xdata[,selectcols]

# we want to do the same for the standard deviation measurements
selectcols <- grep("-std[-(][-)]",names(Xdata), value = TRUE)
stdCols <- Xdata[,selectcols]

# column bind the meanCols, stdCols data frames together
Xdata <- cbind(meanCols,stdCols)

# column bind Ydata, subjectID, Xdata together
allData <- cbind(Ydata,subjectID,Xdata)

# read in the activity definitions
activity <- read.table("./data/UCI HAR Dataset/activity_labels.txt",
                       sep="",
                       header=FALSE,
                       col.names = c("number","label"))

# make the activity labels more readable
# convert to all lower case
activity$label <- tolower(activity$label)

# remove underscore in label, change up to Up, down to Down
activity$label <- sub("_","",activity$label)
activity$label <- sub("up","Up",activity$label)
activity$label <- sub("down","Down",activity$label)

# rename the activities in all Data from a number to a label
relabelFunction <- function(x) {activity[activity$number == x,"label"]}
allData$response <- sapply(allData$response,relabelFunction)

# remove () from variable names
names(allData) <- sub("[-(][-)]","",names(allData))
# change -mean to Mean
names(allData) <- sub("-mean","Mean",names(allData))
# change -std to Std
names(allData) <- sub("-std","Std",names(allData))
# remove all dashes
names(allData) <- gsub("-","",names(allData))

library(dplyr)
grouped <- group_by(allData,subjectID,response)
outputData <- summarise_each(grouped,funs(mean))
write.table(outputData, file = "smarphoneData.csv",col.names =  TRUE, row.names = FALSE,
            sep = ",")
