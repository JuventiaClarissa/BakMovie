CREATE DATABASE BakMovie

USE[BakMovie]

CREATE TABLE [User](
	Nickname VARCHAR(255) CHECK(LEN(nickname)>5),
	Fullname VARCHAR(255),
	Email VARCHAR(255) CHECK(Email LIKE '%@%'),
	City VARCHAR(255),
	[Description] VARCHAR(255),
	ID CHAR(6) PRIMARY KEY CHECK(ID LIKE'USR[0-9][0-9][0-9]')
)

CREATE TABLE SalesTransaction(
	UserID CHAR(6) FOREIGN KEY REFERENCES [User](ID),
	TransactionDate DATE,
	MoviePurchased INT,
	Quantity INT,
	ID CHAR(6) PRIMARY KEY CHECK(ID LIKE'SAL[0-9][0-9][0-9]')
)

CREATE TABLE Director(
	[Name] VARCHAR(255),
	Email VARCHAR(255) CHECK(Email LIKE '%@%'),
	City VARCHAR(255),
	[Address] VARCHAR(255),
	Phone NUMERIC(13,0), 
	ID CHAR(6) PRIMARY KEY CHECK(ID LIKE'DIR[0-9][0-9][0-9]')
)

CREATE TABLE Publisher(
	[Name] VARCHAR(255),
	Email VARCHAR(255) CHECK(Email LIKE '%@%'),
	City VARCHAR(255),
	[Address] VARCHAR(255) CHECK(LEN([Address]) > 15),
	Phone NUMERIC(13,0), 
	ID CHAR(6) PRIMARY KEY CHECK(ID LIKE'PUB[0-9][0-9][0-9]')
)

CREATE TABLE Genre(
	[Name] VARCHAR(255),
	ID CHAR(6) PRIMARY KEY CHECK(ID LIKE'GEN[0-9][0-9][0-9]')
)

CREATE TABLE Movie(
	DirectorID CHAR(6) FOREIGN KEY REFERENCES [Director](ID),
	PublisherID CHAR(6) FOREIGN KEY REFERENCES [Publisher](ID),
	Title VARCHAR(255),
	[Description] VARCHAR(255) CHECK(LEN([Description])>20),
	ReleaseDate DATE CHECK(YEAR (ReleaseDate) BETWEEN 2000 AND 2016),
	Price INT,
	ID CHAR(6) PRIMARY KEY CHECK(ID LIKE'MOV[0-9][0-9][0-9]'),
	GenreID CHAR(6) FOREIGN KEY REFERENCES [Genre](ID)
)

CREATE TABLE Review(
	UserID CHAR(6) FOREIGN KEY REFERENCES [User](ID),
	MovieID CHAR(6) FOREIGN KEY REFERENCES [Movie](ID),
	RecommendationStatus VARCHAR(255),
	ReviewContent VARCHAR(255) CHECK(LEN(ReviewContent) > 20),
)

CREATE TABLE TransactionDetail(
	Quantity INT,
	MovieID CHAR(6) FOREIGN KEY REFERENCES [Movie](ID),
	SalesTransactionID CHAR(6) FOREIGN KEY REFERENCES [SalesTransaction](ID),
	PRIMARY KEY (MovieID,SalesTransactionID)
)