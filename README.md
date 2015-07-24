### Comments re cleaning the Samsung Smartphone Data ###

1. This should be read in conjunction with CodeBook.md in this repository, which contains the methodology used to come up with the final data set 'tidy_data.txt'.

2. Assumes the following required data files are in the working directory:  
      a) X_test.txt  
      b) y_test.txt  
      c) subject_test.txt  
      d) X_train.txt  
      e) y_train.txt  
      f) subject_train.txt  
      g) activity_labels.txt  
      h) features.txt  

3. Must have the following packages installed:  
      a) plyr  
      b) dplyr  

4. Code (following numbering corresponds with the comments in the code itself)  
      a) Reads the required data files from 1. into R  
      b) Combines the Test and Train data into one data set  
      c) Also includes Subject and Activity  
      d) Adds headings to the data set, as per the original data  
      e) Removes duplicate column names  
      f) Selects only the measurement data with 'mean()' or 'std()' in the name  
      g) Groups the selected data by Subject and Activity  
      h) Takes the mean of all the measurement data  
      i) Writes the final grouped data to a file 'tidy_data.txt'  
      
5. This is probably not the most efficient way to clean the data, but it does the job :)  Any suggestions for improvements are always welcome.