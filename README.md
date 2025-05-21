# Music Database Project

A comprehensive music database system that manages artists, albums, songs, labels, studios, and distributors.

## Database Structure

### Tables

1. **Artists**
   - `ArtistID` (Primary Key)
   - `Name` (Unique)
   - `Country`
   - `FormedYear`

2. **Labels**
   - `LabelID` (Primary Key)
   - `Name` (Unique)
   - `Country`

3. **Studios**
   - `StudioID` (Primary Key)
   - `Name` (Unique)
   - `Location`

4. **Distributors**
   - `DistributorID` (Primary Key)
   - `Name` (Unique)
   - `Region`

5. **Albums**
   - `AlbumID` (Primary Key)
   - `Title`
   - `ArtistName` (Added for direct reference)
   - `ArtistID` (Foreign Key to Artists)
   - `LabelID` (Foreign Key to Labels)
   - `StudioID` (Foreign Key to Studios)
   - `DistributorID` (Foreign Key to Distributors)
   - `ReleaseDate`
   - Foreign Key Constraints:
     - `ArtistID` references `Artists(ArtistID)`
     - `LabelID` references `Labels(LabelID)`
     - `StudioID` references `Studios(StudioID)`
     - `DistributorID` references `Distributors(DistributorID)`

6. **Songs**
   - `SongID` (Primary Key)
   - `Title`
   - `ArtistID` (Foreign Key to Artists)
   - `AlbumID` (Foreign Key to Albums)
   - `DurationSeconds`
   - `ReleaseYear`
   - Foreign Key Constraints:
     - `ArtistID` references `Artists(ArtistID)`
     - `AlbumID` references `Albums(AlbumID)`

7. **Genres**
   - `GenreID` (Primary Key)
   - `Name` (Unique)
   - `Description`

8. **Song_Genre** (Junction Table)
   - `SongID` (Foreign Key to Songs)
   - `GenreID` (Foreign Key to Genres)
   - Primary Key: (`SongID`, `GenreID`)
   - Foreign Key Constraints:
     - `SongID` references `Songs(SongID)`
     - `GenreID` references `Genres(GenreID)`

9. **Album_Features** (Junction Table)
   - `AlbumID` (Foreign Key to Albums)
   - `ArtistID` (Foreign Key to Artists)
   - Primary Key: (`AlbumID`, `ArtistID`)
   - Foreign Key Constraints:
     - `AlbumID` references `Albums(AlbumID)`
     - `ArtistID` references `Artists(ArtistID)`

## Relationships

1. **One-to-Many Relationships:**
   - Artist to Albums (One artist can have many albums)
   - Artist to Songs (One artist can have many songs)
   - Label to Albums (One label can release many albums)
   - Studio to Albums (One studio can record many albums)
   - Distributor to Albums (One distributor can distribute many albums)
   - Album to Songs (One album can contain many songs)

2. **Many-to-Many Relationships:**
   - Songs to Genres (via Song_Genre table)
   - Albums to Artists (via Album_Features table)

## Sample Data

The database includes sample data for:
- Various artists from different countries
- Multiple music labels
- Recording studios
- Music distributors
- Albums with their features
- Songs with genres

## Key Features

1. **Data Integrity:**
   - Primary Keys on all tables
   - Foreign Key constraints
   - Unique constraints where appropriate
   - NOT NULL constraints on required fields

2. **Indexes:**
   - Created on frequently queried columns
   - Optimized for common search patterns

3. **Constraints:**
   - Check constraints on numeric values
   - Unique constraints on names
   - Foreign key constraints with appropriate ON DELETE actions

## Usage

To use this database:

1. Create the database:
```sql
CREATE DATABASE music;
USE music;
```

2. Run the table creation scripts in order:
   - Create base tables (Artists, Labels, Studios, Distributors)
   - Create dependent tables (Albums, Songs)
   - Create junction tables (Song_Genre, Album_Features)

3. Insert data using the provided INSERT statements

## Notes

- The database uses appropriate data types for each column
- Timestamps are used for tracking creation and updates
- Appropriate indexes are created for performance optimization
- Foreign key constraints ensure data integrity
- The schema supports both physical and digital music products
