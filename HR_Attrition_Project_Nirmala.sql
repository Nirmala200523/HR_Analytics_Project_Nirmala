
-- 1)Total Employees
SELECT COUNT(*) AS Total_Employees
FROM HR_Attrition_Raw;

-- 2)Attrition Count
SELECT Attrition, COUNT(*) AS Employee_Count
FROM HR_Attrition_Raw
GROUP BY Attrition;

-- 3)Department-wise Attrition
SELECT Department,
       COUNT(*) AS Employees_Left
FROM HR_Attrition_Raw
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY Employees_Left DESC;

-- 4)Average Salary
SELECT Attrition,
       AVG(MonthlyIncome) AS Average_Salary
FROM HR_Attrition_Raw
GROUP BY Attrition;

-- 5)Average Age
SELECT Attrition,
       AVG(Age) AS Average_Age
FROM HR_Attrition_Raw
GROUP BY Attrition;

-- 6)Job Satisfaction
SELECT JobSatisfaction,
       COUNT(*) AS Employees_Left
FROM dbo.HR_Attrition_Raw
WHERE Attrition = 'Yes'
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;