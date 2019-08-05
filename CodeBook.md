# The CodeBook of the Tidy Dataset

## Brief Details of Subjects and Activities:
* There are a total of 30 participants, within an age bracket of 19-48 years. 
* Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

## Brief Details of Variables:
* There are a total of 68 variables. Other than the subject and activity variables, each of the remaining 66 variables is the average value of the signal for each subject and activity.
* The features recorded the accelerometer and gyroscope 3-axial raw signals: tAcc-XYZ and tGyro-XYZ. 
* The suffix 'X', 'Y' or 'Z' is used to denote 3-axial signals in the X, Y and Z directions. 
* The time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.
* The prefix 'f' denotes that a Fast Fourier Transform (FFT) was applied to these signals.

## The 68 Variables
* "subject" - the ID of the 30 participants
* "activity" - each participant performed the following six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

### The Remaining 66 Signal Variables
The remaining 66 signal variables are the average values of the signals for each subject and activity.

 [1] "tBodyAcc_mean_X"          
 [2] "tBodyAcc_mean_Y"          
 [3] "tBodyAcc_mean_Z"          
 [4] "tBodyAcc_std_X"           
 [5] "tBodyAcc_std_Y"           
 [6] "tBodyAcc_std_Z"           
 [7] "tGravityAcc_mean_X"       
 [8] "tGravityAcc_mean_Y"       
 [9] "tGravityAcc_mean_Z"       
[10] "tGravityAcc_std_X"        
[11] "tGravityAcc_std_Y"        
[12] "tGravityAcc_std_Z"        
[13] "tBodyAccJerk_mean_X"      
[14] "tBodyAccJerk_mean_Y"      
[15] "tBodyAccJerk_mean_Z"      
[16] "tBodyAccJerk_std_X"       
[17] "tBodyAccJerk_std_Y"       
[18] "tBodyAccJerk_std_Z"       
[19] "tBodyGyro_mean_X"         
[20] "tBodyGyro_mean_Y"         
[21] "tBodyGyro_mean_Z"         
[22] "tBodyGyro_std_X"          
[23] "tBodyGyro_std_Y"          
[24] "tBodyGyro_std_Z"          
[25] "tBodyGyroJerk_mean_X"     
[26] "tBodyGyroJerk_mean_Y"     
[27] "tBodyGyroJerk_mean_Z"     
[28] "tBodyGyroJerk_std_X"      
[29] "tBodyGyroJerk_std_Y"      
[30] "tBodyGyroJerk_std_Z"      
[31] "tBodyAccMag_mean"         
[32] "tBodyAccMag_std"          
[33] "tGravityAccMag_mean"      
[34] "tGravityAccMag_std"       
[35] "tBodyAccJerkMag_mean"     
[36] "tBodyAccJerkMag_std"      
[37] "tBodyGyroMag_mean"        
[38] "tBodyGyroMag_std"         
[39] "tBodyGyroJerkMag_mean"    
[40] "tBodyGyroJerkMag_std"     
[41] "fBodyAcc_mean_X"          
[42] "fBodyAcc_mean_Y"          
[43] "fBodyAcc_mean_Z"          
[44] "fBodyAcc_std_X"           
[45] "fBodyAcc_std_Y"           
[46] "fBodyAcc_std_Z"           
[47] "fBodyAccJerk_mean_X"      
[48] "fBodyAccJerk_mean_Y"      
[49] "fBodyAccJerk_mean_Z"      
[50] "fBodyAccJerk_std_X"       
[51] "fBodyAccJerk_std_Y"       
[52] "fBodyAccJerk_std_Z"       
[53] "fBodyGyro_mean_X"         
[54] "fBodyGyro_mean_Y"         
[55] "fBodyGyro_mean_Z"         
[56] "fBodyGyro_std_X"          
[57] "fBodyGyro_std_Y"          
[58] "fBodyGyro_std_Z"          
[59] "fBodyAccMag_mean"         
[60] "fBodyAccMag_std"          
[61] "fBodyBodyAccJerkMag_mean" 
[62] "fBodyBodyAccJerkMag_std"  
[63] "fBodyBodyGyroMag_mean"    
[64] "fBodyBodyGyroMag_std"     
[65] "fBodyBodyGyroJerkMag_mean"
[66] "fBodyBodyGyroJerkMag_std" 
