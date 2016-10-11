#Load necessary packages
library(dplyr)
  
#Label the data set with descriptive variable names.
  #read the feature and activity names into R
  features<-read.table('./UCI_HAR_Dataset/features.txt',sep=" ")
  activity_labels<-read.table('./UCI_HAR_Dataset/activity_labels.txt',sep=" ",col.names=c("activity_id","activity"))

  #define the column size for the x data
  
  #Task 4: load the test and train data with variable names including activities and subjectids
  xtest<-read.fwf('./UCI_HAR_Dataset/test/X_test.txt',fixedlenx,col.names=features$V2)
  ytest<-read.fwf('./UCI_HAR_Dataset/test/y_test.txt',2,col.names=c("activity_id"))
  subjtest<-read.fwf('./UCI_HAR_Dataset/test/subject_test.txt',2,col.names=c("subjectid"))
  xtrain<-read.fwf('./UCI_HAR_Dataset/train/y_train.txt',fixedlenx,col.names=features$V2)
  ytrain<-read.fwf('./UCI_HAR_Dataset/train/y_train.txt',2,col.names=c("activity_id"))
  subjtrain<-read.fwf('./UCI_HAR_Dataset/train/subject_train.txt',2,col.names=c("subjectid"))

  #Task 1: Merge the training and the test sets to create one data set.  
  allx<-rbind(xtest,xtrain)
  ally<-rbind(ytest,ytrain)
  allsubj<-rbind(subjtest,subjtrain)
  
#Task 2: Extracts the mean and standard deviation for each measurement.
  allx<-allx[,grep("[Mm]ean|std", names(allx), value = TRUE)]  
  
#Task 3: Rename the activities in the data set using a more descriptive activity name   
  ally<-merge(ally,activity_labels,by="activity_id")
  
#Merge subject and activity data with measurement data
  alldata<-cbind(allsubj,ally,allx)
  
#Task 5:Create a second dataset with the average of each variable from task 4 for each activity and each subject.
  grpalldata<-group_by(alldata,subjectid,activity_id,activity)
  avgalldata<-summarise_each(grpalldata,funs(mean(.,na.rm=TRUE)))
  names(avgalldata)[4:89]<-paste("avg",names(avgalldata)[4:89],sep="_")
  write.table(avgalldata,file="getcleandataproject.txt",row.name=FALSE)
  
    
