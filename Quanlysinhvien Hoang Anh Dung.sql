-- Tạo Database
IF Not EXISTS (SELECT name FROM master.sys.databases WHERE name = 'Quanlyhocsinh')
BEGIN
Create Database Quanlyhocsinh
END
GO
-- Tạo Table trong Database
Use Quanlyhocsinh
If Not Exists(select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='Hososinhvien')
Begin
Create Table Hososinhvien
(
    Masosinhvien nvarchar(20) not null,
    Hotensinhvien nvarchar(64) null,
    Malopsinhvien nvarchar(20) null,
    Khoahocsinhvien nvarchar(20) null,
    PRIMARY KEY (Masosinhvien)
)
end
Go
If Not Exists( select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='Bangdiemsinhvien')
Begin
Create Table Bangdiemsinhvien(
    Masosinhvien nvarchar(20) not null,
    Bangdiemsinhvien NVARCHAR(20) not null,
    Diemsinhvien NVARCHAR(20) not null
    PRIMARY KEY (Masosinhvien),
    foreign key (Masosinhvien) references Hososinhvien(Masosinhvien)	
)
End
Go
If Not Exists( select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='Diemdanhsinhvien')
Begin
Create Table Diemdanhsinhvien(
    Masosinhvien nvarchar(20) not null,
    Madiemdanhsinhvien NVARCHAR(20) not null,
    Sobuoidiemdanhsinhvien NVARCHAR(20) not null
    PRIMARY KEY (Masosinhvien),
    foreign key (Masosinhvien) references Hososinhvien(Masosinhvien)
)	
End
Go
If Not Exists( select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='Thongtinsinhvien')
Begin
Create Table Thongtinsinhvien(
    Masosinhvien NVARCHAR(20) not null,
    Mabangdiemsinhvien NVARCHAR(20) not null,
    Ketquaxeploaisinhvien NVARCHAR(20) not null
    PRIMARY KEY (Masosinhvien),
    foreign key (Masosinhvien) references Hososinhvien(Masosinhvien)
)
End

-- Insert dữ liệu vào Table
Insert into Hososinhvien (
    Masosinhvien,
    Hotensinhvien,
    Malopsinhvien,
    Khoahocsinhvien
)
VALUES(
    'A123',
    N'Đào Viết Đức',
    'A1',
    '2023'
)
,(
    'A124',
    N'Nguyễn Cao Thắng',
    'A2',
    '2023'
)
,(
    'A125',
    N'Nguyễn Đình Nam',
    'A3',
    '2023'
)

Insert Into Bangdiemsinhvien  VALUES('A123',N'Lập Trình C','10'),('A124',N'Database','9'),('A125',N'UI/UX','8')
Insert Into Diemdanhsinhvien  VALUES('A123','B1','8'),('A124','B2','8'),('A125','B3','9')
Insert Into Thongtinsinhvien  VALUES('A123','1','A'),('A124','2','A'),('A125','3','B')

-- Select group
Use Quanlyhocsinh
SELECT * from Thongtinsinhvien 
SELECT * from Hososinhvien
SELECT * from Bangdiemsinhvien
SELECT * from Diemdanhsinhvien

-- Left Join
Use Quanlyhocsinh
select * from Hososinhvien A left join Thongtinsinhvien B on A.Masosinhvien=B.Masosinhvien


