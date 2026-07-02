
SELECT 
    SUM(may_2025) AS total_may_25,
    SUM(may_2024) AS total_may_24,
    SUM(jun_2025) AS total_jun_25,
    SUM(jun_2024) AS total_jun_24,
    SUM(ytd_fy26) AS total_ytd_fy26,
    SUM(ytd_fy25) AS total_ytd_fy25
FROM volvo_sales;
SELECT 
    segment,
    ytd_fy26,
    ytd_fy25,
    ROUND(((ytd_fy26 - ytd_fy25) * 100.0 / NULLIF(ytd_fy25, 0)), 2) AS ytd_growth_pct
FROM volvo_sales
ORDER BY ytd_growth_pct DESC;

SELECT 
    segment,
    jun_2025
FROM volvo_sales
ORDER BY jun_2025 DESC
LIMIT 1;

SELECT 
    segment,
    may_2025,
    may_2024,
    ROUND(((may_2025 - may_2024) * 100.0 / NULLIF(may_2024, 0)), 2) AS may_growth_pct
FROM volvo_sales
ORDER BY may_growth_pct
LIMIT 1;

SELECT 
    segment,
    jun_2025,
    jun_2024,
    ROUND(((jun_2025 - jun_2024) * 100.0 / NULLIF(jun_2024, 0)), 2) AS june_growth_pct
FROM volvo_sales
WHERE ((jun_2025 - jun_2024) * 100.0 / NULLIF(jun_2024, 0)) < 0;

SELECT 
    segment,
    growth_may AS may_growth_pct,
    growth_jun AS jun_growth_pct,
    growth_ytd AS ytd_growth_pct
FROM volvo_sales
ORDER BY growth_ytd DESC;
