-- total number of admissions
SELECT count(*)
  FROM [dbo].[ADMISSIONS]

-- top 10 records
SELECT top 10 * 
    FROM [dbo].[ADMISSIONS]

 -- ethnicity frequency
 Select ethnicity, count(*) as FREQUENCY
 From   [dbo].[ADMISSIONS]
 Group By ethnicity
 Order By FREQUENCY DESC