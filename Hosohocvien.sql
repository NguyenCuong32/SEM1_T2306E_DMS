
Use CustomerInfoSystem
If Not Exists(select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='Hososinhvien')
Begin
Create Table Hososinhvien
(
    ID nvarchar(20) not null,
    Hovaten nvarchar(64) null,
	Lop nvarchar(20) null,
    Diachi nvarchar(20) null,
    Nghenghiep nvarchar(20) null,
    PRIMARY KEY (ID)
)
end
go
If Not Exists(select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='BangdiemmonURWD')
Begin
Create Table BangdiemmonURWD
(
    ID nvarchar(20) not null,
    DiemURWD float,
   PRIMARY KEY (ID)
)
end
If Not Exists(select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='BangdiemmonFWDR' )
Begin
Create Table BangdiemmonFWDR 
(
    ID nvarchar(20) not null,
    DiemFWDR float,
   PRIMARY KEY (ID)
)
end

If Not Exists(select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='BangdiemmonDMS' )
Begin
Create Table BangdiemmonDMS 
(
    ID nvarchar(20) not null,
    DiemDMS float,
   PRIMARY KEY (ID)
)
end

--Insert into Hososinhvien (
--    ID,
--    Hovaten, 
--	Lop,
--    Diachi,
--	Nghenghiep 
--	)
	Insert into Hososinhvien values ('01',N'Đào Viết Đức','T2306E',N'Hà Nội',N'Kỹ sư')
	Insert into Hososinhvien values ('02',N'Nguyễn Cao Thắng','T2306E',N'Hà Nội',N'Kỹ sư')
	Insert into Hososinhvien values ('03',N'Hoàng Anh Dũng','T2306E',N'Hà Nội',N'Kỹ sư')
	Insert into Hososinhvien values ('04',N'Nguyễn Đình Nam','T2306E',N'Hà Nội',N'Kỹ sư')

	insert into BangdiemmonURWD values ('01', 6)
	insert into BangdiemmonURWD values ('02', 8)
	insert into BangdiemmonURWD values ('03', 9)
	insert into BangdiemmonURWD values ('04', 7)

	insert into BangdiemmonFWDR values ('01', 7)
	insert into BangdiemmonFWDR values ('02', 8)
	insert into BangdiemmonFWDR values ('03', 9)
	insert into BangdiemmonFWDR values ('04', 10)

	insert into BangdiemmonDMS values ('01', 6)
	insert into BangdiemmonDMS values ('02', 8)
	insert into BangdiemmonDMS values ('03', 8)
	insert into BangdiemmonDMS values ('04', 7)
	
	select * from Hososinhvien
	select * from BangdiemmonURWD
	select * from BangdiemmonFWDR
	select * from BangdiemmonDMS

	
	select  Hososinhvien.ID,Hososinhvien.Hovaten,BangdiemmonURWD.DiemURWD, BangdiemmonFWDR.DiemFWDR,BangdiemmonDMS.DiemDMS from Hososinhvien
	left join BangdiemmonURWD
	on Hososinhvien.ID=BangdiemmonURWD.ID
	left join BangdiemmonFWDR
	on Hososinhvien.ID=BangdiemmonFWDR.ID
	left join BangdiemmonDMS
	on Hososinhvien.ID=BangdiemmonDMS.ID

	select AVG(BangdiemmonURWD.DiemURWD) AS N'Điểm trung bình môn URWD'  from Hososinhvien
	left join BangdiemmonURWD
	on Hososinhvien.ID=BangdiemmonURWD.ID

	select AVG(BangdiemmonFWDR.DiemFWDR) AS N'Điểm trung bình môn FWDR'  from Hososinhvien
	left join BangdiemmonFWDR
	on Hososinhvien.ID=BangdiemmonFWDR.ID
	
	select AVG(BangdiemmonDMS.DiemDMS) AS N'Điểm trung bình môn DMS'  from Hososinhvien
	left join BangdiemmonDMS
	on Hososinhvien.ID=BangdiemmonDMS.ID
