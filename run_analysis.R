
## a) Reading data into R ##
X_test <- read.table("X_test.txt", header = FALSE)
Y_test <- read.table("y_test.txt", header = FALSE)
subject_test <- read.table("subject_test.txt", header = FALSE)

X_train <- read.table("X_train.txt", header = FALSE)
Y_train <- read.table("y_train.txt", header = FALSE)
subject_train <- read.table("subject_train.txt", header = FALSE)

activities <- read.table("activity_labels.txt", header = FALSE)
colnames(activities) <- c("ActivityNo", "Activity")

## b) & c) Combine test & training data ##
Merge_Test <- cbind(X_test,Y_test, subject_test)
Merge_Train <- cbind(X_train,Y_train, subject_train)
Merge_All <- rbind(Merge_Test,Merge_Train)

## d) Add Headings ##
Headings <- read.table("features.txt", header = FALSE)
Headings <- select(Headings,V2)
Headings <- as.list(t(Headings))
Headings <- c(Headings,"ActivityNo", "Subject")
colnames(Merge_All) <- Headings

## e) Remove duplicate column names ##
Merge_All <- Merge_All[ , !duplicated(colnames(Merge_All))]

## f) Select the required data ##
Data_Mean <- select(Merge_All,contains("mean()"))
Data_Std <- select(Merge_All,contains("std()"))
Data_Other <- select(Merge_All,Subject, ActivityNo)
Data_Other <- join(Data_Other, activities, by = "ActivityNo")

Reqd_Data <- cbind(Data_Other, Data_Mean, Data_Std)
Reqd_Data <- select(Reqd_Data, -ActivityNo)

## g) Group data by subject and activity ##
Grp <- Reqd_Data %>% group_by(Subject,Activity)

## h) Takes the mean of all the measurement data ##
GrpSummary <- summarise_each(Grp,funs(mean))

## i) Writes the output into a file called 'tidy_data.txt'  ##
write.table(GrpSummary,file="tidy_data.txt")