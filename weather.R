library(dplyr)
library(magrittr)
library(readr)
weatherAUS <- read_csv("D:/Intro Stats/Assignment3/weatherAUS.csv")
#View(weatherAUS)


#Title: Presentation Australian Weather Data

#We have collected the data from the website ""


#dropped the columns with null values
weatherAUS <- subset(weatherAUS, select = -c(Evaporation,Sunshine,Cloud9am,Cloud3pm))
#dropped rows that had null values
weatherAUS <- weatherAUS[complete.cases(weatherAUS), ]

View(weatherAUS)




counts <- table(weatherAUS$RainToday)
barplot(counts, main="Car Distribution", 
        xlab="Number of Gears")







#Summary Statistics





weatherAUS %>%  summarise(Min = min(MinTemp,na.rm = TRUE),
                     Q1 = quantile(MinTemp,probs = .25,na.rm = TRUE),
                     Median = median(MinTemp, na.rm = TRUE),
                     Q3 = quantile(MinTemp,probs = .75,na.rm = TRUE),
                     IQR = IQR(MinTemp, na.rm = TRUE),
                     Max = max(MinTemp,na.rm = TRUE),
                     range = Max - Min,
                     Mean = round(mean(MinTemp, na.rm = TRUE),1),
                     SD = round(sd(MinTemp, na.rm = TRUE),2)
)

weatherAUS %>%  summarise(Min = min(MaxTemp,na.rm = TRUE),
                          Q1 = quantile(MaxTemp,probs = .25,na.rm = TRUE),
                          Median = median(MaxTemp, na.rm = TRUE),
                          Q3 = quantile(MaxTemp,probs = .75,na.rm = TRUE),
                          IQR = IQR(MaxTemp, na.rm = TRUE),
                          Max = max(MaxTemp,na.rm = TRUE),
                          range = Max - Min,
                          Mean = round(mean(MaxTemp, na.rm = TRUE),1),
                          SD = round(sd(MaxTemp, na.rm = TRUE),2)
)


weatherAUS %>%  summarise(Min = min(Rainfall,na.rm = TRUE),
                          Q1 = quantile(Rainfall,probs = .25,na.rm = TRUE),
                          Median = median(Rainfall, na.rm = TRUE),
                          Q3 = quantile(Rainfall,probs = .75,na.rm = TRUE),
                          IQR = IQR(Rainfall, na.rm = TRUE),
                          Max = max(Rainfall,na.rm = TRUE),
                          range = Max - Min,
                          Mean = round(mean(Rainfall, na.rm = TRUE),1),
                          SD = round(sd(Rainfall, na.rm = TRUE),2)
)






weatherAUS %>%  summarise(Min = min(WindGustSpeed,na.rm = TRUE),
                          Q1 = quantile(WindGustSpeed,probs = .25,na.rm = TRUE),
                          Median = median(WindGustSpeed, na.rm = TRUE),
                          Q3 = quantile(WindGustSpeed,probs = .75,na.rm = TRUE),
                          IQR = IQR(WindGustSpeed, na.rm = TRUE),
                          Max = max(WindGustSpeed,na.rm = TRUE),
                          range = Max - Min,
                          Mean = round(mean(WindGustSpeed, na.rm = TRUE),1),
                          SD = round(sd(WindGustSpeed, na.rm = TRUE),2)
)


weatherAUS %>%  summarise(Min = min(WindSpeed9am,na.rm = TRUE),
                          Q1 = quantile(WindSpeed9am,probs = .25,na.rm = TRUE),
                          Median = median(WindSpeed9am, na.rm = TRUE),
                          Q3 = quantile(WindSpeed9am,probs = .75,na.rm = TRUE),
                          IQR = IQR(WindSpeed9am, na.rm = TRUE),
                          Max = max(WindSpeed9am,na.rm = TRUE),
                          range = Max - Min,
                          Mean = round(mean(WindSpeed9am, na.rm = TRUE),1),
                          SD = round(sd(WindSpeed9am, na.rm = TRUE),2)
)



