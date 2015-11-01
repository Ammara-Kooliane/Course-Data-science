# Getting-and-Cleaning-Data
Assigment for week 3 of the course

Files in this repo

    - README.md which you are reading, introducing the work
    - CodeBook.md that describes the variables, the data and any transformations or work performed to clean up the   data
    - run_analysis.R is the script performing the analysis (more information below) 

The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone available at this website: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

##About the experiments:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

run_analysis.R performs the following analysis:    
    1. Merges the training and the test sets to create one data set. 
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set 
    4. Appropriately labels the data set with descriptive activity names. 
    5. Creates a second, independent tidy data set with the average of each variable for each activity and each           subject.

The final tidy data set is created in working directory with the name of finaldata.txt

Note: the R script is built to run without including any libraries for the purpose of this course.
