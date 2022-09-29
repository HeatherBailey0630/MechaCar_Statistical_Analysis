library(dplyr)
MPG_Table <- read.csv('MechaCar_mpg.csv')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=MPG_Table) #Generate Linear Regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=MPG_Table)) #Generate summary statistics
Suspension_Table <- read.csv('Suspension_Coil.csv')
total_summary <- Suspension_Table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #Create total summary table
total_summary
lot_summary <- Suspension_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #Create Lot Summary
lot_summary
t.test(Suspension_Table$PSI,mu=mean(Suspension_Table$PSI))
t.test(subset(Suspension_Table$PSI,Suspension_Table$Manufacturing_Lot == "Lot1"),mu=mean(Suspension_Table$PSI))
t.test(subset(Suspension_Table$PSI,Suspension_Table$Manufacturing_Lot == "Lot2"),mu=mean(Suspension_Table$PSI))
t.test(subset(Suspension_Table$PSI,Suspension_Table$Manufacturing_Lot == "Lot3"),mu=mean(Suspension_Table$PSI))
