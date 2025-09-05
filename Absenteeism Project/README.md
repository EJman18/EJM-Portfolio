# Optimizing Workforce Wellness: Reducing Absenteeism Through Behavioral and Compensation Analytics 
## Skills Utitilized
#### Technical Skills: Excel and SQL 
#### Visualization Skills: Power BI

## Project Background and Business Understanding
WellCore Solutions **{Fictious company}**, established in 2010, is a healthcare company located in the United States. 
WellCore Solutions have a significant amount of data on their employees including their absenteeism, compensation, and demographics. The project thoroughly analyzes and synthesizes this data in order to uncover critical insights that will help with the WellCore Solutions absenteeism rate. The company HR department has initiated a data-driven wellness and compensation initiative aimed at: 
- Promoting healthy behaviors among employees
- Reducing absenteeism
- Optimizing insurance budget allocations 
- Enhancing visibility into workforce health trends


**Insights and recommendations are provided on the following key areas:**
-   **Healthy Bonus Program Analysis**: Identify employees with low absenteeism and healthy lifestyle indicators. Allocate a total bonus pool of $15,000 across qualifying individuals.
-   **Compensation for Non-smokers**: Calculate the increase or annual compensation adjustments. Ensure alignment with an insurance budget of $983,221 dedicated to non-smokers
-   **Compensation for Non-drinkers**: Similar to non-smokers, determine the wage or annual compensation adjustment. We have to utilize a $200,000 insurance budget for non-drinkers.
-   **Root Cause Analysis of Absenteeism**: Investigate and report on the primary drivers of absenteeism within WellCore Solutions. Use statistical and behavioral data to inform HR strategy
-   **Absenteeism Dashboard Development**: Build a dashboard based on an approved wireframe from HR. Visualize absenteeism trends, patterns, and correlations with health behaviors.

The Wireframe PowerBI Dashboard can be downloaded [here.] 

The SQL queries utilized in this project can be found [here.]

## Data Structure and Data Understanding 
WellCore Solutions structure as seen below consists of three data sources: **employees**, **compensation**, and **reasons** with a total row count of 740 records of structured data. Prior to beginning the analysis, a variety of checks were conducted for quality control and familiarization with the dataset. Three data quality checks were initiated, which loked for missing values, noise and outliers, and duplicate data. The dataset passed the data quality check, and it was pushed through to SQL for queries creation. 

Below are ERD Models of the Dataset: 

## Executive Summary
**Overview of Findings**
- WellCore Solutions has identified 111 employees (15% of total employees) with low absenteeism and healthy lifestyles, awarding each a $135.15 bonus through its $15,000 wellness program. Additionally, 686 non-smokers will receive a $0.68/hour raise (or a $1414.40 per year increase) from the $983,221 insurance budget, while 320 non-drinkers earn $0.22/hour raise (or a $457.60 per year increase) from the insurance $200,000 budget. Despite these incentives, absenteeism remains high due to medical consultations and musculoskeletal issues. Targeted wellness interventions are recommended, primarily for health coaching for social drinkers, who face elevated risks of injury and fatigue. 

Above is the overview page from the PowerBI dashboard and the entire wireframe PowerBI dashboard can be downloaded [here.] 

## Recommendations 
**Based on the insights, the following recommendations have been provided:**
- 111 employees (15% of total employees) were found to have low absenteeism and healthy lifestyle indicators. The healthy lifestyle indicators means that they do not drink, smoke, and have a BMI that is less than 25. For absenteeism, to be considered low, we made sure that the employee is lower than the average absenteeism amount. **That means with WellCore Solutions $15,000 Healthy Bonus Program, the 111 employees will be granted a $135.15 bonus due to this program.** 
- 686 employees are non-smokers, and with a budget of $983,221 from insurance, **these employees will have a $0.68 per hour increase or an annual $1,414.4 per year increase.**
- Despite a 686 employees being nonsmokers, there are 320 employees (53% decrease, which makes sense due to a smaller budget) are non-drinkers, and with a budget of $200,000 from insurance, **these employees will have a $0.22 per hour increase or an annual $457.60 per year increase.** 
- A big problem that WellCore Solutions has is that they have high absenteeism, and we need to figure out which type of medical reason is hurting the employees. **The data shows that medical consultation is a big reason why employees are absent (a total of 149 counts), while diseases of the musculoskeletal system and connective issues are the reasons why employees are out for longer (a total of 842 hours).**  
- **We need to deploy a targeted wellness intervention for high-risk absentee segments**, which can include subsidies for transportation (since the average travel expense is $221) or health coaching for people that are social drinkers, as they are more likely to be absent due to disease of musculoskeletal system and connective tissue and injury, poisoning, and certain other consequences of external causes.This is due to alcohol impairing recovery and exposure to higher injury risk, as well as cause more stress, fatigue, and irregularity of healthy sleep.  

## Assumptions and Caveats
- We assume that people reported their information accurately, meaning that they are actually non-smokers (vs. smokers) and non-drinkers (vs. drinkers). 
- On the same note, we have binary claffication of drinkers vs. non-drinkers (and smokers vs. Non-smokers) with no grey area. For example, a light social drinker and a heavy weekend drinker are treated the same. 
- We have no time frame in which this data was collected, so we assume it was this year. 
- We assume the absenteeism causes are correctly reported with no errors.
- And lastly, correlation does not equal causation.
