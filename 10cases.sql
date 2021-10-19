USE[BakMovie]

--1
SELECT 
	[ID] = m.[ID],
	Title = m.Title,
	[Description] = m.[Description],
	[Review Movie] = COUNT(m.ID)
FROM Review r
	JOIN Movie m ON r.MovieID = m.ID
	JOIN [User] u ON r.UserID = u.ID
WHERE u.City = 'Bandung' OR RecommendationStatus = 'Not Recommended'
GROUP BY m.ID, m.Title, m.[Description]

--2

SELECT 
	GenreID = m.GenreID,
	GenreName = g.[Name],
	[Total Movie] = COUNT(td.Quantity)
FROM Genre g
	JOIN Movie m ON m.GenreID = g.ID
	JOIN TransactionDetail td ON td.MovieID = m.ID
	JOIN Director dir ON  m.DirectorID = dir.ID
WHERE DATENAME(MONTH, m.ReleaseDate) = 'Februari'
	 AND Dir.ID BETWEEN 'DIR004' AND 'DIR008'
GROUP BY m.GenreID, g.[Name]

SELECT * From Genre
--3
SELECT 
	DirectorID = d.ID,
	DirectorName = d.[Name],
	[Local Phone] = REPLACE(d.Phone, '08%', '+62%'),
	[Movie Sold] = SUM(td.Quantity),
	[Total Transaction] = COUNT(td.Quantity)
FROM Director d
	JOIN Movie m ON d.ID = m.DirectorID JOIN TransactionDetail td ON m.ID = td.MovieID
WHERE d.ID BETWEEN 'DIR003' AND 'DIR009'
	AND td.Quantity > 20
	GROUP BY d.ID, d.[Name],d.Phone

--4
SELECT 
	[UserNickname] = u.nickname,
	[UserCity] = UPPER(u.city),
	[Total Movie Purchased] = SUM(st.MoviePurchased),
	[Movie Owned] = COUNT(st.MoviePurchased)
FROM [User] u Join SalesTransaction st ON u.ID = st.UserID, Movie m
WHERE (u.ID = 'USR002' OR u.ID = 'USR003') AND MONTH (m.ReleaseDate) % 2 = 1
GROUP BY u.Nickname, u.City

--5
SELECT 
	[User Id] = SUBSTRING(u.ID,4,6),
	[Nickname] = UPPER(u.Nickname),
	[UserCity] = u.City
FROM 
	(SELECT AVGquantity = SUM(td.Quantity)/COUNT(td.SalesTransactionID) FROM TransactionDetail td) as A,
	[User] u JOIN SalesTransaction st ON u.ID=st.UserID JOIN TransactionDetail td ON st.ID = td.SalesTransactionID
WHERE u.Nickname LIKE '%l%' AND st.Quantity > A.AVGquantity

--6
SELECT 
	m.[ID] as MovieID,
	m.Title as MovieTitle,
	[Publisher Name] = p.[Name],
	[Publisher Email] = p.Email
FROM Movie m JOIN Publisher p ON m.PublisherID = p.ID JOIN TransactionDetail td ON td.MovieID = m.ID JOIN SalesTransaction st ON st.ID = td.SalesTransactionID
WHERE
	st.Quantity > (
	SELECT
		SUM(st.Quantity)
	From SalesTransaction st
	WHERE DATEPART (day, st.TransactionDate) = 22 
	)


--7
SELECT 
	DirectorID = d.ID,
	DirectorName = d.[Name],
	MovieTitle = LOWER(m.Title),
	[Total Genre] =COUNT(g.ID) + ' genre(s)'
FROM Movie m JOIN Director d ON d.ID = m.DirectorID JOIN Genre g ON g.ID = m.GenreID
WHERE
	d.[Name] > (
	SELECT m.ReleaseDate
	From Movie m
	WHERE DATENAME(MONTH,m.ReleaseDate) = 'September')
GROUP BY d.ID,d.[Name],m.Title
--8

SELECT
	[UserNickname] = us.Nickname,
	[User First Name] = LEFT(us.Nickname,CHARINDEX(' ',us.Nickname)),
	[Total Quantity] = COUNT(st.ID)
FROM [User] us JOIN SalesTransaction st ON us.ID = st.ID,
	(
	SELECT
		[MaxQuantity] = COUNT(st.ID)
	FROM [User] us JOIN SalesTransaction st ON us.ID = st.ID
	WHERE DAY(TransactionDate) = 20
	)AS mq
	GROUP BY us.Nickname
	HAVING COUNT(st.ID) >= mq.MaxQuantity
	ORDER BY mq.MaxQuantity
--9
GO
CREATE VIEW CustomUserViewer AS 
SELECT
	[UserId] = us.ID,
	[UserNickname] = us.Nickname,
	[Maximum Quantity] = MAX(st.Quantity),
	[Minimum Quantity] = MIN(st.Quantity)
	FROM [User] us JOIN SalesTransaction st ON us.ID = st.UserID
WHERE DAY(st.TransactionDate) = 19
	AND us.Nickname = '%h%'
	GROUP BY us.ID, us.Nickname, st.Quantity
GO
SELECT * from CustomUserViewer

--10
GO
CREATE VIEW CustomPublisherViewer AS
SELECT
	[PublisherName] = p.[Name],
	[MovieTitle] = m.Title,
	[Release Date] = CONVERT(VARCHAR, m.ReleaseDate, 106),
	[Total Purchase] = SUM(Quantity),
	[Minimum Purchase] = MIN(Quantity)
	FROM Publisher p JOIN Movie m ON p.ID = m.PublisherID JOIN TransactionDetail Td ON td.MovieID = m.ID
WHERE p.[Address] = 'Jakarta' AND MONTH(m.ReleaseDate) = 7 
	GROUP BY p.[Name],m.Title,m.ReleaseDate,Quantity

SELECT * from CustomPublisherViewer