/*
http://www.espn.com/nfl/superbowl/history/winners
https://www.statmuse.com/nfl/ask/which-nfl-team-has-the-most-super-bowl-appearances
https://www.sportsunfold.com/most-wins-in-nfl-history/
https://www.statista.com/statistics/784521/nfl-team-ranking-by-all-time-regular-season-wins/
https://www.checkli.com/checklists/viewro/5c57968f5d279
*/

CREATE DATABASE NFL;

USE NFL;

-- Creating Teams table for all 32 teams in the NFL

CREATE TABLE Teams
(
ID INT NOT NULL AUTO_INCREMENT,
Team_Name VARCHAR(75),
City VARCHAR(50),
State VARCHAR(50),
Owners VARCHAR(75),
PRIMARY KEY(ID)
);

-- Insert data into the teams table

INSERT INTO Teams(Team_Name, City, State, Owners)
VALUES
('49ers', 'San Francisco', 'California', 'Denise & Jed York'),
('Bears', 'Chicago', 'Illinois', 'Virginia Halas McCaskey'),
('Bengals', 'Cincinnati', 'Ohio', 'Mike Brown'),
('Bills', 'Buffalo', 'New York', 'Kim & Terry Pegula'),
('Broncos', 'Denver', 'Colorado', 'Rob Walton'),
('Browns', 'Cleveland', 'Ohio', 'Jimmy & Dee Haslam'),
('Buccaneers', 'Tampa Bay', 'Florida', 'Avram, Bryan, Darcie Glazer Kassewitz, Edward, Joel, & Kevin Glazer'),
('Cardinals', Null, 'Arizona', 'Michael Bidwill'),
('Chargers', 'Los Angeles', 'California', 'Dean Spanos'),
('Chiefs', 'Kansas City', 'Missouri', 'Clark Hunt'),
('Colts', 'Indianapolis', 'Indiana', 'Jim Irsay'),
('Commanders', 'Washington DC', 'Maryland', 'Dan Snyder'),
('Cowboys', 'Dallas', 'Texas', 'Jerry Jones'),
('Dolphins', 'Miami', 'Florida', 'Stephen M. Ross'),
('Eagles', 'Philadelphia', 'Pennsylvania', 'Jeffrey Lurie'),
('Falcons', 'Atlanta', 'Georgia', 'Arthur Blank'),
('Giants', 'New York', 'New York', 'John Mara & Steve Tisch'),
('Jaguars', 'Jacksonville', 'Florida', 'Shahid Khan'),
('Jets', 'New York', 'New York', 'Robert Wood Johnson IV & Christopher Wold Johnson'),
('Lions', 'Detroit', 'Michigan', 'Sheila Ford Hamp'),
('Packers', 'Green Bay', 'Wisconsin', 'Green Bay Packers, Inc.'),
('Panthers', 'Carolina', 'North Carolina', 'David Tepper'),
('Patriots', 'New England', 'Massachusetts', 'Robert Kraft'),
('Raiders', 'Las Vegas', 'Nevada', 'Carol & Mark Davis'),
('Rams', 'Los Angeles', 'California', 'Stan Kroenke'),
('Ravens', 'Baltimore', 'Maryland', 'Steve Bisciotti'),
('Saints', 'New Orleans', 'Louisiana', 'Gayle Benson'),
('Seahawks', 'Seattle', 'Washington', 'Jody Allen'),
('Steelers', 'Pittsburgh', 'Pennsylvania', 'Art Rooney II'),
('Texans', 'Houston', 'Texas', 'Janice McNair'),
('Titans', Null, 'Tennessee', 'Amy Adams Strunk'),
('Vikings', Null, 'Minnesota', 'Zygi Wilf');

SELECT *
FROM Teams;

-- Creating Conference table between the AFC (American Football Conference) & NFC (National Football Conference)

CREATE TABLE Conference
(
AFC_Team_Name VARCHAR(75),
NFC_Team_Name VARCHAR(75)
);

-- Adding the data into the Conference table

