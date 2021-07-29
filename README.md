# PREDICTING-THE-WEATHER-STABILITY-OF-AUSTRALIA
**Introduction**
The changing weather conditions affect the daily lives of people living in Australia. When the weather changes, most people may catch common diseases like common cold, flu and other diseases.

The common belief of residents in Australia is that the weather changes drastically in a matter of seconds. They believe the weather conditions are not stable. But most of these individuals make a claim about the unpredictability of the weather without any evidence to show for it. It is uncertain if the horrible weather conditions are just extreme cases or not.

In short, we can not make the claim that the weather condition in Australia is unpredictable without any statistical evidence to prove it.

**Problem Statement**
The problem is that residents of Australia claim that weather conditions like temperature and wind speed change drastically in a small amount of time. If we are able to solve this problem, all Australian residents will take particular care about the weather report instead of the few.

Our main investigation is to check whether the factors affecting the weather conditions like temperature, pressure, humidity and wind speed changes from 9 am to 3 pm of the same day remains the same or not. For solving this problem, we would use a paired t-test to see if the weather conditions are statistically significantly different at 3 pm, compared to 9 am.

Our secondary investigation is that if the weather conditions between two consecutive days are related, in terms of rain. To solve our secondary investigation, we would use a chi-square test of association to check if the raining today and raining tomorrow have a statistically significant association.

**Data**
The dataset is called “Rain in Australia” dataset and downloaded from the website Kaggle. The dataset was donated by Joe Young. The observations were drawn from several weather stations in Australia and collected by the Bureau of Meteorology of the Australian government. The dataset has the license for study purposes and research.

The dataset has a lot of variables. But we have narrowed down the variables that we will use. Those variables are Humidity9am, Humidity3pm, Temperature9am, Temperature3pm, Pressure9am, Pressure3pm, Windspeed9am, Windspeed3pm, RainToday, and RainTomorrow.

The variable Humidity9am,Humidity3pm,Temperature9am,Temperature3pm,Pressure9am,Pressure3pm,Windspeed9am,Windspeed3pm are continuous variables. The variables RainToday and RainToday are categorical variables.

Since the continuous variables selected were normally distributed, the standard z-score method was an appropriate choice to remove outliers of the continuous variables. At z-score=1.96, the confidence interval is 95%, therefore all data that was not contained within the 95% confidence interval of the data were dropped from the dataset.

The columns Evaporation, Sunshine, Cloud9am, and Cloud3pm were dropped from the dataset since these the columns had all null values in this weather dataset. Moreover, since these variables were not selected for this investigation, it was safe to drop it. Finally, we dropped all rows that had null values in the variables. The reason behind is that we don’t have enough domain knowledge to replace the values of these null values with meaningful values.

**Data(contd.)**
The following are the explanation of the variables:

Humidity9am: Humidity (percent) at 9am
Humidity3pm: Humidity (percent) at 3pm
Temperature9am: Temperature (degrees C) at 9am
Temperature3pm: Temperature (degrees C) at 3pm
Pressure9am: Atmospheric pressure (hpa) reduced to mean sea level at 9am
Pressure3pm: Atmospheric pressure (hpa) reduced to mean sea level at 3pm
Windspeed9am: Wind speed (km/hr) averaged over 10 minutes prior to 9am
Windspeed3pm: Wind speed (km/hr) averaged over 10 minutes prior to 3pm
RainToday: Boolean: 1 if precipitation (mm) in the 24 hours to 9am exceeds 1mm, otherwise
RainTomorrow: Boolean: 0

**Descriptive Statistics | Humidity**
The mean of Humidity9am is 69.3 is greater than the median of Humidity3pm which is 51.4.
The median of Humidity9am is 69 is greater than the median of Humidity3pm which is 52. This means that 50% of the values in Humidity9am is greater than 50% of the Humidity3pm.
The standard deviation of Humidity9am is 15.81 is less than the standard deviation of Humidity3pm which is 18.06. This means the spread of data in Humidity9am is less than the spread of data in Humidity3pm.
## [1] "Humidity at 9 AM"
Min	Q1	Median	Q3	IQR	Max	range	Mean	SD
32	58	69	81	23	100	68	69.3	15.81
## [1] "Humidity at 3 PM"
Min	Q1	Median	Q3	IQR	Max	range	Mean	SD
11	38	52	64	26	92	81	51.4	18.06

**Descriptive Statistics | Temperature**
The mean of Temp9am is 17.1 is less than the median of Temp which is 21.7.
The median of Temp9am is 16.8 is less than the median of Temp3pm which is 21.5. This means that 50% of the values in Temp9am is less than 50% of the Temp3pm.
The standard deviation of Temp9am is 5.66 is less than the standard deviation of Temp3pm which is 5.88. This means the spread of data in Temp9am is slightly less than the spread of data in Temp3pm.
## [1] "Temperature at 9 AM"
Min	Q1	Median	Q3	IQR	Max	range	Mean	SD
4.3	12.8	16.8	21.2	8.4	29.7	25.4	17.1	5.66
## [1] "Temperature at 3 PM"
Min	Q1	Median	Q3	IQR	Max	range	Mean	SD
8.1	17.3	21.5	26.1	8.8	35.2	27.1	21.7	5.88

**Descriptive Statistics | Pressure**
The mean of Pressure9am is 1018.1 which is slightly more than the median of Pressure3pm which is 1015.7.
The median of Pressure9am is 1018.1 is less than the median of Pressure3pm which is 1015.7. This means that 50% of the values in Pressure9am is approximately equal to 50% of the values in Pressure3pm.
The standard deviation of Pressure9am is 5.84 is approximately equal to the standard deviation of Pressure3pm which is 5.78. This means the spread of data in Pressure9am is approximately equal to the spread of data in Pressure3pm.
## [1] "Pressure at 9 AM"
Min	Q1	Median	Q3	IQR	Max	range	Mean	SD
1003.8	1013.9	1018.1	1022.3	8.4	1031.5	27.7	1018.1	5.84
## [1] "Pressure at 3 PM"
Min	Q1	Median	Q3	IQR	Max	range	Mean	SD
1001.5	1011.5	1015.7	1019.9	8.4	1029	27.5	1015.7	5.78





