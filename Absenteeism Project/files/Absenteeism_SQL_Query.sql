-- Create a Join Table
SELECT * 
FROM Absenteeism_at_work a 
LEFT JOIN compensation b
ON a.ID = b.ID
LEFT JOIN Reasons r 
ON a.Reason_for_absence = r.Number;

-- Find the healthiest employees for the bonus
SELECT *
FROM Absenteeism_at_work
WHERE social_drinker = 0 AND social_smoker = 0 AND Body_mass_index <25 
AND Absenteeism_time_in_hours <  
(Select AVG (Absenteeism_time_in_hours) FROM Absenteeism_at_work); 

-- Compensation rate increase for non-smokers/budget is $983,221 so a .68 increase per hour/$1,414.4 per year increase
SELECT count(*) as nonsmokers
FROM Absenteeism_at_work
WHERE social_smoker = 0 

-- Compensation rate increase for non-drinkers/budget is $200,000 so a .22 increase per hour/$457.6 per year increase 
SELECT count(*) as nondrinkers
FROM Absenteeism_at_work
WHERE social_drinker = 0; 

-- What is the main reason for absenteeism? -- Medical Consultation  
SELECT r.reason, count(*) AS Total
FROM Absenteeism_at_work a
LEFT JOIN Reasons r 
ON a.Reason_for_absence = r.Number
GROUP BY Reason_for_absence, r.reason
ORDER BY Total Desc;

-- What reason causes the most absenteeism in total hours? -- Diseases of the musculoskeltal system and connective tissue
SELECT r.reason,sum(Absenteeism_time_in_hours) AS Total_Hours 
FROM Absenteeism_at_work a
LEFT JOIN Reasons r 
ON a.Reason_for_absence = r.Number
GROUP BY Reason_for_absence, r.reason
ORDER BY Total_Hours Desc;

-- Are non drinkers or social drinkers tend to be absent? Social Drinkers are
SELECT 
CASE WHEN social_drinker = 0 THEN 'Non Drinker'
	 WHEN social_drinker = 1 THEN 'Social Drinker'
	 ELSE 'Unknown' END AS Social_Drinker, sum(Absenteeism_time_in_hours) as Total_hours
FROM Absenteeism_at_work
GROUP BY Social_drinker;

-- What are the main reasons why social drinkers are absent? Diseases of the musculoskeletal system and connective tissue 
SELECT r.reason,
CASE WHEN social_drinker = 0 THEN 'Non Drinker'
	 WHEN social_drinker = 1 THEN 'Social Drinker'
	 ELSE 'Unknown' END AS Social_Drinker, sum(Absenteeism_time_in_hours) AS total_hours
FROM Absenteeism_at_work a
LEFT JOIN Reasons r 
ON a.Reason_for_absence = r.Number
GROUP BY Social_drinker, r.reason
ORDER BY social_drinker, total_hours desc;

-- Are non drinkers or social drinkers tend to be absent? Non-smokers are due to there being more of them. 
SELECT 
CASE WHEN social_smoker = 0 THEN 'Non Smoker'
	 WHEN social_smoker = 1 THEN 'Social Smoker'
	 ELSE 'Unknown' END AS Social_Smoker, sum(Absenteeism_time_in_hours) as Total_hours
FROM Absenteeism_at_work
GROUP BY Social_smoker;

-- Optimizes this Query 
SELECT a.ID,r.Reason,Body_mass_index,
CASE WHEN Body_mass_index <18.5 then 'Underweight'
	 WHEN Body_mass_index between 18.5 AND 24.9 then 'Healthy'
	 WHEN Body_mass_index between 25 and 30 then 'Overweight'
	 WHEN Body_mass_index >30 then 'Obese'
	 ELSE 'Unknown' END AS BMI_Category, 
CASE WHEN Month_of_absence IN (12,1,2) THEN 'Winter' 
	 WHEN Month_of_absence IN (3,4,5) THEN 'Spring'
	 WHEN Month_of_absence IN (6,7,8) THEN 'Summer'
	 WHEN Month_of_absence IN (9,10,11) THEN 'Fall'
	 ELSE 'Unknown' END AS Season_Names,
Month_of_absence,
Day_of_the_week,
Transportation_expense,
Education,
Pet,
CASE WHEN social_drinker = 0 THEN 'Non Drinker'
	 WHEN social_drinker = 1 THEN 'Social Drinker'
	 ELSE 'Unknown' END AS Social_Drinker,
CASE WHEN social_smoker = 0 THEN 'Non Smoker'
	 WHEN social_smoker = 1 THEN 'Social Smoker'
	 ELSE 'Unknown' END AS Social_Smoker, 
Disciplinary_failure,
Age,
CASE WHEN Age between 27 AND 33 THEN 'Young Employees'
	 WHEN Age between 34 AND 42 THEN 'Established Employees'
	 WHEN Age between 43 AND 49 THEN 'Seasoned Employees'
	 WHEN Age >=50 THEN 'Senior Employees'
	 ELSE 'Unknown' END AS Age_Group,
Work_load_Average_day,
Absenteeism_time_in_hours
FROM Absenteeism_at_work a 
LEFT JOIN compensation b
ON a.ID = b.ID
LEFT JOIN Reasons r 
ON a.Reason_for_absence = r.Number;

