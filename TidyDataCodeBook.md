Tidy Data Project Code Book

=================

The TidyData.txt file has one table with 813621 values described by four variables 

* ActivityName
* SubjectID
* feature
* value

ActivityName is the name of the activity for which the value was reported, 6 different values

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

SubjectID is the individual, among 30, for whom the value was reported

The other variables are each headed by a collection of identifiers for what the measurement is and how it was measured and contain the average of the presented data

* Time/Frequency Domain, identifies if the data is based on raw captured data (Time) or the Fast Fourier Transform of that data (Frequency)
* Body/Gravity, identifies if the acceleration identified was attributed to the body or to gravity by a low pass Butterworth filter
* Accelerometer/Gyroscope, identifies if the value was measured by the device's accelerometer or the gyroscope
* X/Y/Z/Magnitude, identifies the direction of the acceleration in the 3-axial inertial frame (X, Y, or Z) or the magnitude in the direction of the acceleration itself (Magnitude)
* Angle, indicates the value measures the angle between the identified values
* mean/std, indicateds if the value is a mean or standard deviation
 