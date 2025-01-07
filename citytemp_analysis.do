* Load the dataset
 sysuse citytemp.dta, clear
 
* 1. Descriptive Analysis
* Summary statistics for all key variables
summarize tempjan tempjuly heatdd cooldd

* Summary statistics by region
table region, contents(mean tempjan mean tempjuly mean heatdd mean cooldd)

* 2. Visualization
* Boxplot: January temperatures by region
graph box tempjan, over(region) title("January Temperatures by Region") ///
ylabel(, angle(horizontal)) saving(jan_boxplot.png, replace)

* Scatterplot: Cooling Degree Days vs July Temperature
twoway scatter cooldd tempjuly, title("Cooling Degree Days vs July Temperature") ///
xlabel(, angle(horizontal)) saving(cooldd_tempjuly.png, replace)

* 3. Clustering Analysis
* Standardize variables for clustering
egen z_tempjan = std(tempjan)
egen z_tempjuly = std(tempjuly)
egen z_heatdd = std(heatdd)
egen z_cooldd = std(cooldd)

* Perform k-means clustering
cluster kmeans z_tempjan z_tempjuly z_heatdd z_cooldd, k(4)
tabulate _clus_1

table division _clus_1, contents(freq)

* 4. Regression Analysis
* Model Cooling Degree Days as a function of July Temperature
regress cooldd tempjuly region

* Add interaction between region and temperature
gen temp_region_interact = tempjuly * region
regress cooldd tempjuly region temp_region_interact

* 5. Advanced Diagnostics
* Heteroskedasticity Test
estat hettest

* Robust standard errors
regress cooldd tempjuly region, robust


* Variance Inflation Factor (VIF) for multicollinearity
estat vif

* 6. Save Outputs
* Export all summary statistics to an Excel file
export excel using "citytemp_summary.xlsx", firstrow(variables) replace

* Export regression results
ssc install outreg2
outreg2 using "regression_results.doc", replace

