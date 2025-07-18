-- views.sql: Views for recommendations and summaries

-- View: Top 3 recommended movies
CREATE OR REPLACE VIEW TopRatedMovies AS
SELECT 
    m.Title,
    ROUND(AVG(r.Rating), 2) AS AvgRating
FROM Movies m
JOIN Ratings r ON m.MovieID = r.MovieID
GROUP BY m.MovieID
HAVING COUNT(r.Rating) >= 2
ORDER BY AvgRating DESC
LIMIT 3;

-- View: Most active reviewers
CREATE OR REPLACE VIEW TopReviewers AS
SELECT 
    u.Name,
    COUNT(rv.ReviewID) AS TotalReviews
FROM Users u
JOIN Reviews rv ON u.UserID = rv.UserID
GROUP BY u.UserID
ORDER BY TotalReviews DESC;