weatherAUS %>%  summarise(Min = min(WindSpeed3pm,na.rm = TRUE),
                          Q1 = quantile(WindSpeed3pm,probs = .25,na.rm = TRUE),
                          Median = median(WindSpeed3pm, na.rm = TRUE),
                          Q3 = quantile(WindSpeed3pm,probs = .75,na.rm = TRUE),
                          IQR = IQR(WindSpeed3pm, na.rm = TRUE),
                          Max = max(WindSpeed3pm,na.rm = TRUE),
                          range = Max - Min,
                          Mean = round(mean(WindSpeed3pm, na.rm = TRUE),1),
                          SD = round(sd(WindSpeed3pm, na.rm = TRUE),2)
)



weatherAUS %>%  summarise(Min = min(Humidity9am,na.rm = TRUE),
                          Q1 = quantile(Humidity9am,probs = .25,na.rm = TRUE),
                          Median = median(Humidity9am, na.rm = TRUE),
                          Q3 = quantile(Humidity9am,probs = .75,na.rm = TRUE),
                          IQR = IQR(Humidity9am, na.rm = TRUE),
                          Max = max(Humidity9am,na.rm = TRUE),
                          range = Max - Min,
                          Mean = round(mean(Humidity9am, na.rm = TRUE),1),
                          SD = round(sd(Humidity9am, na.rm = TRUE),2)
)



weatherAUS %>%  summarise(Min = min(Humidity3pm,na.rm = TRUE),
                          Q1 = quantile(Humidity3pm,probs = .25,na.rm = TRUE),
                          Median = median(Humidity3pm, na.rm = TRUE),
                          Q3 = quantile(Humidity3pm,probs = .75,na.rm = TRUE),
                          IQR = IQR(Humidity3pm, na.rm = TRUE),
                          Max = max(Humidity3pm,na.rm = TRUE),
                          range = Max - Min,
                          Mean = round(mean(Humidity3pm, na.rm = TRUE),1),
                          SD = round(sd(Humidity3pm, na.rm = TRUE),2)
)








hist(weatherAUS$MinTemp,xlab = "Temperature Degree Celsius")
hist(weatherAUS$MaxTemp,xlab = "Temperature Degree Celsius")

hist(weatherAUS$WindGustSpeed,xlab = "Wind Gust Speed")
hist(weatherAUS$WindSpeed9am,xlab = "Wind Speed at 9am")
hist(weatherAUS$WindSpeed3pm,xlab = "Wind Speed at 3pm")
hist(weatherAUS$Humidity9am,xlab = "Humidity Units")
hist(weatherAUS$Humidity3pm,xlab = "Humidity Units")
hist(weatherAUS$Temp9am,xlab = "Temperature in Degree Celsius")
hist(weatherAUS$Temp3pm,xlab = "Temperature in Degree Celsius")
hist(weatherAUS$Pressure9am,xlab = "Pressure Units")
hist(weatherAUS$Pressure3pm,xlab = "Pressure Units")



boxplot(weatherAUS$WindSpeed9am,weatherAUS$WindSpeed3pm,names=c("9am","3pm"),
        main="Wind Speed",xlab="Wind Speed", ylab="Speed in Units")


boxplot(weatherAUS$Humidity9am,weatherAUS$Humidity3pm,names=c("9am","3pm"),
        main="Humidity",xlab="Humdidity", ylab="Humidity in Units")

boxplot(weatherAUS$Temp9am,weatherAUS$Temp3pm,names=c("9am","3pm"),
        main="Temperature Speed at 2 different times",xlab="Temperature", ylab="Temperature in Degrees Celsius")

boxplot(weatherAUS$Pressure9am,weatherAUS$Pressure3pm,names=c("9am","3pm"),
        main="Pressure at 2 different times",xlab="Pressure", ylab="Pressure in Units")



##code to remove outliers
#outliers <- boxplot(weatherAUS$Pressure9am, plot=FALSE)$out
# Check the results
#print(outliers)
#weatherAUS <- weatherAUS[-which(weatherAUS$Pressure9am %in% outliers),]
#boxplot(weatherAUS$Pressure9am,weatherAUS$Pressure3pm,names=c("9am","3pm"),       main="Pressure at 2 different times",xlab="Pressure", ylab="Pressure in Units")







