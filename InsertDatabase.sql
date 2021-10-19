USE[BakMovie]
GO
INSERT INTO [User]
VALUES('Pristine','Pristine Anggar','Pristine@mail.com','Jakarta','Member','USR001')
INSERT INTO [User]
VALUES('Priscil','Priscil Cinta','Priscil@mail.com','Bandung','Non-Member','USR002')
INSERT INTO [User]
VALUES('Vicita','Vicita','Vici@mail.com','Sumatera','Non-Member','USR003')
INSERT INTO [User]
VALUES('Marsya','Marsya','Marsya@mail.com','Semarang','Member','USR004')
INSERT INTO [User]
VALUES('Picita','Picita','Pici@mail.com','Tangerang','Non-Member','USR005')
INSERT INTO [User]
VALUES('Picong','Picong','Cong@mail.com','Bandung','Non-Member','USR006')
INSERT INTO [User]
VALUES('Vitana','Vitana Rang','Vita@mail.com','Sumba','Member','USR007')
INSERT INTO [User]
VALUES('Vicinta','Vicinta','Cinta@mail.com','Bandung','Non-Member','USR008')
INSERT INTO [User]
VALUES('Vinoccs','Vinoccs','Vino@mail.com','Surabaya','Member','USR009')
INSERT INTO [User]
VALUES('Waspita','Waspita','Pita@mail.com','Bandung','Member','USR010')
SELECT * FROM [User]	

INSERT INTO SalesTransaction
VALUES('USR001','2018-01-13',1,10,'SAL010')
INSERT INTO SalesTransaction
VALUES('USR002','2018-01-14',1,15,'SAL009')
INSERT INTO SalesTransaction
VALUES('USR003','2018-01-15',1,20,'SAL008')
INSERT INTO SalesTransaction
VALUES('USR004','2018-01-16',1,30,'SAL007')
INSERT INTO SalesTransaction
VALUES('USR005','2018-01-17',1,25,'SAL006')
INSERT INTO SalesTransaction
VALUES('USR006','2018-01-18',1,50,'SAL005')
INSERT INTO SalesTransaction
VALUES('USR007','2018-01-19',1,40,'SAL004')
INSERT INTO SalesTransaction
VALUES('USR008','2018-01-20',1,35,'SAL003')
INSERT INTO SalesTransaction
VALUES('USR009','2018-01-21',1,45,'SAL002')
INSERT INTO SalesTransaction
VALUES('USR010','2018-01-22',1,15,'SAL001')
INSERT INTO SalesTransaction
VALUES('USR001','2018-01-13',1,25,'SAL011')
INSERT INTO SalesTransaction
VALUES('USR002','2018-01-14',1,30,'SAL012')
INSERT INTO SalesTransaction
VALUES('USR003','2018-01-15',1,35,'SAL013')
INSERT INTO SalesTransaction
VALUES('USR004','2018-01-16',1,10,'SAL014')
INSERT INTO SalesTransaction
VALUES('USR005','2018-01-17',1,25,'SAL015')
INSERT INTO SalesTransaction
VALUES('USR006','2018-01-18',1,20,'SAL016')
INSERT INTO SalesTransaction
VALUES('USR007','2018-01-19',1,30,'SAL017')
INSERT INTO SalesTransaction
VALUES('USR008','2018-01-20',1,20,'SAL018')
INSERT INTO SalesTransaction
VALUES('USR009','2018-01-21',1,15,'SAL019')
INSERT INTO SalesTransaction
VALUES('USR010','2018-01-22',1,20,'SAL020')
INSERT INTO SalesTransaction
VALUES('USR010','2018-01-22',1,15,'SAL021')
INSERT INTO SalesTransaction
VALUES('USR010','2018-01-22',1,60,'SAL022')
INSERT INTO SalesTransaction
VALUES('USR010','2018-01-22',1,65,'SAL023')
INSERT INTO SalesTransaction
VALUES('USR010','2018-01-22',1,55,'SAL024')
INSERT INTO SalesTransaction
VALUES('USR010','2018-01-22',1,45,'SAL025')
INSERT INTO SalesTransaction
VALUES('USR011','2018-02-22',1,40,'SAL025')
INSERT INTO SalesTransaction
VALUES('USR012','2018-02-22',1,35,'SAL025')
SELECT * FROM SalesTransaction

