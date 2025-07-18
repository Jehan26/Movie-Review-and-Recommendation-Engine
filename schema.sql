-- schema.sql: Database schema for Movie Review & Recommendation Engine

CREATE TABLE Users (
    UserID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10)
);

CREATE TABLE Movies (
    MovieID SERIAL PRIMARY KEY,
    Title VARCHAR(200),
    Genre VARCHAR(50),
    ReleaseYear INT
);

CREATE TABLE Ratings (
    RatingID SERIAL PRIMARY KEY,
    MovieID INT REFERENCES Movies(MovieID),
    UserID INT REFERENCES Users(UserID),
    Rating INT CHECK (Rating >= 1 AND Rating <= 10),
    RatedAt DATE
);

CREATE TABLE Reviews (
    ReviewID SERIAL PRIMARY KEY,
    MovieID INT REFERENCES Movies(MovieID),
    UserID INT REFERENCES Users(UserID),
    Comment TEXT,
    ReviewDate DATE DEFAULT CURRENT_DATE
);