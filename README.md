#  MechaCar_Statistical_Analysis Summary
## Part 1_Linear Regression to Predict MPG:
 * vehicle_length , vehicle_weight, and ground_clearance variables provides a non-random
   amount of variance to the mpg variable.  We can see that because their Pr values are
   very small.
 * p-value smaller than 0.05%, therefore sufficient evidence to reject null-hypothesis,
   which means slop of our linear model is not zero.
 *  The statistic of p-value is 5.35e-11 very small less than 0.5. It means this linear model predicts mpg of MechaCar protoypes well.
 
 Refenrence from the results.<br />   ![fig](https://github.com/violetqq0221/MechaCar_Statistical_Analysis/blob/main/part1_linear_regression_to_predict_mpg.PNG)

## Part 2_Summary Statistics on Suspension Coils :
The current manuafacturing data shows that the design specification is met in all lots
   in total because the total variance is only 62. The design specification for upper 
   limit is 100 pounds per square inch. Therefore overall suspension performance is under the upper limmt spec, no big issue.<br />   ![fig](https://github.com/violetqq0221/MechaCar_Statistical_Analysis/blob/main/part2_suspension%20coil%20_overall_summary.PNG)
   Further to study the performance of each production lots, lot3 has high variance of  170.29, SD of 13. Both statistic numbers are higher than lot1 and lot2. If we want to improve the perforance, we can start with lot3 suspension coil.<br />   ![fig](https://github.com/violetqq0221/MechaCar_Statistical_Analysis/blob/main/part2_suspension%20coil_%20lot_summary.PNG)


## Part 3_T-Tests on Suspension Coils:
* overall p-value=1.<br />   ![fig](https://github.com/violetqq0221/MechaCar_Statistical_Analysis/blob/main/part3_%20overall%20t%20test.PNG)
* lot1 p-value=9.35e-12.<br />   ![fig](https://github.com/violetqq0221/MechaCar_Statistical_Analysis/blob/main/part3_%20lot1_t_test.PNGg)
* lot2 p-value=0.0005082.<br />   ![fig](https://github.com/violetqq0221/MechaCar_Statistical_Analysis/blob/main/part3_%20lot2_t_test.PNG)
* lot3 p-value=0.1549.<br />   ![fig](https://github.com/violetqq0221/MechaCar_Statistical_Analysis/blob/main/part3_%20lot3_t_test.PNG)

This result indicats lot3  has higher p-value> 0.05. 


## Part 4_Study Design: MechaCar vs Competition.:

The gasonline price is keep going up in 2022, the prices in CA are estimated to go up to $7 gas prices in summer 2034 according to GasBuddy's fuel outlook. I would like to add the the city or highway fuel efficiency analysis into report.    
**(1)What metric or metrics are you going to test?**<br /> 
    *city or highway fuel efficiency.*  
**(2)What is the null hypothesis or alternative hypothesis?**<br /> 
    *Null hypothesis: The MechaCar performance in city or highway effeicency is the same as other manufacture.  
    Alternative hypothesis: MechaCar fuel performace is better than other manufacture.*  
**(3) What statistical test would you use to test the hypothesis? And why?**<br />
     *I would used two independent samples t-test to compare the data from competition. since
     MechaCar and other competition are two different independent samples, two-samples T-test
     would be the proper way to compare each other data. Comparre whether the effect of fuel
     efficiency on two different manufactures.*   
**(4)What data is needed to run the statistical test?**<br />
     *We need the msp of low speed and also high speed value for city and highway.* 