INSERT INTO Director
VALUES('Taang','taang@mail.com','Semarang','Jl.A1','081234567890','DIR001')
INSERT INTO Director
VALUES('Tama','tama@mail.com','Sumba','Jl.A2','082345678901','DIR002')
INSERT INTO Director
VALUES('Vami','vami@mail.com','Malang','Jl.A3','083456789012','DIR003')
INSERT INTO Director
VALUES('Fauzan','Fauzan@mail.com','Jakarta','Jl.A4','084567890123','DIR004')
INSERT INTO Director
VALUES('Fishy','fishy@mail.com','Malang','Jl.B1','085678901234','DIR005')
INSERT INTO Director
VALUES('Dastal','dastal@mail.com','Semarang','Jl.C1','086789012345','DIR006')
INSERT INTO Director
VALUES('Pasya','pasya@mail.com','Tangerang','Jl.D1','087890123456','DIR007')
INSERT INTO Director
VALUES('Maya','maya@mail.com','Malang','Jl.E1','088901234567','DIR008')
INSERT INTO Director
VALUES('Samantha','samantha@mail.com','Sumba','Jl.F1','082134567890','DIR009')
INSERT INTO Director
VALUES('Lung','lung@mail.com','Jakarta','Jl.G1','087834567890','DIR010')
SELECT * FROM Director

INSERT INTO Publisher
VALUES('Susan','susa@mail.com','Malang','Jl.Mangga Utara 1','087812345690','PUB001')
INSERT INTO Publisher
VALUES('Susan','susan@mail.com','Semarang','Jl.Mangga Utara 2','087834125690','PUB002')
INSERT INTO Publisher
VALUES('Emily','emily@mail.com','Cikarang','Jl.Mangga Utara 3','087845123690','PUB003')
INSERT INTO Publisher
VALUES('Emili','emili@mail.com','Malang','Jl.Mangga Selatan 1','087812345609','PUB004')
INSERT INTO Publisher
VALUES('Sony','sony@mail.com','Banten','Jl.Mangga Utara 4','088721345690','PUB005')
INSERT INTO Publisher
VALUES('Punny Sunny','punny@mail.com','Jakarta','Jl.Manggis Barat 1','087821340956','PUB006')
INSERT INTO Publisher
VALUES('Susan Latasha','latasha@mail.com','Makassar','Jl.Manggis Utara 1','087809654321','PUB007')
INSERT INTO Publisher
VALUES('Sinta','sinta@mail.com','Medan','Jl.Pepper Utara 1','087809214365','PUB008')
INSERT INTO Publisher
VALUES('Shinta','shinta@mail.com','Malang','Jl.Pepper Barat 2','088721420569','PUB009')
INSERT INTO Publisher
VALUES('Laura Cinta','laura@mail.com','Batam','Jl.Mangga Utara 10','087890213456','PUB010')
SELECT * FROM Publisher

INSERT INTO Genre
VALUES('Fantasy','GEN010')
INSERT INTO Genre
VALUES('Horor','GEN011')
INSERT INTO Genre
VALUES('Drama','GEN012')
INSERT INTO Genre
VALUES('Animal','GEN013')
INSERT INTO Genre
VALUES('Romance','GEN014')
INSERT INTO Genre
VALUES('Kids','GEN015')
INSERT INTO Genre
VALUES('Fantasy','GEN021')
INSERT INTO Genre
VALUES('Horor','GEN020')
INSERT INTO Genre
VALUES('Drama','GEN019')
INSERT INTO Genre
VALUES('Animal','GEN018')
INSERT INTO Genre
VALUES('Romance','GEN017')
INSERT INTO Genre
VALUES('Kids','GEN016')
SELECT * FROM Genre

