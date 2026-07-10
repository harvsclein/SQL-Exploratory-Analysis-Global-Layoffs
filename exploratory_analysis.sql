-- dataset overview
SELECT *
FROM layoffs_prac2;

-- data range
SELECT MIN(`date`), MAX(`date`)
FROM layoffs_prac2;

-- largest layoffs and percentage layoffs
SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_prac2;

--  Companies That Closed Completely
SELECT *
FROM layoffs_prac2
WHERE percentage_laid_off = 1
ORDER BY total_laid_off DESC;

-- companies That Shut Down Despite Raising Significant Funding
SELECT *
FROM layoffs_prac2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;


-- layoffs by company
WITH company_cte AS
(
SELECT company,
SUM(total_laid_off) AS total_laid_off
FROM layoffs_prac2
GROUP BY company
)
SELECT *
FROM company_cte
ORDER BY total_laid_off DESC;

-- layoffs by industry
WITH industry_cte AS
(
SELECT industry,
SUM(total_laid_off) AS total_laid_off
FROM layoffs_prac2
GROUP BY industry
)
SELECT *
FROM industry_cte
ORDER BY total_laid_off DESC;

-- layoffs by country
WITH country_cte AS
(
SELECT country,
SUM(total_laid_off) AS total_laid_off
FROM layoffs_prac2
GROUP BY country
)
SELECT *
FROM country_cte
ORDER BY total_laid_off DESC;

-- layoff by location
WITH location_cte AS
(
SELECT location,
SUM(total_laid_off) AS total_laid_off
FROM layoffs_prac2
GROUP BY location
)
SELECT *
FROM location_cte
ORDER BY total_laid_off DESC;

-- layoffs by stage
WITH stage_cte AS
(
    SELECT
        stage,
        SUM(total_laid_off) AS total_laid_off
    FROM layoffs_prac2
    GROUP BY stage
)
SELECT *
FROM stage_cte
ORDER BY total_laid_off DESC;

-- yearly trend
WITH yr_cte AS
(
    SELECT
        YEAR(`date`) AS `year`,
        SUM(total_laid_off) AS total_laid_off
    FROM layoffs_prac2
    GROUP BY YEAR(`date`)
)
SELECT *
FROM yr_cte
ORDER BY `year` DESC;

-- monthly trend with rolling total
WITH yrmonth_cte AS 
(
SELECT 
SUBSTRING(`date`,1,7) AS `Month`, SUM(total_laid_off) AS total_laid_off
FROM layoffs_prac2
WHERE SUBSTRING(`date`,1,7) IS NOT NULL
GROUP BY `Month`
)
SELECT 
`Month`, total_laid_off,
SUM(total_laid_off) OVER (ORDER BY `Month`) AS rolling_total
FROM yrmonth_cte
ORDER BY `Month`
;

-- top 10 companies with the largest layoffs each year
WITH company_year AS
(
SELECT company, YEAR(`date`) AS `year`,SUM(total_laid_off) AS total_laid_off,
DENSE_RANK() OVER(PARTITION BY YEAR(`date`) ORDER BY SUM(total_laid_off) DESC) AS row_rank
FROM layoffs_prac2
GROUP BY company, `year`
) 
SELECT *
FROM company_year
WHERE `year` IS NOT NULL
AND total_laid_off IS NOT NULL
AND row_rank < 11;
;

-- top 10 industries most affected by layoffs each year
WITH industry_year AS
(
SELECT industry, YEAR(`date`) AS `year`,SUM(total_laid_off) AS total_laid_off,
DENSE_RANK() OVER(PARTITION BY YEAR(`date`) ORDER BY SUM(total_laid_off) DESC) AS row_rank
FROM layoffs_prac2
GROUP BY industry, `year`
) 
SELECT *
FROM industry_year
WHERE `year` IS NOT NULL
AND total_laid_off IS NOT NULL
AND row_rank < 11;
;

-- top 10 countries with the highest layoffs each year
WITH country_year AS
(
SELECT country, YEAR(`date`) AS `year`,SUM(total_laid_off) AS total_laid_off,
DENSE_RANK() OVER(PARTITION BY YEAR(`date`) ORDER BY SUM(total_laid_off) DESC) AS row_rank
FROM layoffs_prac2
GROUP BY country, `year`
) 
SELECT *
FROM country_year
WHERE `year` IS NOT NULL
AND total_laid_off IS NOT NULL
AND row_rank < 11;
;

-- companies with multiple rounds of layoffs
SELECT company, SUM(total_laid_off) AS total_laid_off, COUNT(*) AS layoffs_count
FROM layoffs_prac2
GROUP BY company
HAVING layoffs_count > 1
ORDER BY layoffs_count DESC
;













