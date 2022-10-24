CREATE DATABASE btvn2110

USE btvn2110
GO

CREATE TABLE  BaiDoXe (
Tên_bãi nvarchar(50),

mã_bãi_đỗ_xe int primary key  identity(1,1),

địa_chỉ nvarchar(200) ,
)
GO

CREATE TABLE  Thongtingui (
id INT PRIMARY KEY IDENTITY(1,1),
 tên_xe nvarchar(50),
 biển_số_xe nvarchar(20),
 mã_bãi_đỗ_xe INT ,
 id_chủ_sở_hữu INT ,
)
GO
SELECT*FROM Thongtingui 



 CREATE TABLE bangchusohuu (
id_chủ_sở_hữu INT primary key identity(1,1),

tên nvarchar(50),

số_cmtnd nvarchar(20),

địa_chỉ nvarchar(200),
)

ALTER TABLE Thongtingui
 ADD CONSTRAINT fk_thongtingui_bangchusohuu FOREIGN KEY(id_chủ_sở_hữu) REFERENCES bangchusohuu(id_chủ_sở_hữu)

 INSERT INTO dbo.BaiDoXe(Tên_bãi,địa_chỉ)VALUES('bãi1','địachỉ1')
 GO
  INSERT INTO dbo.BaiDoXe(Tên_bãi,địa_chỉ)VALUES('bãi2','địachỉ2')
 GO
  INSERT INTO dbo.BaiDoXe(Tên_bãi,địa_chỉ)VALUES('bãi3','địachỉ3')
 GO
  INSERT INTO dbo.BaiDoXe(Tên_bãi,địa_chỉ)VALUES('bãi4','địachỉ4')
 GO	
   INSERT INTO dbo.BaiDoXe(Tên_bãi,địa_chỉ)VALUES('bãi5','địachỉ5')
 GO	
 SELECT*FROM dbo.BaiDoXe

 INSERT INTO dbo.Thongtingui(tên_xe, biển_số_xe,mã_bãi_đỗ_xe,id_chủ_sở_hữu)VALUES('xe1','bienso1','1','1')
 GO	
 INSERT INTO dbo.Thongtingui(tên_xe, biển_số_xe,mã_bãi_đỗ_xe,id_chủ_sở_hữu)VALUES('xe2','bienso2','2','2')
 GO	
 INSERT INTO dbo.Thongtingui(tên_xe, biển_số_xe,mã_bãi_đỗ_xe,id_chủ_sở_hữu)VALUES('xe3','bienso3','3','3')
 GO	
 INSERT INTO dbo.Thongtingui(tên_xe, biển_số_xe,mã_bãi_đỗ_xe,id_chủ_sở_hữu)VALUES('xe4','bienso4','4','4')
 GO	
 INSERT INTO dbo.Thongtingui(tên_xe, biển_số_xe,mã_bãi_đỗ_xe,id_chủ_sở_hữu)VALUES('xe5','bienso5','5','5')
 GO	

 INSERT INTO dbo.bangchusohuu(tên,số_cmtnd,địa_chỉ) VALUES('A','1232','16')
 GO	
  INSERT INTO dbo.bangchusohuu(tên,số_cmtnd,địa_chỉ) VALUES('B','1233','15')
 GO	
  INSERT INTO dbo.bangchusohuu(tên,số_cmtnd,địa_chỉ) VALUES('C','1234','14')
 GO	
  INSERT INTO dbo.bangchusohuu(tên,số_cmtnd,địa_chỉ) VALUES('D','1235','11')
 GO	
  INSERT INTO dbo.bangchusohuu(tên,số_cmtnd,địa_chỉ) VALUES('E','1236','12')
 GO	
 SELECT*FROM Thongtingui 
  SELECT*FROM dbo.BaiDoXe
  SELECT*FROM dbo.bangchusohuu 