INSERT INTO Conference(AFC_Team_Name, NFC_Team_Name)
VALUES
('Bengals','49ers'),
('Bills','Bears'),
('Broncos','Buccaneers'),
('Browns','Cardinals'),
('Chargers','Commanders'),
('Chiefs','Cowboys'),
('Colts','Eagles'),
('Dolphins','Falcons'),
('Jaguars','Giants'),
('Jets','Lions'),
('Patriots','Packers'),
('Raiders','Panthers'),
('Ravens','Rams'),
('Steelers','Saints'),
('Texans','Seahawks'),
('Titans','Vikings');

SELECT *
FROM Conference;

-- Creating Division table for the AFC/NFC North, South, East & West

CREATE TABLE Division
(
AFC_North VARCHAR(20),
AFC_South VARCHAR(20),
AFC_East VARCHAR(20),
AFC_West VARCHAR(20),
NFC_North VARCHAR(20),
NFC_South VARCHAR(20),
NFC_East VARCHAR(20),
NFC_West VARCHAR(20)
);

-- Inserting all team names for the division

INSERT INTO Division(AFC_North, AFC_South, AFC_East, AFC_West, NFC_North, NFC_South, NFC_East, NFC_West)
VALUES
('Browns','Colts', 'Bills', 'Broncos', 'Bears', 'Buccaneers', 'Commanders', '49ers'),
('Bengals','Jaguars', 'Dolphins', 'Chargers', 'Lions', 'Falcons', 'Cowboys', 'Cardinals'),
('Ravens', 'Texans', 'Jets', 'Chiefs', 'Packers', 'Panthers', 'Eagles', 'Rams'),
('Steelers', 'Titans', 'Patriots', 'Raiders', 'Vikings', 'Saints', 'Giants', 'Seahawks');

SELECT *
FROM Division;


-- Creating Coaches table for all the coaches in the NFL as of 2021

CREATE TABLE Coaches
(
ID INT AUTO_INCREMENT,
Head_Coach VARCHAR(75),
Team_Name VARCHAR(75),
PRIMARY KEY(ID)
);

-- Inserting all coaches(2021) for the NFL teams

INSERT INTO Coaches(Head_Coach, Team_Name)
VALUES
('Kyle Shanahan', '49ers'),
('Matt Nagy', 'Bears'),
('Zac Taylor', 'Bengals'),
('Sean McDermott', 'Bills'),
('Vic Fangio', 'Broncos'),
('Kevin Stefanski', 'Browns'),
('Bruce Arians', 'Buccaneers'),
('Kliff Kingsbury', 'Cardinals'),
('Brandon Staley', 'Chargers'),
('Andy Reid', 'Chiefs'),
('Frank Reich', 'Colts'),
('Ron Rivera', 'Commanders'),
('Mike McCarthy', 'Cowboys'),
('Brian Flores', 'Dolphins'),
('Nick Sirianni', 'Eagles'),
('Arthur Smith', 'Falcons'),
('Joe Judge', 'Giants'),
('Darrell Bevell', 'Jaguars'),
('Robert Saleh', 'Jets'),
('Dan Campbell', 'Lions'),
('Matt LaFleur', 'Packers'),
('Matt Rhule', 'Panthers'),
('Bill Belichick', 'Patriots'),
('Jon Gruden', 'Raiders'),
('Sean McVay', 'Rams'),
('John Harbaugh', 'Ravens'),
('Sean Payton', 'Saints'),
('Pete Carroll', 'Seahawks'),
('Mike Tomlin', 'Steelers'),
('David Culley', 'Texans'),
('Mike Vrabel', 'Titans'),
('Mike Zimmer', 'Vikings');

SELECT *
FROM Coaches;


-- Creating Owners as of 2021 for the NFL 

CREATE TABLE Owners
(
ID INT AUTO_INCREMENT,
Team_Name VARCHAR(75),
Owners_Name VARCHAR(75),
Year_Purchased INT,
PRIMARY KEY(ID)
);

