/* -- TABLE SCHEMA FOR REFERENCE -- 

Index(['Series_Title', 'Released_Year', 'Certificate', 'Runtime', 'Genre',
       'IMDB_Rating', 'Overview', 'Meta_score', 'Director', 'Star1', 'Star2',
       'Star3', 'Star4', 'No_of_Votes', 'Gross'],
      dtype='object') 
      
      Index(['cid', 'name', 'type', 'notnull', 'dflt_value', 'pk'], dtype='object')
    cid           name     type  notnull dflt_value  pk
0     0   Series_Title     TEXT        0       None   0
1     1  Released_Year     TEXT        0       None   0
2     2    Certificate     TEXT        0       None   0
3     3        Runtime     TEXT        0       None   0
4     4          Genre     TEXT        0       None   0
5     5    IMDB_Rating     REAL        0       None   0
6     6       Overview     TEXT        0       None   0
7     7     Meta_score     REAL        0       None   0
8     8       Director     TEXT        0       None   0
9     9          Star1     TEXT        0       None   0
10   10          Star2     TEXT        0       None   0
11   11          Star3     TEXT        0       None   0
12   12          Star4     TEXT        0       None   0
13   13    No_of_Votes  INTEGER        0       None   0
14   14          Gross     TEXT        0       None   0 */


-- Question 1: List all movie titles released in 2010
SELECT *
FROM movies
WHERE released_year = 2010;

-- Question 2: Movies released on or after 2016 (alphabetical)
SELECT Series_Title
FROM movies
WHERE Released_Year >= 2016 ORDER BY Series_Title ASC; 

-- Question 3: Count of movies with a 10.0 rating
SELECT COUNT(*)
FROM movies
WHERE IMDB_Rating = 10.0;

-- Question 4: Titles and years of all Harry Potter films
SELECT Series_Title, Released_Year
FROM movies
WHERE Series_Title LIKE '%Harry Potter%';

-- Question 5: Average rating of movies released in 2012
SELECT AVG(IMDB_Rating)
FROM movies
WHERE Released_Year = 2012;

-- Question 6: Movies from 2010 sorted by rating and title
SELECT Series_Title, IMDB_Rating
FROM movies
WHERE Released_Year = 2010
ORDER BY IMDB_Rating DESC Series_Title ASC;

-- Question 7: Actors in Toy Story
SELECT Star1, Star2, Star3, Star4
FROM movies,
WHERE Series_Title = 'Toy Story';

-- Question 8: Directors of movies rated 9.0 and above
SELECT DISTINCT Director
FROM movies
WHERE IMDB_Rating >= 9.0;

-- Question 9:Top 5 movies starring Tom Hanks
SELECT Series_Title, IMDB_Rating
FROM movies
WHERE Star1 = 'Tom Hanks' LIMIT 5 DESC;

-- Question 10: Movies starring both Bradley Cooper and J. Lawrence
SELECT Series_Title
FROM movies
WHERE (Star1 = 'Bradley Cooper' OR Star2 = 'Bradley Cooper') AND
       (Star1 = 'J. Lawrence' OR Star2 = 'J. Lawrence') OR
       (Star3 = 'Bradley Cooper' OR Star4 = 'Bradley Cooper') AND
       (Star3 = 'J. Lawrence' OR Star4 = 'J. Lawrence');

-- Question 11: Most frequent actor in top 100 rated movies
WITH TOP100 AS (
  SELECT Star1, Star2, Star3, Star4 
  FROM movies 
  ORDER BY IMDB_Rating DESC
  LIMIT 100
  )
SELECT ACTOR, COUNT(*) AS ACTOR_COUNT
FROM (
  SELECT Star1 AS ACTOR FROM TOP100
  UNION ALL
  SELECT Star2 FROM TOP100
  UNION ALL
  SELECT Star3 FROM TOP100
  UNION ALL
  SELECT Star4 FROM TOP100
) AS ALL_ACTORS
GROUP BY ACTOR 
ORDER BY ACTOR_COUNT DESC
LIMIT 1;

-- Question 12: Year with the highest number of movie releases
SELECT Released_Year, COUNT(*) AS Movie_Count
FROM movies GROUP BY Released_Year 
ORDER BY Movie_Count DESC
LIMIT 1;

-- Question 13: Average rating of each genre
SELECT Genre, AVG(IMDB_Rating) AS Avg_Rating
FROM movies
GROUP BY Genre
ORDER BY Avg_Rating DESC;

-- Question 14: Movies with missing ratings
SELECT Series_Title, IMDB_Rating
FROM movies
WHERE IMDB_Rating IS NULL;

---- Question 15: Movies with the highest gross earnings
SELECT Series_Title, Gross
FROM movies
ORDER BY Gross DESC
LIMIT 1;

-- Question 16: Movies with the lowest gross earnings
SELECT Series_Title, Gross
FROM movies
ORDER BY Gross ASC
LIMIT 1;

-- Question 17: Movies with the highest number of votes
SELECT Series_Title, No_of_Votes
FROM movies
ORDER BY No_of_Votes DESC
LIMIT 1;

-- Question 18: Movies with the highest meta score
SELECT Series_Title, Meta_Score
FROM movies
ORDER BY Meta_Score DESC
LIMIT 1;
