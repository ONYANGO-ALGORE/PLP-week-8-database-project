-- 1. Artists
CREATE TABLE Artists (
    ArtistID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Artists (Name) VALUES
('Lilwayne'), ('Chrisbrown'), ('Nyashinski'), ('Eminem'), ('Dave'),
('Popcaan'), ('Drake'), ('Miss Eliot'), ('Sauti Sol'), ('Wakadinali'),
('Nasty C'), ('Nikiminaj');

-- 2. Labels
CREATE TABLE Labels (
    LabelID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL UNIQUE,
    Country VARCHAR(100)
);

INSERT INTO Labels (Name, Country) VALUES
('Young Money', 'USA'),
('RCA Records', 'USA'),
('Kaka Empire', 'Kenya'),
('Shady Records', 'USA'),
('Neighbourhood', 'UK'),
('Unruly Entertainment', 'Jamaica'),
('OVO Sound', 'Canada'),
('Goldmind Inc.', 'USA'),
('Sol Generation', 'Kenya'),
('Rong Rende', 'Kenya'),
('Def Jam Africa', 'South Africa');

-- 3. Studios
CREATE TABLE Studios (
    StudioID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL UNIQUE,
    Location VARCHAR(100)
);

INSERT INTO Studios (Name, Location) VALUES
('Cash Money Studios', 'New Orleans'),
('Record Plant', 'Los Angeles'),
('Decimal Studios', 'Nairobi'),
('Effigy Studios', 'Detroit'),
('Abbey Road', 'London'),
('Unruly Studio', 'Kingston'),
('SOTA Studios', 'Toronto'),
('Hit Factory', 'Miami'),
('MG Studios', 'Nairobi'),
('Black Market Studios', 'Nairobi'),
('Red Bull Studio', 'Cape Town'),
('Platinum Sound', 'New York');

-- 4. Distributors
CREATE TABLE Distributors (
    DistributorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL UNIQUE,
    Region VARCHAR(100)
);

INSERT INTO Distributors (Name, Region) VALUES
('Universal Music', 'Global'),
('Sony Music', 'Global'),
('Boomplay', 'Africa'),
('Aftermath', 'USA'),
('Warner Music', 'Global'),
('VP Records', 'Caribbean'),
('Republic Records', 'North America'),
('Atlantic Records', 'USA'),
('Mdundo', 'Africa'),
('Black Market', 'Africa'),
('Def Jam', 'Africa'),
('TuneCore', 'Global');

-- 5. Albums
CREATE TABLE Albums (
    AlbumID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(150) NOT NULL,
    ReleaseDate DATE NOT NULL,
    ArtistID INT NOT NULL,
    LabelID INT NOT NULL,
    StudioID INT NOT NULL,
    DistributorID INT NOT NULL,
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
    FOREIGN KEY (LabelID) REFERENCES Labels(LabelID),
    FOREIGN KEY (StudioID) REFERENCES Studios(StudioID),
    FOREIGN KEY (DistributorID) REFERENCES Distributors(DistributorID)
);

INSERT INTO Albums (Title, ReleaseDate, ArtistID, LabelID, StudioID, DistributorID) VALUES
('Tha Carter III', '2008-06-10', 1, 25, 1, 1),
('F.A.M.E.', '2011-03-18', 2, 2, 2, 2),
('Now You Know', '2021-05-15', 3, 3, 3, 3),
('The Marshall Mathers LP 2', '2013-11-05', 4, 4, 4, 4),
('Psychodrama', '2019-03-08', 5, 5, 5, 5),
('Where We Come From', '2014-06-10', 6, 6, 6, 6),
('Scorpion', '2018-06-29', 7, 7, 7, 7),
('Under Construction', '2002-11-12', 8, 8, 8, 8),
('Afrikan Sauce', '2019-01-31', 9, 9, 9, 9),
('Victims of Madness', '2021-11-01', 10, 10, 10, 10),
('Zulu Man With Some Power', '2020-08-28', 11, 11, 11, 11),
('Pink Friday', '2010-11-22', 12, 12, 12, 12),
('No Ceilings', '2009-10-31', 1, 1, 1, 1),
('Indigo', '2019-06-28', 2, 2, 2, 2),
('Balance', '2022-04-01', 3, 3, 3, 3),
('Music to Be Murdered By', '2020-01-17', 4, 4, 4, 4),
('We’re All Alone In This Together', '2021-07-23', 5, 5, 5, 5),
('Great Is He', '2023-01-27', 6, 6, 6, 6),
('Certified Lover Boy', '2021-09-03', 7, 7, 7, 7),
('Iconology', '2019-08-23', 8, 8, 8, 8),
('Midnight Train', '2020-06-05', 9, 9, 9, 9),
('Ivyson Army Tour Mixtape', '2022-09-15', 11, 11, 11, 11),
('Queen', '2018-08-10', 12, 12, 12, 12);

-- Add artist name column to Albums table
ALTER TABLE Albums
ADD COLUMN ArtistName VARCHAR(100) AFTER Title;

-- Update the ArtistName column with data from Artists table
UPDATE Albums a
JOIN Artists ar ON a.ArtistID = ar.ArtistID
SET a.ArtistName = ar.Name; 
-- Fueled by Coffee with the teachings of Zablon and Geralrd from PLP(I have to try get those marks coz you guys are strict but fun 😂😂)