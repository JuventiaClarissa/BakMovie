USE [BakMovie]

GO
CREATE PROCEDURE Sr_User
			@UserID char(6),
			@Nickname varchar(255),
			@Fullname varchar(255),
			@Email varchar(255),
			@City varchar(255),
			@Description varchar(255)
AS INSERT INTO [User] VALUES (@UserID, @Nickname, @Fullname, @Email, @City, @Description)
GO
CREATE PROCEDURE Sr_SalesTransaction
			@UserID char(6),
			@TransactionDate date,
			@MoviePurchased varchar(255)
AS INSERT INTO SalesTransaction VALUES (@UserID, @TransactionDate, @MoviePurchased)

GO
CREATE PROCEDURE Sr_Review
			@RecommendationStatus varchar(255),
			@ReviewContent varchar(255)
AS
BEGIN
	INSERT INTO Review VALUES (@RecommendationStatus, @ReviewContent)
END