/*create database QLTV*/
CREATE TABLE KHACH_HANG 
(
  Ma_Khach_hang varchar(10) DEFAULT NULL primary key,
  Password varchar(4) DEFAULT NULL,
  Ten_Khach_hang nvarchar(16) DEFAULT NULL,
  Ngay_sinh varchar(10) DEFAULT NULL,
  Dia_Chi nvarchar(6) DEFAULT NULL,
  Phone int DEFAULT NULL,
  Name nvarchar(16) DEFAULT NULL
  )
select * from KHACH_HANG
INSERT INTO KHACH_HANG VALUES 
('KH01      ','kh01',N'Nguyễn Hoàng Hải','1995-10-20',N'Hà Nội',963210438,N'Nguyễn Hoàng Hải'),
('KH02      ','kh02',N'Nguyễn Thị Huệ','1993-03-23',N'Hà Nội',989485719,N'Nguyễn Hoàng Hải'),
('KH03      ','kh03',N'Mai Thị Giang','2000-10-20',N'Hà Nội',123123123,N'Nguyễn Hoàng Hải'),
('KH04      ','kh04',N'Uchiha Itachi','2000-01-01',N'Konoha',123456789,N'Nguyễn Hoàng Hải'),
('KH05      ','kh05',N'Gaara','1970-01-01',N'Sand',123123321,N'');
--
-- Table structure for table `dbo.PHIEU_MUON`
--

CREATE TABLE dbo.PHIEU_MUON (
  Ma_Phieu_muon varchar(10) DEFAULT NULL primary key,
  Ma_Khach_hang varchar(10) DEFAULT NULL,
  Ma_Sach varchar(10) DEFAULT NULL,
  Ngay_muon varchar(10) DEFAULT NULL,
  Han_tra varchar(10) DEFAULT NULL,
  Name nvarchar(16) DEFAULT NULL,
  Ngaytra varchar(10) DEFAULT NULL,
  TienDatCoc int DEFAULT NULL
)
alter table PHIEU_MUON add foreign key (Ma_Khach_hang) REFERENCES KHACH_HANG(Ma_Khach_hang)
alter table PHIEU_MUON add foreign key (Ma_Sach) REFERENCES SACH(Ma_Sach)
--
-- Dumping data for table `dbo.PHIEU_MUON`
--


INSERT INTO dbo.PHIEU_MUON VALUES 
('PM01      ','KH01      ','MS02      ','2015-10-16','2016-10-16',N'Nguyễn Hoàng Hải','',1),
('PM02      ','KH03      ','MS01      ','2015-10-21','2016-10-21',N'Nguyễn Hoàng Hải','',2),
('PM03      ','KH02      ','MS01      ','2015-10-10','2015-10-12',N'Nguyễn Hoàng Hải','',3),
('PM04      ','KH01      ','MS05      ','2015-10-16','2016-10-16',N'Nguyễn Hoàng Hải','2015-11-05',4),
('PM05      ','KH01      ','MS01      ','2014-10-16','2015-01-01',N'Nguyễn Hoàng Hải','2015-11-05',5);

--
-- Table structure for table `dbo.QUAN_TRI`
--

CREATE TABLE dbo.QUAN_TRI (
  Ma_Admin varchar(10) DEFAULT NULL primary key,
  Password varchar(5) DEFAULT NULL
) 
--
-- insert value for table `dbo.QUAN_TRI`
--

INSERT INTO dbo.QUAN_TRI VALUES ('admin     ','admin');

--
-- Table structure for table `dbo.SACH`
--

CREATE TABLE dbo.SACH (
  Ma_Sach varchar(10) DEFAULT NULL primary key,
  Ten_Sach nvarchar(40) DEFAULT NULL,
  Ten_Tac_gia nvarchar(17) DEFAULT NULL,
  Nha_xb nvarchar(4) DEFAULT NULL,
  Gia_tien int DEFAULT NULL,
  So_luong int DEFAULT NULL,
  Name nvarchar(16) DEFAULT NULL
  )
--
-- Dumping data for table `dbo.SACH`
--


INSERT INTO dbo.SACH VALUES
 ('MS01      ',N'Lập trình hướng đối tượng', N'Cao Tuấn Dũng',N'BKHN',20000,20,N'Nguyễn Hoàng Hải'),
 ('MS02      ',N'Project',N'Lê Thị Hoa','BKHN',22000,20,N'Nguyễn Hoàng Hải'),
 ('MS03      ',N'Phân tích và thiết kế hệ thống thông tin',N'Nguyễn Thanh Hùng',  N'BKHN',24000,30,N'Nguyễn Hoàng Hải'),
 ('MS04      ',N'Toán rời rạc',N'Nguyễn Đức Nghĩa',N'KHTN',30000,25,N'Nguyễn Hoàng Hải'),
 ('MS05      ',N'Tin học đại cương',N'Nguyễn Bá Ngọc',N'BKHN',40000,50,''),
 ('MS06      ',N'Tán gái đại cương',N'Nguyễn Hoàng Hải',N'BKAV',1000,1,N'Nguyễn Hoàng Hải');
/*!40000 ALTER TABLE `dbo.SACH` ENABLE KEYS */;


--
-- Table structure for table `dbo.sysdiagrams`
--

CREATE TABLE dbo.sysdiagrams (
   name text,
  principal_id text,
  diagram_id text,
  version text,

  definition text
  )
--
-- Dumping data for table `dbo.sysdiagrams`
--


/*!40000 ALTER TABLE `dbo.sysdiagrams` DISABLE KEYS */;
