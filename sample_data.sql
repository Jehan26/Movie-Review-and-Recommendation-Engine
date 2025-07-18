-- sample_data.sql: Sample data for Movie Review & Recommendation Engine

-- Users
INSERT INTO Users (Name, Age, Gender) VALUES
('Alice', 25, 'Female'),
('Bob', 30, 'Male'),
('Charlie', 22, 'Male'),
('Diana', 28, 'Female');

-- Movies
INSERT INTO Movies (Title, Genre, ReleaseYear) VALUES
('Inception', 'Sci-Fi', 2010),
('The Godfather', 'Crime', 1972),
('Interstellar', 'Sci-Fi', 2014),
('The Dark Knight', 'Action', 2008),
('Parasite', 'Drama', 2019);

-- Ratings
INSERT INTO Ratings (MovieID, UserID, Rating, RatedAt) VALUES
(1, 1, 9, '2023-01-01'),
(1, 2, 10, '2023-01-02'),
(2, 3, 8, '2023-01-03'),
(3, 1, 10, '2023-01-04'),
(3, 4, 9, '2023-01-05'),
(4, 2, 8, '2023-01-06'),
(5, 3, 9, '2023-01-07'),
(5, 4, 10, '2023-01-08');

-- Reviews
INSERT INTO Reviews (MovieID, UserID, Comment) VALUES
(1, 1, 'Mind-blowing visuals and plot.'),
(2, 3, 'A classic. Brilliant acting.'),
(3, 4, 'One of the best sci-fi films ever.'),
(5, 4, 'Deserves all the Oscars!');