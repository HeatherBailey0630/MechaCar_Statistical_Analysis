#Add Library
library(dplyr)

#Import CSV
MPG_Table <- read.csv('MechaCar_mpg.csv')

#Generate Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=MPG_Table)

#Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=MPG_Table))

#Import CSV
Suspension_Table <- read.csv('Suspension_Coil.csv')

#Create total summary table
total_summary <- Suspension_Table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 
total_summary

#Create Lot Summary
lot_summary <- Suspension_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 
lot_summary

#Create Overall T_Test
t.test(Suspension_Table$PSI,mu=mean(Suspension_Table$PSI))

#Create T_Test for Lot1
t.test(subset(Suspension_Table$PSI,Suspension_Table$Manufacturing_Lot == "Lot1"),mu=mean(Suspension_Table$PSI))

#Create T_Test for Lot2
t.test(subset(Suspension_Table$PSI,Suspension_Table$Manufacturing_Lot == "Lot2"),mu=mean(Suspension_Table$PSI))

#Create T_Test for Lot3
t.test(subset(Suspension_Table$PSI,Suspension_Table$Manufacturing_Lot == "Lot3"),mu=mean(Suspension_Table$PSI))
