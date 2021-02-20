Select count (*) from data_analyst_jobs;

--1793--

Select *
from data_analyst_jobs 
LIMIT 10;


--ExxonMobil--

Select count(location)
From data_analyst_jobs
WHERE location = 'TN' or location = 'KY';

--TN 21 ; KY 6 ; Total job posting 27--

Select count(*)
FROM data_analyst_jobs
Where location = 'TN'
AND star_rating > 4;

--3 postings have rating above 4 stars--

Select count(review_count)
From data_analyst_jobs
Where review_count Between 500 AND 1000;

-- 151 postings --

Select AVG(star_rating) AS avg_rating, location AS state
FROM data_analyst_jobs
WHERE location is not NULL and star_rating is not NULL
GROUP BY data_analyst_jobs.location
ORDER BY avg_rating DESC;

--NE had the highest avg_rating--

Select Count(DISTINCT title)
From data_analyst_jobs;

--881 unique job titles--

Select Count(DISTINCT title)
From data_analyst_jobs
Where location = 'CA';

--230 unique job titles in CA--

Select company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
Where review_count >= 5000
GROUP BY data_analyst_jobs.company;

-- 40 companies --

Select company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
Where review_count >= 5000
GROUP BY data_analyst_jobs.company
ORDER BY avg_rating DESC;

--General Motors, Unilever, Microsoft, Nike, American Express, and Kaiser Permanente with 4.19 rating--

Select COUNT(DISTINCT(title))
From data_analyst_jobs
Where title ILIKE '%Analyst%';

--774 

Select title
FROM data_analyst_jobs
Where title not like '%Analyst%'
AND title not like '%Analytics%'
AND title not like '%ANALYST%'
AND title not like '%analyst%'
AND title not like '%analytics%'
AND title not like '%ANALYTICS%';


select distinct(title)
from data_analyst_jobs
where title not ilike '%Analyst%'
and title not ilike '%Analytics%'



-- 4 job postings, they all contain the word Tableau--

--BONUS--

SELECT domain, COUNT(title) AS num_jobs
	FROM data_analyst_jobs
	WHERE skill ILIKE '%SQL%' AND days_since_posting > 21  AND domain IS NOT NULL
	GROUP BY domain
	ORDER BY num_jobs DESC






