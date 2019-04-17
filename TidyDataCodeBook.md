Tidy Data Project Code Book

=================

The TidyData.txt file has one table with 180 Observations described by 81 variables 

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
* mean/std, indicateds if the value is the mean of a mean or a standard deviation
 
The full list of measured values is here.

* "TimeDomainBodyAccelerometer.mean...X"
* "TimeDomainBodyAccelerometer.mean...Y"
* "TimeDomainBodyAccelerometer.mean...Z"
* "TimeDomainBodyAccelerometer.std...X"
* "TimeDomainBodyAccelerometer.std...Y"
* "TimeDomainBodyAccelerometer.std...Z"
* "TimeDomainGravityAccelerometer.mean...X"
* "TimeDomainGravityAccelerometer.mean...Y"
* "TimeDomainGravityAccelerometer.mean...Z"
* "TimeDomainGravityAccelerometer.std...X"
* "TimeDomainGravityAccelerometer.std...Y"
* "TimeDomainGravityAccelerometer.std...Z"
* "TimeDomainBodyAccelerometerJerk.mean...X"                     
* "TimeDomainBodyAccelerometerJerk.mean...Y"                    
* "TimeDomainBodyAccelerometerJerk.mean...Z"                     
* "TimeDomainBodyAccelerometerJerk.std...X"                     
* "TimeDomainBodyAccelerometerJerk.std...Y"                      
* "TimeDomainBodyAccelerometerJerk.std...Z"                     
* "TimeDomainBodyGyroscope.mean...X"                             
* "TimeDomainBodyGyroscope.mean...Y"                            
* "TimeDomainBodyGyroscope.mean...Z"                             
* "TimeDomainBodyGyroscope.std...X"                             
* "TimeDomainBodyGyroscope.std...Y"                              
* "TimeDomainBodyGyroscope.std...Z"                             
* "TimeDomainBodyGyroscopeJerk.mean...X"                         
* "TimeDomainBodyGyroscopeJerk.mean...Y"                        
* "TimeDomainBodyGyroscopeJerk.mean...Z"                         
* "TimeDomainBodyGyroscopeJerk.std...X"                         
* "TimeDomainBodyGyroscopeJerk.std...Y"                          
* "TimeDomainBodyGyroscopeJerk.std...Z"                         
* "TimeDomainBodyAccelerometerMagnitude.mean.."                  
* "TimeDomainBodyAccelerometerMagnitude.std.."                  
* "TimeDomainGravityAccelerometerMagnitude.mean.."               
* "TimeDomainGravityAccelerometerMagnitude.std.."               
* "TimeDomainBodyAccelerometerJerkMagnitude.mean.."              
* "TimeDomainBodyAccelerometerJerkMagnitude.std.."              
* "TimeDomainBodyGyroscopeMagnitude.mean.."                      
* "TimeDomainBodyGyroscopeMagnitude.std.."                      
* "TimeDomainBodyGyroscopeJerkMagnitude.mean.."                  
* "TimeDomainBodyGyroscopeJerkMagnitude.std.."                  
* "FrequencyDomainBodyAccelerometer.mean...X"                    
* "FrequencyDomainBodyAccelerometer.mean...Y"                   
* "FrequencyDomainBodyAccelerometer.mean...Z"                    
* "FrequencyDomainBodyAccelerometer.std...X"                    
* "FrequencyDomainBodyAccelerometer.std...Y"                     
* "FrequencyDomainBodyAccelerometer.std...Z"                    
* "FrequencyDomainBodyAccelerometer.meanFreq...X"                
* "FrequencyDomainBodyAccelerometer.meanFreq...Y"               
* "FrequencyDomainBodyAccelerometer.meanFreq...Z"                
* "FrequencyDomainBodyAccelerometerJerk.mean...X"               
* "FrequencyDomainBodyAccelerometerJerk.mean...Y"                
* "FrequencyDomainBodyAccelerometerJerk.mean...Z"               
* "FrequencyDomainBodyAccelerometerJerk.std...X"                 
* "FrequencyDomainBodyAccelerometerJerk.std...Y"                
* "FrequencyDomainBodyAccelerometerJerk.std...Z"                 
* "FrequencyDomainBodyAccelerometerJerk.meanFreq...X"           
* "FrequencyDomainBodyAccelerometerJerk.meanFreq...Y"            
* "FrequencyDomainBodyAccelerometerJerk.meanFreq...Z"           
* "FrequencyDomainBodyGyroscope.mean...X"                        
* "FrequencyDomainBodyGyroscope.mean...Y"                       
* "FrequencyDomainBodyGyroscope.mean...Z"                        
* "FrequencyDomainBodyGyroscope.std...X"                        
* "FrequencyDomainBodyGyroscope.std...Y"                         
* "FrequencyDomainBodyGyroscope.std...Z"                        
* "FrequencyDomainBodyGyroscope.meanFreq...X"                    
* "FrequencyDomainBodyGyroscope.meanFreq...Y"                   
* "FrequencyDomainBodyGyroscope.meanFreq...Z"                    
* "FrequencyDomainBodyAccelerometerMagnitude.mean.."            
* "FrequencyDomainBodyAccelerometerMagnitude.std.."              
* "FrequencyDomainBodyAccelerometerMagnitude.meanFreq.."        
* "FrequencyDomainBodyBodyAccelerometerJerkMagnitude.mean.."     
* "FrequencyDomainBodyBodyAccelerometerJerkMagnitude.std.."     
* "FrequencyDomainBodyBodyAccelerometerJerkMagnitude.meanFreq.." 
* "FrequencyDomainBodyBodyGyroscopeMagnitude.mean.."            
* "FrequencyDomainBodyBodyGyroscopeMagnitude.std.."              
* "FrequencyDomainBodyBodyGyroscopeMagnitude.meanFreq.."        
* "FrequencyDomainBodyBodyGyroscopeJerkMagnitude.mean.."         
* "FrequencyDomainBodyBodyGyroscopeJerkMagnitude.std.."         
* "FrequencyDomainBodyBodyGyroscopeJerkMagnitude.meanFreq.."   