-- Adding all owners as of 2021 to the teams

INSERT INTO Owners(Team_Name, Owners_Name, Year_Purchased)
VALUES
('49ers', 'Denise & Jed York', 1977),
('Bears', 'Virginia Halas McCaskey', 1920),
('Bengals', 'Mike Brown', 2011),
('Bills', 'Kim & Terry Pegula', 2014),
('Broncos', 'Rob Walton', 2022),
('Browns', 'Jimmy & Dee Haslam', 2012),
('Buccaneers', 'Avram, Bryan, Darcie Glazer Kassewitz, Edward, Joel, & Kevin Glazer', 1995),
('Cardinals', 'Michael Bidwill', 1935),
('Chargers', 'Dean Spanos', 1984),
('Chiefs', 'Clark Hunt', 1960),
('Colts', 'Jim Irsay', 1972),
('Commanders', 'Dan Snyder', 1999),
('Cowboys', 'Jerry Jones', 1989),
('Dolphins', 'Stephen M. Ross', 2008),
('Eagles', 'Jeffrey Lurie', 1994),
('Falcons', 'Arthur Blank', 2002),
('Giants', 'John Mara & Steve Tisch', 1925),
('Jaguars', 'Shahid Khan', 2012),
('Jets', 'Robert Wood Johnson IV & Christopher Wold Johnson', 2000),
('Lions', 'Sheila Ford Hamp', 1963),
('Packers', 'Green Bay Packers, Inc.', 1923),
('Panthers', 'David Tepper', 2018),
('Patriots', 'Robert Kraft', 1994),
('Raiders', 'Carol & Mark Davis', 2011),
('Rams', 'Stan Kroenke', 2010),
('Ravens', 'Steve Bisciotti', 2004),
('Saints', 'Gayle Benson', 1985),
('Seahawks', 'Jody Allen', 1997),
('Steelers', 'Art Rooney II', 1933),
('Texans', 'Janice McNair', 1999),
('Titans', 'Amy Adams Strunk', 1959),
('Vikings', 'Zygi Wilf', 2005);


SELECT *
FROM Owners;


-- Creating Total Season Records table since the start of the teams

CREATE TABLE Total_Season_Records
(
ID INT AUTO_INCREMENT,
Team_Name VARCHAR(75),
Games_Played INT,
Wins INT,
Losses INT,
Tie INT,
PRIMARY KEY(ID)
);

-- Inserting all time records as of 2021

INSERT INTO Total_Season_Records(Team_Name, Games_Played, Wins, Losses, Tie)
VALUES
('49ers', 1067, 561, 492, 14),
('Bears', 1435, 783, 610, 42),
('Bengals', 837, 373, 459, 5),
('Bills', 949, 449, 492, 8),
('Broncos', 949, 495, 444, 10),
('Browns', 1019, 494, 514, 11),
('Buccaneers', 725, 291, 433, 1),
('Cardinals', 1395, 577, 777, 41),
('Chargers', 949, 468, 470, 11),
('Chiefs', 949, 507, 430, 12),
('Colts', 1031, 543, 481, 7),
('Commanders', 1267, 617, 622, 28),
('Cowboys', 947, 538, 403, 6),
('Dolphins', 865, 476, 385, 4),
('Eagles', 1253, 599, 627, 27),
('Falcons', 865, 376, 483, 6),
('Giants', 1370, 706, 631, 33),
('Jaguars', 433, 180, 253, 0),
('Jets', 949, 414, 527, 8),
('Lions', 1298, 570, 694, 34),
('Packers', 1401, 782, 581, 38),
('Panthers', 433, 205, 227, 1),
('Patriots', 949, 529, 411, 9),
('Raiders', 949, 491, 447, 11),
('Rams', 1200, 599, 580, 21),
('Ravens', 417, 233, 183, 1),
('Saints', 851, 396, 450, 5),
('Seahawks', 725, 374, 350, 1),
('Steelers', 1237, 652, 563, 22),
('Texans', 321, 139, 182, 0),
('Titans', 949, 463, 480, 6),
('Vikings', 935, 503, 421, 11);


