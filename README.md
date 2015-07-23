## Comments re run_analysis.R ##

1. Assumes the required data files are in the working directory:
      a) X_test.txt  
      b) y_test.txt  
      c) subject_test.txt  
      d) X_train.txt  
      e) y_train.txt  
      f) subject_train.txt  
      g) activity_labels.txt  
      h) features.txt  

2. Must have the following packages installed: 
      a) plyr  
      b) dplyr  

3. Code (following numbering corresponds with the comments in the code itself)
      a) Reads the required data files from 1. into R  
      b) Combines the Test and Train data into one data set  
      c) Also includes Subject and Activity  
      d) Adds headings to the data set, as per the original data  
      e) Removes duplicate column names  
      f) Selects only the measurement data with 'mean()' or 'std()' in the name  
      g) Groups the selected data by Subject and Activity  
      h) Takes the mean of all the measurement data  
      i) Writes the final grouped data to a file 'tidy_data.txt'  