## CODE BOOK ##
  
  
#### METHODOLOGY ####

1. There were 30 subjects in the study, numbered 1 to 30 in the data, in two files:  
        a) subject_test.txt  
        b) subject_train.txt  

2. All their 561 measurements from the study are contained in the following, corresponding, files:  
        1) X_test.txt  
        2) X_train.txt  
        The headings for these are in 'features.txt', included in the original data.  
        
3. Each row in these two files corresponds to measurements from a specific activity, labelled 1-6, and are found in the following, corresponding two files:  
        a) Y_test.txt  
        b) Y_train.txt  
        The headings for these are in 'activity_labels.txt', included in the original data.  
        
4. All 6 files above (and the corresponding headings of each of the columns) were combined into one data set, including the column headings, and any duplicate column names were removed.  The combined data set is called 'Merge_All'.  

5. From 'Merge_All', only measurements with 'mean()' and 'std()' were selected, as 
these measurements are the ones that are the 'true' means/standard deviations of that particular measurement.  The selected data is called 'Reqd_Data'.  

6. 'Reqd_Data' was then grouped by Subject and Activity. For each Subject and Activity, the mean of each of the selected measurements was taken, and then saved into a filed called 'tidy_data.txt'.  

7. Can read 'tidy_data.txt' using the read_table() command using default settings.

8. This is probably not the most efficient way to clean the data, but it does the job :)  Any suggestions for improvements are always welcome.
  
  
#### FINAL DATA: tidy_data.txt ####

Data Item   |   Label                    |     Values  
------------|----------------------------|-----------------------------  
1           |   Subject                  | Numbers 1 to 30  
2           |   Activity                 |      WALKING  
|||                                         WALKING_UPSTAIRS  
|||                                         WALKING_DOWNSTAIRS  
|||                                             SITTING  
|||                                             STANDING  
|||                                              LAYING   
3           | tBodyAcc-mean()-X          | Items 3-68 are the mean of  
4           | tBodyAcc-mean()-Y          | that particular measurement,   
5           | tBodyAcc-mean()-Z          | as outlined in the original  
6           | tGravityAcc-mean()-X       | data set  
7           | tGravityAcc-mean()-Y       |  
8           | tGravityAcc-mean()-Z       |   
9           | tBodyAccJerk-mean()-X      |   
10          | tBodyAccJerk-mean()-Y      |   
11          | tBodyAccJerk-mean()-Z      |   
12          | tBodyGyro-mean()-X         |          
13          | tBodyGyro-mean()-Y         |  
14          | tBodyGyro-mean()-Z         |  
15          | tBodyGyroJerk-mean()-X     |  
16          | tBodyGyroJerk-mean()-Y     |  
17          | tBodyGyroJerk-mean()-Z     |  
18          | tBodyAccMag-mean()         |  
19          | tGravityAccMag-mean()      |  
20          | tBodyAccJerkMag-mean()     |  
21          | tBodyGyroMag-mean()        |  
22          | tBodyGyroJerkMag-mean()    |  
23          | fBodyAcc-mean()-X          |   
24          | fBodyAcc-mean()-Y          |   
25          | fBodyAcc-mean()-Z          |  
26          | fBodyAccJerk-mean()-X      |  
27          | fBodyAccJerk-mean()-Y      |  
28          | fBodyAccJerk-mean()-Z      |  
29          | fBodyGyro-mean()-X         |  
30          | fBodyGyro-mean()-Y         |  
31          | fBodyGyro-mean()-Z         |  
32          | fBodyAccMag-mean()         |  
33          | fBodyBodyAccJerkMag-mean() |   
34          | fBodyBodyGyroMag-mean()    |   
35          | fBodyBodyGyroJerkMag-mean()|   
36          | tBodyAcc-std()-X           |    
37          | tBodyAcc-std()-Y           |  
38          | tBodyAcc-std()-Z           |  
39          | tGravityAcc-std()-X        |  
40          | tGravityAcc-std()-Y        |  
41          | tGravityAcc-std()-Z        |  
42          | tBodyAccJerk-std()-X       |  
43          | tBodyAccJerk-std()-Y       |  
44          | tBodyAccJerk-std()-Z       |  
45          | tBodyGyro-std()-X          |  
46          | tBodyGyro-std()-Y          |  
47          | tBodyGyro-std()-Z          |  
48          | tBodyGyroJerk-std()-X      |  
49          | tBodyGyroJerk-std()-Y      |  
50          | tBodyGyroJerk-std()-Z      |  
51          | tBodyAccMag-std()          |  
52          | tGravityAccMag-std()       |  
53          | tBodyAccJerkMag-std()      |  
54          | tBodyGyroMag-std()         |  
55          | tBodyGyroJerkMag-std()     |  
56          | fBodyAcc-std()-X           |  
57          | fBodyAcc-std()-Y           |  
58          | fBodyAcc-std()-Z           |  
59          | fBodyAccJerk-std()-X       |  
60          | fBodyAccJerk-std()-Y       |  
61          | fBodyAccJerk-std()-Z       |  
62          | fBodyGyro-std()-X          |  
63          | fBodyGyro-std()-Y          |  
64          | fBodyGyro-std()-Z          |  
65          | fBodyAccMag-std()          |  
66          | fBodyBodyAccJerkMag-std()  |    
67          | fBodyBodyGyroMag-std()     |  
68          | fBodyBodyGyroJerkMag-std() |