SELECT *
FROM Total_Season_Records;

SELECT Team_Name, Wins
FROM Total_Season_Records
ORDER BY Wins DESC;

SELECT Team_Name, Losses
FROM Total_Season_Records
ORDER BY Losses DESC;

SELECT Team_Name, Tie
FROM Total_Season_Records
ORDER BY Tie DESC;

SELECT Team_Name, Games_Played
FROM Total_Season_Records
ORDER BY Games_Played DESC;


-- Creating Playoffs Records for teams all time 

CREATE TABLE Playoffs_Records
(
ID INT AUTO_INCREMENT,
Team_Name VARCHAR(75),
Playoff_Games_Played INT,
Playoffs_Wins INT,
Playoffs_Losses INT,
PRIMARY KEY(ID)
);

-- Inserting Playoffs Records for teams all time 

INSERT INTO Playoffs_Records(Team_Name, Playoff_Games_Played, Playoffs_Wins, Playoffs_Losses)
VALUES
('49ers', 56, 34, 22),
('Bears', 37, 17, 20),
('Bengals', 23, 8, 15),
('Bills', 36, 17, 19),
('Broncos', 42, 23, 19),
('Browns', 33, 12, 21),
('Buccaneers', 21, 11, 10),
('Cardinals', 17, 7, 10),
('Chargers', 30, 12, 18),
('Chiefs', 38, 17, 21),
('Colts', 48, 23, 25),
('Commanders', 43, 23, 20),
('Cowboys', 64, 35, 29),
('Dolphins', 41, 20, 21),
('Eagles', 47, 23, 24),
('Falcons', 24, 10, 14),
('Giants', 49, 24, 25),
('Jaguars', 14, 7, 7),
('Jets', 25, 12, 13),
('Lions', 20, 7, 13),
('Packers', 61, 36, 25),
('Panthers', 17, 9, 8),
('Patriots', 59, 37, 22),
('Raiders', 45, 25, 20),
('Rams', 53, 26, 27),
('Ravens', 27, 16, 11),
('Saints', 23, 10, 13),
('Seahawks', 35, 17, 18),
('Steelers', 63, 36, 27),
('Texans', 10, 4, 6),
('Titans', 40, 17, 23),
('Vikings', 51, 21, 30);

SELECT *
FROM Playoffs_Records;

SELECT * FROM NFL.Playoffs_Records;

SELECT Team_Name, Playoffs_Wins
FROM Playoffs_Records
ORDER BY Playoffs_Wins DESC;

SELECT Team_Name, Playoffs_Losses
FROM Playoffs_Records
ORDER BY Playoffs_Losses DESC;

SELECT Team_Name, Playoff_Games_Played
FROM Playoffs_Records
ORDER BY Playoff_Games_Played DESC;

-- Creating all time Superbowl Records table 

CREATE TABLE Superbowl_Records
(
ID INT AUTO_INCREMENT,
Team_Name VARCHAR(75),
SB_Appearence INT,
SB_Wins INT,
SB_Losses INT,
PRIMARY KEY(ID)
);

SELECT Team_Name, SB_Appearence
FROM Superbowl_Records
ORDER BY SB_Appearence DESC;

SELECT Team_Name, SB_Appearence AS 'No Appearences'
FROM Superbowl_Records
WHERE SB_Appearence = 0;


-- Inserting all time Superbowl Records table 

