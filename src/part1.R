```{r readFev}
#1. Load Data ---
fevData <- read.csv("./data/fev.csv", header = TRUE)

#2. Format the data ---
# convers sex and smoke to labelled factors
fevData$sex = factor(fevData$sex, 
                     levels = c(0,1),
                     labels = c("Female", "Male"))

fevData$smoke = factor(fevData$smoke, 
                       levels = c(0,1),
                       labels = c("Non-Smoker", "Smoker"))

#Convert height from inches to centimeters
fevData$height = fevData$height * 2.54

#Convert age to numeric
fevData$age <- as.numeric(fevData$age)

#confirm the records are correct
str(fevData)

summary(fevData)
```