INSERT INTO Movie
VALUES('DIR010','PUB001','Tinkerbell','USA Movie Grandmedia Studios','2000-06-23',15000,'MOV011','GEN010')
INSERT INTO Movie
VALUES('DIR010','PUB001','Insidious 1','USA Movie Grandmedia Studios','2001-09-13',150000,'MOV012','GEN020')
INSERT INTO Movie
VALUES('DIR010','PUB001','Frozen 1','USA Movie Grandmedia Studios','2000-02-11',250000,'MOV013','GEN016')
INSERT INTO Movie
VALUES('DIR008','PUB002','Moana','USA Media Eagle Studios','2002-12-12',350000,'MOV014','GEN015')
INSERT INTO Movie
VALUES('DIR010','PUB001','Frozen 2','USA Movie Grandmedia Studios','2001-05-22',450000,'MOV015','GEN016')
INSERT INTO Movie
VALUES('DIR008','PUB002','Mulan 1','USA Media Eagle Studios','2007-03-14',150000,'MOV016','GEN015')
INSERT INTO Movie
VALUES('DIR002','PUB008','Avocado Night','Europe Media Publish Studios','2013-06-24',150000,'MOV017','GEN020')
INSERT INTO Movie
VALUES('DIR010','PUB010','Simba','USA Movie Grandmedia Studios','2014-03-11',250000,'MOV018','GEN010')
INSERT INTO Movie
VALUES('DIR002','PUB008','Potato House','Europe Media Publish Studios','2015-05-19',850000,'MOV019','GEN020')
INSERT INTO Movie
VALUES('DIR010','PUB001','Mulan 2','USA Movie Grandmedia Studios','2016-02-28',500000,'MOV020','GEN010')
SELECT * FROM Movie

INSERT INTO Review
VALUES('USR002','MOV012','Not Recommended','The movie is bad and not recommended')
INSERT INTO Review
VALUES('USR002','MOV014','Recommended','The movie very excited and recommended')
INSERT INTO Review
VALUES('USR002','MOV016','Not Recommended','The movie is bad and not recommended')
INSERT INTO Review
VALUES('USR002','MOV018','Recommended','The movie very excited and recommended')
INSERT INTO Review
VALUES('USR002','MOV020','Not Recommended','The movie very bad and not recommended')
INSERT INTO Review
VALUES('USR002','MOV012','Not Recommended','The movie is bad and not recommended')
INSERT INTO Review
VALUES('USR004','MOV014','Recommended','The movie very excited and recommended')
INSERT INTO Review
VALUES('USR006','MOV016','Not Recommended','The movie is bad and not recommended')
INSERT INTO Review
VALUES('USR008','MOV018','Recommended','The movie very excited and recommended')
INSERT INTO Review
VALUES('USR010','MOV020','Not Recommended','The movie very bad and not recommended')
SELECT * FROM Review

INSERT INTO TransactionDetail
VALUES(2,'MOV011','SAL001')
INSERT INTO TransactionDetail
VALUES(1,'MOV012','SAL002')
INSERT INTO TransactionDetail
VALUES(3,'MOV013','SAL003')
INSERT INTO TransactionDetail
VALUES(2,'MOV014','SAL004')
INSERT INTO TransactionDetail
VALUES(4,'MOV015','SAL005')
INSERT INTO TransactionDetail
VALUES(2,'MOV016','SAL006')
INSERT INTO TransactionDetail
VALUES(1,'MOV017','SAL007')
INSERT INTO TransactionDetail
VALUES(1,'MOV018','SAL008')
INSERT INTO TransactionDetail
VALUES(3,'MOV019','SAL009')
INSERT INTO TransactionDetail
VALUES(1,'MOV020','SAL010')
INSERT INTO TransactionDetail
VALUES(3,'MOV013','SAL011')
INSERT INTO TransactionDetail
VALUES(2,'MOV012','SAL012')
INSERT INTO TransactionDetail
VALUES(1,'MOV013','SAL013')
INSERT INTO TransactionDetail
VALUES(1,'MOV014','SAL014')
INSERT INTO TransactionDetail
VALUES(3,'MOV015','SAL015')
INSERT INTO TransactionDetail
VALUES(4,'MOV016','SAL016')
INSERT INTO TransactionDetail
VALUES(3,'MOV017','SAL017')
INSERT INTO TransactionDetail
VALUES(5,'MOV018','SAL018')
INSERT INTO TransactionDetail
VALUES(5,'MOV019','SAL019')
INSERT INTO TransactionDetail
VALUES(3,'MOV011','SAL020')
INSERT INTO TransactionDetail
VALUES(1,'MOV013','SAL021')
INSERT INTO TransactionDetail
VALUES(2,'MOV012','SAL022')
INSERT INTO TransactionDetail
VALUES(3,'MOV015','SAL023')
INSERT INTO TransactionDetail
VALUES(1,'MOV012','SAL024')
INSERT INTO TransactionDetail
VALUES(4,'MOV019','SAL025')