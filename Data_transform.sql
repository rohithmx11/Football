SELECT 
    Wk,
    Day,
    Date,
    Time,
    Home,
    CAST(SUBSTRING(score, 1, CHARINDEX('-', NULLIF(score, '')) + 1) AS INT) AS HG,
    Score,
    CAST(SUBSTRING(score, CHARINDEX('-', NULLIF(score, '')) + 3, LEN(score)) AS INT) AS AG,
    Away,
    Venue,
    league
FROM EPL_Schedule

UNION ALL

SELECT 
    Wk,
    Day,
    Date,
    Time,
    Home,
    CAST(SUBSTRING(score, 1, CHARINDEX('-', NULLIF(score, '')) + 1) AS INT) AS HG,
    Score,
    CAST(SUBSTRING(score, CHARINDEX('-', NULLIF(score, '')) + 3, LEN(score)) AS INT) AS AG,
    Away,
    Venue,
    league
FROM LaLiga_Schedule

UNION ALL

SELECT 
    Wk,
    Day,
    Date,
    Time,
    Home,
    CAST(SUBSTRING(score, 1, CHARINDEX('-', NULLIF(score, '')) + 1) AS INT) AS HG,
    Score,
    CAST(SUBSTRING(score, CHARINDEX('-', NULLIF(score, '')) + 3, LEN(score)) AS INT) AS AG,
    Away,
    Venue,
    league
FROM Bundesliga_Schedule

UNION ALL

SELECT 
    Wk,
    Day,
    Date,
    Time,
    Home,
    CAST(SUBSTRING(score, 1, CHARINDEX('-', NULLIF(score, '')) + 1) AS INT) AS HG,
    Score,
    CAST(SUBSTRING(score, CHARINDEX('-', NULLIF(score, '')) + 3, LEN(score)) AS INT) AS AG,
    Away,
    Venue,
    league
FROM Seria_Schedule;


select *
from EPL_TopScorers
union all
select * 
from LaLiga_TopScorers
union all
select *
from Bundesliga_TopScorers
union all
select *
from Seria_TopScorers 

select *
from EPL_Standings 
union all
select * 
from laliga_standings
union all
select *
from bun_Standings
union all
select *
from seria_standings
