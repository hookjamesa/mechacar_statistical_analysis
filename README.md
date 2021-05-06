# mechacar_statistical_analysis

## Linear Regression to Predict MPG

After an analysis of the provided data, the following variables were found to be statistically significant for determining the linear regression of mpg:

[Image 1](Link)

* Vehicle_Length and
* Ground_Clearance.

With both coefficients being positive and consistent in direction, the author considers the slope as positive as well. However, the author does not believe that this is a conclusive model to predict MPG for MechaCars, as the R-squared value (0.7149) is too low to show strong correlation. It certainly shows some correlation based on the provided data set, but further investigation is warranted.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Current manufacturing data shows that all cars in total meet this requirement, however lots from manufacturing lot 3 independently do not. The author suggests that manufacturing lot 3 is investigated to see what manufacturing methods fell out of spec and why.

[Image 2](Link)
[Image 3](Link)

## T-Tests on Suspension Coils

Meanwhile, comparing the means of suspension coils against the 1500 psi standard, student t-tests showed the following:

* Overall (p = 0.06028): The t-test conducted on all components showed that it is likely there is variance beyond statistical chance between components.
* Lot 1 (p = 1): The t-test conducted on Lot 1 suggests that no component varies except by random chance.
* Lot 2 (p = 0.6072): The t-test conducted on Lot 2 suggests that there is some chance that a component may vary other than by random chance.
* Lot 3 (p = 0.04168): The t-test conducted on Lot 3 suggests that there is a significant probably there is variation other than by random chance.

These results suggest to me that the manufacturing line must be investigated and tuned to eliminate variation by non-random elements.

[Image 4](Link)
[Image 5](Link)
[Image 6](Link)
[Image 7](Link)

## Study Design: MechaCar vs Competition

Those looking to purchase new vehicles often consider the cost of the vehicle and the mileage, as gas prices continue to rise from increased demand. In understanding how our new design compares against the competition, we can use the competitions' previous years' mileage data to show where our vehicle lands, with a null hypothesis that our vehicle is equivalent to our competitions' previous model. I recommend that we use an ANOVA test to determine how our vehicle compares to others' from last year, as we would otherwise have to group all of our competitions' models together for t-tests, which does not provide an accurate portrayal of our product.