INSERT INTO Superbowl_Records(Team_Name, SB_Appearence, SB_Wins, SB_Losses)
VALUES
('49ers', 7, 5, 2),
('Bears', 2, 1, 1),
('Bengals', 3, 0, 3),
('Bills', 4, 0, 4),
('Broncos', 8, 3, 5),
('Browns', 0, 0, 0),
('Buccaneers', 2, 2, 0),
('Cardinals', 1, 0, 1),
('Chargers', 1, 0, 1),
('Chiefs', 4, 2, 2),
('Colts', 4, 2, 2),
('Commanders', 5, 3, 2),
('Cowboys', 8, 5, 3),
('Dolphins', 5, 2, 3),
('Eagles', 3, 1, 2),
('Falcons', 2, 0, 2),
('Giants', 5, 4, 1),
('Jaguars', 0, 0, 0),
('Jets', 1, 1, 0),
('Lions', 0, 0, 0),
('Packers', 5, 4, 1),
('Panthers', 2, 0, 2),
('Patriots', 11, 6, 5),
('Raiders', 5, 3, 2),
('Rams', 5, 2, 3),
('Ravens', 2, 2, 0),
('Saints', 1, 1, 0),
('Seahawks', 3, 1, 2),
('Steelers', 8, 6, 2),
('Texans', 0, 0, 0),
('Titans', 1, 0, 1),
('Vikings', 4, 0, 4);


SELECT *
FROM Superbowl_Records;


-- Creating Superbowl table in order from 1st to current 2022

CREATE TABLE Superbowl
(
SB_ID INT AUTO_INCREMENT,
Time_Period INT,
AFC_Team VARCHAR(75),
NFC_Team VARCHAR(75),
Score VARCHAR(75),
Winning_Team VARCHAR(50),
PRIMARY KEY(SB_ID)
);


INSERT INTO Superbowl(Time_Period, AFC_Team, NFC_Team, Score, Winning_Team)
VALUES
(1967, 'Chiefs', 'Packers', '35 - 10', 'Packers'),
(1968, 'Raiders', 'Packers', '33 - 14', 'Packers'),
(1969, 'Jets', 'Ravens', '16 - 7', 'Jets'),
(1970, 'Chiefs', 'Vikings', '23 - 7', 'Chiefs'),
(1971, 'Ravens', 'Cowboys', '16 - 13', 'Ravens'),
(1972, 'Dolphins', 'Cowboys', '24 - 3', 'Cowboys'),
(1973, 'Dolphins', 'Redskins', '14 - 7', 'Dolphins'),
(1974, 'Dolphins', 'Vikings', '24 - 7', 'Dolphins'),
(1975, 'Steelers', 'Vikings', '16 - 6', 'Steelers'),
(1976, 'Steelers', 'Cowboys', '21 - 17', 'Steelers'),
(1977, 'Raiders', 'Vikings', '32 - 14', 'Raiders'),
(1978, 'Broncos', 'Cowboys', '27 - 10', 'Cowboys'),
(1979, 'Steelers', 'Cowboys', '35 - 31', 'Steelers'),
(1980, 'Steelers', 'Rams', '31 - 19', 'Steelers'),
(1981, 'Raiders', 'Eagles', '27 - 10', 'Raiders'),
(1982, 'Bengals', '49ers', '26 - 21', '49ers'),
(1983, 'Dolphins', 'Redskins', '27 - 17', 'Redskins'),
(1984, 'Raiders', 'Redskins', '38 - 9', 'Raiders'),
(1985, 'Dolphins', '49ers', '38 - 16', '49ers'),
(1986, 'Patriots', 'Bears', '46 - 10', 'Bears'),
(1987, 'Broncos', 'Giants', '39 - 20', 'Giants'),
(1988, 'Broncos', 'Redskins', '42 - 10', 'Redskins'),
(1989, 'Bengals', '49ers', '20 - 16', '49ers'),
(1990, 'Broncos', '49ers', '55 - 10', '49ers'),
(1991, 'Bills', 'Giants', '20 - 19', 'Giants'),
(1992, 'Bills', 'Redskins', '37 - 24', 'Redskins'),
(1993, 'Bills', 'Cowboys', '52 - 17', 'Cowboys'),
(1994, 'Bills', 'Cowboys', '30 - 13', 'Cowboys'),
(1995, 'Chargers', '49ers', '49 - 26', '49ers'),
(1996, 'Steelers', 'Cowboys', '27 - 17', 'Cowboys'),
(1997, 'Patriots', 'Packers', '35 - 21', 'Packers'),
(1998, 'Broncos', 'Packers', '31 - 24', 'Broncos'),
(1999, 'Broncos', 'Packers', '34 - 19', 'Broncos'),
(2000, 'Chiefs', 'Rams', '23 - 16', 'Rams'),
(2001, 'Ravens', 'Packers', '34 - 7', 'Ravens'),
(2002, 'Patriots', 'Packers', '20 - 17', 'Patriots'),
(2003, 'Chiefs', 'Buccaneers', '48 - 21', 'Buccaneers'),
(2004, 'Patriots', 'Panthers', '32 - 29', 'Patriots'),
(2005, 'Patriots', 'Eagles', '24 - 21', 'Patriots'),
(2006, 'Steelers', 'Seahawks', '21 - 10', 'Steelers'),
(2007, 'Colts', 'Bears', '29 - 17', 'Colts'),
(2008, 'Patriots', 'Giants', '17 - 14', 'Giants'),
(2009, 'Steelers', 'Cardinals', '27 - 23', 'Steelers'),
(2010, 'Colts', 'Saints', '31 - 17', 'Saints'),
(2011, 'Steelers', 'Packers', '31 - 25', 'Packers'),
(2012, 'Patriots', 'Giants', '21 - 17', 'Giants'),
(2013, 'Ravens', '49ers', '34 - 31', 'Ravens'),
(2014, 'Broncos', 'Seahawks', '43 - 8', 'Seahawks'),
(2015, 'Patriots', 'Seahawks', '28 - 24', 'Patriots'),
(2016, 'Broncos', 'Panthers', '24 - 10', 'Broncos'),
(2017, 'Patriots', 'Falcons', '34 - 28', 'Patriots'),
(2018, 'Patriots', 'Eagles', '41 - 33', 'Eagles'),
(2019, 'Patriots', 'Rams', '13 - 3', 'Patriots'),
(2020, 'Chiefs', '49ers', '31 - 20', 'Chiefs'),
(2021, 'Chiefs', 'Buccaneers', '31 - 9', 'Buccaneers'),
(2022, 'Bengals', 'Rams', '23 - 20', 'Rams');


