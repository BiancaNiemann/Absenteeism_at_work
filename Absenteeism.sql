SELECT *
FROM absenteeism_at_work;

SELECT *
FROM compensation;

SELECT *
FROM reasons;

SELECT *
FROM absenteeism_with_reasons ;

SELECT *
FROM absenteeism_full ;

-- Join original table to reasons
CREATE TABLE absenteeism_with_reasons
SELECT *
FROM absenteeism_at_work abs
JOIN reasons rea
	ON abs.Reason_for_absence = rea.Number;
    
-- Join above table to compensation to have all info on one table    
CREATE TABLE absenteeism_full
SELECT *
FROM absenteeism_with_reasons a
LEFT JOIN compensation b
	ON a.ID = b.ee_id;
    
-- Query which reasons have most absenteeisms
SELECT COUNT(*), Reason
FROM absenteeism_with_reasons
GROUP BY 2
ORDER BY 1 DESC;

-- Query which seasons have most absenteeisms
SELECT COUNT(*), Seasons
FROM absenteeism_with_reasons
GROUP BY 2
ORDER BY 1 DESC;

-- Query the Sum of hours x comp rate and show per reason

-- calculate Sum of hours x comp to see total spent on sick leave

--  Find the healthiest employee - Doesnt smoke, or drink and never been absent and has BMI (18.5 - 24.9 )in healthy range (use CASE statement)

-- Work out average hours taken on sick leave

-- Query how many children (SON) ie: how many have 1,2,3,4 or 0 kids (GROUP BY)

--  Query the age groups of people that have kids, use CASE statement

-- How many empl never been absent

-- Calc percent of employees never been absent

-- All non smokers to get extra ins, calc how many there are and split budget of 983222 to calc extra ins amount each