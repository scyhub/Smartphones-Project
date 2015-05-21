# Code book

This document contains a description of the variables included in the text file HARbySGS.txt that results of running the R script run_analysis.R created for the project of the Coursera course: Getting and Cleaning Data.

The text file HARbySGS.txt contains information about a total of 68 variables, with 180 different observations for each of them, i.e., the file contains 68 columns and 180 rows of data. This data were collected during the experiment *Human Activity Recognition Using Smartphones Data Set* described in: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Specifically, the variables included in the text file HARbySGS.txt are:

subjectID: This is the identifier of the subject who carried out the experiment and takes integer values ranging from 1 to 30.

	1. subjectID

activity: This is the descriptive name of each one of the six activities performed by the subjects during the experiment and takes the values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.

	2. activity

tBodyAcc-mean()/std()-X/Y/Z: Mean - mean () - and standard deviation - std() - values of the body linear acceleration signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	3. tBodyAcc-mean()-X 

	4. tBodyAcc-mean()-Y

	5. tBodyAcc-mean()-Z

	6. tBodyAcc-std()-X

	7. tBodyAcc-std()-Y

	8. tBodyAcc-std()-Z

tGravityAcc-mean()/std()-X/Y/Z: Mean - mean () - and standard deviation - std() - values of the gravity linear acceleration signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	9. tGravityAcc-mean()-X

	10. tGravityAcc-mean()-Y

	11. tGravityAcc-mean()-Z

	12. tGravityAcc-std()-X

	13. tGravityAcc-std()-Y

	14. tGravityAcc-std()-Z

tBodyAccJerk-mean()/std()-X/Y/Z: Mean - mean () - and standard deviation - std() - values of the Jerk signal obtained from the body linear acceleration signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	15. tBodyAccJerk-mean()-X

	16. tBodyAccJerk-mean()-Y

	17. tBodyAccJerk-mean()-Z

	18. tBodyAccJerk-std()-X

	19. tBodyAccJerk-std()-Y

	20. tBodyAccJerk-std()-Z

tBodyGyro-mean()/std()-X/Y/Z: Mean - mean () - and standard deviation - std() - values of the body angular velocity signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	21. tBodyGyro-mean()-X

	22. tBodyGyro-mean()-Y

	23. tBodyGyro-mean()-Z

	24. tBodyGyro-std()-X

	25. tBodyGyro-std()-Y

	26. tBodyGyro-std()-Z

tBodyGyroJerk-mean()/std()-X/Y/Z: Mean - mean () - and standard deviation - std() - values of the Jerk signal obtained from the body angular velocity signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	27. tBodyGyroJerk-mean()-X

	28. tBodyGyroJerk-mean()-Y

	29. tBodyGyroJerk-mean()-Z

	30. tBodyGyroJerk-std()-X

	31. tBodyGyroJerk-std()-Y

	32. tBodyGyroJerk-std()-Z

tBodyAccMag-mean()/std(): Mean - mean () - and standard deviation - std() - values of the magnitude of the body linear acceleration signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	33. tBodyAccMag-mean()

	34. tBodyAccMag-std()

tGravityAccMag-mean()/std(): Mean - mean () - and standard deviation - std() - values of the magnitude of the gravity linear acceleration signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	35. tGravityAccMag-mean()

	36. tGravityAccMag-std()

tBodyAccJerkMag-mean()/std(): Mean - mean () - and standard deviation - std() - values of the magnitude of the Jerk signal obtained from the body linear acceleration signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	37. tBodyAccJerkMag-mean()

	38. tBodyAccJerkMag-std()

tBodyGyroMag-mean()/std(): Mean - mean () - and standard deviation - std() - values of the magnitude of the body angular velocity signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	39. tBodyGyroMag-mean()

	40. tBodyGyroMag-std()

tBodyGyroJerkMag-mean()/std(): Mean - mean () - and standard deviation - std() - values of the magnitude of the Jerk signal obtained from the body angular velocity signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	41. tBodyGyroJerkMag-mean()

	42. tBodyGyroJerkMag-std()

fBodyAcc-mean()/std()-X/Y/Z: Mean - mean () - and standard deviation - std() - values of the Fast Fourier Transform (FFT) of the body linear acceleration signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	43. fBodyAcc-mean()-X

	44. fBodyAcc-mean()-Y

	45. fBodyAcc-mean()-Z

	46. fBodyAcc-std()-X

	47. fBodyAcc-std()-Y

	48. fBodyAcc-std()-Z

fBodyAccJerk-mean()/std()-X/Y/Z: Mean - mean () - and standard deviation - std() - values of the Fast Fourier Transform (FFT) of the Jerk signal obtained from the body linear acceleration signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	49. fBodyAccJerk-mean()-X

	50. fBodyAccJerk-mean()-Y

	51. fBodyAccJerk-mean()-Z

	52. fBodyAccJerk-std()-X

	53. fBodyAccJerk-std()-Y

	54. fBodyAccJerk-std()-Z

fBodyGyro-mean()/std()-X/Y/Z: Mean - mean () - and standard deviation - std() - values of the Fast Fourier Transform (FFT) of the body angular velocity signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	55. fBodyGyro-mean()-X

	56. fBodyGyro-mean()-Y

	57. fBodyGyro-mean()-Z

	58. fBodyGyro-std()-X

	59. fBodyGyro-std()-Y

	60. fBodyGyro-std()-Z

fBodyAccMag-mean()/std(): Mean - mean () - and standard deviation - std() - values of the Fast Fourier Transform (FFT) of the magnitude of the body linear acceleration signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	61. fBodyAccMag-mean()

	62. fBodyAccMag-std()

fBodyAccJerkMag-mean()/std(): Mean - mean () - and standard deviation - std() - values of the Fast Fourier Transform (FFT) of the magnitude of the Jerk signal obtained from the body linear acceleration signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	63. fBodyAccJerkMag-mean()

	64. fBodyAccJerkMag-std()

fBodyGyroMag-mean()/std(): Mean - mean () - and standard deviation - std() - values of the Fast Fourier Transform (FFT) of the magnitude of the body angular velocity signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	65. fBodyGyroMag-mean()

	66. fBodyGyroMag-std()

fBodyGyroJerkMag-mean()/std(): Mean - mean () - and standard deviation - std() - values of the Fast Fourier Transform (FFT) of the magnitude of the Jerk signal obtained from the body angular velocity signal in the X, Y and Z directions. These values are normalized and bounded within [-1,1].

	67. fBodyGyroJerkMag-mean()

	68. fBodyGyroJerkMag-std() 



As it is explained in the features_info.txt file included in the data set description, the features selected for the database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal (tAcc-XYZ) was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration (tBodyAcc-XYZ ) and angular velocity (tBodyGyro-XYZ ) were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
