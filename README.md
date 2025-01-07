# City Temperature Analysis in Stata

This repository contains an in-depth analysis of U.S. city temperature data using Stata. This project showcases my proficiency in data analysis, statistical techniques, and visualization.

## Objectives
- Perform descriptive and regression analyses on climate-related variables.
- Visualize temperature and energy usage patterns across regions.
- Conduct clustering to identify distinct climate zones.

## Dataset
The dataset contains information on:
- **Temperature**: Average January (`tempjan`) and July (`tempjuly`) temperatures.
- **Energy Usage**: Heating Degree Days (`heatdd`) and Cooling Degree Days (`cooldd`).
- **Geographic Divisions**: Census divisions (`division`) and regions (`region`).

## Key Features
1. **Descriptive Analysis**:
   - Summary statistics for key variables.
   - Comparison of temperatures and energy usage across regions.

2. **Visualization**:
   - Boxplots and scatterplots to identify patterns in the data.
   - Heatmaps for regional temperature analysis.

3. **Clustering**:
   - Group cities based on standardized climate variables.

4. **Regression**:
   - Investigating the relationship between cooling degree days and temperatures.
   - Including interaction terms and robust standard errors.

## Code Highlights
- Stata code is well-documented to ensure reproducibility.
- Graphs are exported as `.png` files for easy integration into reports.

## Results
- **Boxplots**: Show temperature distribution across Census regions.
- **Scatterplots**: Illustrate the impact of July temperatures on cooling energy usage.
- **Clustering**: Groups cities into 4 climate categories based on heat and cooling needs.
- **Regression**: Demonstrates significant relationships between climate variables.

## Files
- `citytemp_analysis.do`: Stata code for the entire analysis.
- `citytemp_summary.xlsx`: Summary statistics exported to Excel.
- `regression_results.doc`: Regression outputs in Word format.
- Graphs:
  - `jan_boxplot.png`
  - `cooldd_tempjuly.png`

## How to Run
1. Clone this repository: `git clone https://github.com/shakir5154/citytemp-analysis.git`
2. Open Stata and load the dataset.
3. Run `citytemp_analysis.do` to reproduce all analyses and outputs.

## Author
**Shakir Ullah Shakir**  
MS Economics Student, LUMS  
[LinkedIn](https://linkedin.com/in/shakir-ullah-shakir) | [GitHub](https://github.com/shakir5154)
