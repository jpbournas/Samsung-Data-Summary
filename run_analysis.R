## open the data files and merge into one file with test first and train after
test <-read.table("./Samsung/Data/test/X_test.txt",header=FALSE,sep="")
train <-read.table("./Samsung/Data/train/X_train.txt",header=FALSE,sep="")
mergeddata <- data.frame(rbind(test,train))
        
        
## retrieve all the column names from features files and extract only the one with mean and std
nom_col <- read.table("./Samsung/Data/features.txt", header=FALSE,sep="")
list_mean<-grep("mean",nom_col[,2])
list_std<-grep("std",nom_col[,2])
col_extract <- sort(c(list_mean,list_std))
list_heading <- as.character(nom_col[col_extract,2])

## subset main data set with only mean and std columns
sub_meanstd <-mergeddata[,col_extract]
        
## open and merge the label files with first test and after train
testlabels <-read.table("./Samsung/Data/test/Y_test.txt",header=FALSE,sep="",colClasses = "character")
trainlabels <-read.table("./Samsung/Data/train/Y_train.txt",header=FALSE,sep="",colClasses = "character")
mergedlabels <- data.frame(rbind(testlabels,trainlabels))
        
##open the file containing the activity names and create a column in main data file for activity name
activitylabels <-read.table("./Samsung/Data/activity_labels.txt",header=FALSE,sep="",colClasses = "character")
sub_meanstd <- cbind(activityname =0, sub_meanstd)
        
## loop through the main data set to populate activity name for each row based on the labels in activity_labels.txt
for (i in 1:nrow(sub_meanstd)) {
                
        sub_meanstd[i,1] <- activitylabels[mergedlabels[i,1],2]
}
        
## name columns in main data set        
colnames(sub_meanstd) <- c("ActivityName",list_heading)
        
## open and merge the label files with first test and after train
testsubjects <-read.table("./Samsung/Data/test/subject_test.txt",header=FALSE,sep="")
trainsubjects <-read.table("./Samsung/Data/train/subject_train.txt",header=FALSE,sep="")
mergedsubjects <- data.frame(rbind(testsubjects,trainsubjects))
        

##add subject colum to main data set
sub_meanstd2 <- cbind(mergedsubjects, sub_meanstd)
colnames(sub_meanstd2)[1] <- "Subject"
        

final_output <- aggregate(. ~ ActivityName+Subject,data = sub_meanstd2,FUN=mean)

## create the final file
write.table(final_output,file="SamsungMeasureSummary.txt",sep=" ",row.names=FALSE)

