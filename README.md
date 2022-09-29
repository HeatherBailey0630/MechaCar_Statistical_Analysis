# MechaCar_Statistical_Analysis

## Overview
For this project we used the R programming language to perform a variety of statistical analyses on data from the automotive industry.

## Linear Regression to Predict MPG - Deliverable 1

### Linear Regression

![Create Linear Regression ](https://user-images.githubusercontent.com/106620821/193147682-32d489dd-85ad-4fcd-bbfd-4a4cd81ba96e.png)

### Summary of Linear Regression

![Summary Linear Regression](https://user-images.githubusercontent.com/106620821/193147737-467e65e9-6ba8-40fa-800b-eea82011a1e0.png)

### Analysis
- According to our results, the vehicle length, ground clearance, and intercept have a significance level of less than .05, therefore provide a non random amount of variance to the mpg values.
- The slope of the model is not considered to be zero, because the R-Squared value is .71 or 71%.
- This model does predict the mpg of MechaCar prototypes effectively. Each value appears to have significance and therefore demonstrates a correlation between mpg and the other variables (vehicle weight, ground clearance, etc.).

## Summary Statistics on Suspension Coils - Deliverable 2

### Total Summary

![Total_Summary_Table](https://user-images.githubusercontent.com/106620821/193154645-96130569-7111-4176-ab04-229f03166a6c.png)

### Lot Summary

![Lot_Summary_Table](https://user-images.githubusercontent.com/106620821/193154869-628703ac-c936-408c-be36-eb317e734ee0.png)

![Lot_Summary](https://user-images.githubusercontent.com/106620821/193154795-3a8f2d0c-17c9-4288-8d50-9833c87ce0d2.png)

### Analysis

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Our total summary shows our variance is 62.29. Our lot summary shows the variance per each lot. Lot 1 = .9796, Lot 2 = 7.4694, Lot 3 = 170.2861. Therefore, Lot # 3 is out of specs and does not meet the design specifications for suspension coils.

## T-Tests on Suspension Coils - Deliverable 3

### Overall T Test

![T-Test1](https://user-images.githubusercontent.com/106620821/193155697-ae8296ed-5112-492c-980c-90ca058be0f6.png)

With a significance level of 0.05%, our p-value of 0.069 is above the significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis. So the PSI across all lots is statiscally similar to the population mean of 1498.78 psi.

### T Test for Lot # 1

![T-Test2](https://user-images.githubusercontent.com/106620821/193156116-439c00a0-e89d-4072-886f-f1e50d11bd2f.png)

Here the p-value is below the significance level of 0.05%, so we would reject the null hypothesis and conclude that the PSI for Lot 1 is statistically different from the population mean.

### T Test for Lot # 2

![T-Test3](https://user-images.githubusercontent.com/106620821/193156133-c6c79064-c882-43b8-b092-c0774fcb3fda.png)

Here the p-value is above the significance level of 0.05%, so we would conclude that the PSI for Lot 2 is statistically similar from the population mean.

### T Test for Lot # 3

![T-Test4](https://user-images.githubusercontent.com/106620821/193155823-25c1b20e-8476-4fb9-acf7-bc130a979141.png)

Here again the p-value is above the significance level of 0.05%, so we would conclude that the PSI for Lot 3 is statistically similar from the population mean.

## Study Design: MechaCar vs Competition - Deliverable 4

### Description:
Using R, we will design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

### Metrics to be Tested
- Fuel economy (MPG)
- City vs Highway Fuel Efficiency
- Safety Measures
- Towing Capacity
- Maintenance Cost

### Hypotheses
- Null Hypothesis: The metrics from the MechaCar vehicles are statistically similar to the metrics of vehicles from other manufacturers
- ALternate Hypothesis: The metrics from MechaCar vehicles are statistically better than the metrics of vehicles from other manufacturers.

### Testing
- We would use the one-tail or two-tail t test, or the ANOVA test to compare the means and other metrics.

### Data Needed
- We would need a variety of data to complete our analysis, including each vehicles fuel economy, the city mpg vs the highway mpg, various safety measures, the towing capacity, and average maintenance costs. 

