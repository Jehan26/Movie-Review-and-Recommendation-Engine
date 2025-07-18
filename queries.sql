-- queries.sql: Movie ratings and recommendation queries

-- 1. Average rating per movie
SELECT 
    m.Title,
    ROUND(AVG(r.Rating), 2) AS AvgRating,
    COUNT(r.Rating) AS TotalRatings
FROM Movies m
JOIN Ratings r ON m.MovieID = r.MovieID
GROUP BY m.MovieID
ORDER BY AvgRating DESC;

-- 2. Highest rated movies (at least 2 ratings)
SELECT 
    m.Title,
    ROUND(AVG(r.Rating), 2) AS AvgRating
FROM Movies m
JOIN Ratings r ON m.MovieID = r.MovieID
GROUP BY m.MovieID
HAVING COUNT(r.Rating) >= 2
ORDER BY AvgRating DESC;

-- 3. User review history
SELECT 
    u.Name, m.Title, rv.Comment, rv.ReviewDate
FROM Reviews rv
JOIN Users u ON rv.UserID = u.UserID
JOIN Movies m ON rv.MovieID = m.MovieID
ORDER BY rv.ReviewDate DESC;

-- 4. Rank movies using window function
SELECT 
    m.Title,
    ROUND(AVG(r.Rating), 2) AS AvgRating,
    RANK() OVER (ORDER BY AVG(r.Rating) DESC) AS Rank
FROM Movies m
JOIN Ratings r ON m.MovieID = r.MovieID
GROUP BY m.MovieID;