SELECT *
FROM Superbowl;


SELECT Winning_Team, COUNT(Winning_Team) AS 'Superbowl Rings'
FROM Superbowl
GROUP BY Winning_Team
ORDER BY 2 DESC;

SELECT AFC_Team, COUNT(AFC_Team) AS Appearences
FROM Superbowl
GROUP BY AFC_Team
ORDER BY Appearences DESC;

SELECT NFC_Team, COUNT(NFC_Team) AS Appearences
FROM Superbowl
GROUP BY NFC_Team
ORDER BY Appearences DESC;


-- Creating Team Origin table

CREATE TABLE Team_Origin
(
ID INT AUTO_INCREMENT,
Team_Name VARCHAR(75),
Origin_Year INT,
PRIMARY KEY(ID)
);

-- Inserting data for Team Origin

INSERT INTO Team_Origin(Team_Name, Origin_Year)
VALUES
('49ers', 1950),
('Bears', 1920),
('Bengals', 1968),
('Bills', 1960),
('Broncos', 1960),
('Browns', 1950),
('Buccaneers', 1976),
('Cardinals', 1920),
('Chargers', 1960),
('Chiefs', 1960),
('Colts', 1953),
('Commanders', 1932),
('Cowboys', 1960),
('Dolphins', 1966),
('Eagles', 1933),
('Falcons', 1966),
('Giants', 1925),
('Jaguars', 1995),
('Jets', 1960),
('Lions', 1930),
('Packers', 1921),
('Panthers', 1995),
('Patriots', 1960),
('Raiders', 1960),
('Rams', 1937),
('Ravens', 1996),
('Saints', 1967),
('Seahawks', 1976),
('Steelers', 1933),
('Texans', 2002),
('Titans', 1960),
('Vikings', 1961);

SELECT *
FROM Team_Origin;