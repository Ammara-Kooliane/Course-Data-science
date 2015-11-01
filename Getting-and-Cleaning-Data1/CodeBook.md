The final output finaldata.txt contains the average measures of accelerometer and gyroscope variables (for example "tbodyaccmeanx") for each activity ("activitylabel"), and each subject ("subjectid").  

The body acceleration signal obtained by subtracting the gravity from the total acceleration.
The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

##run_analysis.R walkthrough

It follows the goals step by step.
Note: the R script is built to run without including any libraries for the purpose of this course.

    Step 1:
        Reading all the test and training files: 
        - y_test.txt, 
        - subject_test.txt 
        - X_test.txt
        - X_train.txt
        - y_train.txt
        - subject_train.txt
        - activity_labels.txt
        - features.txt
        Renaming the columns and combining the files to a data frame in the form of subjects, labels, the rest of the         data.

    Step 2:
        Extracting only the measurements on the mean and standard deviation for each measurement in a new data frame.

    Step 3:
        Using descriptive activity names to name the activities in the data set and removing irrelevent column.
    
    Step 4:
        Appropriately labeling the data set with descriptive variable names : removing uppercase characters,                  punctuation and redundant terms

    Step 5:
        Createing a second, independent tidy data set with the average of each variable for each activity and each            subject
        
    Final step:
        Write the new tidy set into a text file called finaldata.txt, formatted similarly to the original files.

