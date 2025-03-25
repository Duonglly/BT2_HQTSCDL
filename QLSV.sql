-- Tạo database QLSV tại vị trí mong muốn
CREATE DATABASE QLSV 
ON PRIMARY 
( 
    NAME = QLSV_Data, 
    FILENAME = 'D:\HOCTAP\HQTCSDL\QLSV.mdf', 
    SIZE = 10MB, 
    MAXSIZE = 50MB, 
    FILEGROWTH = 5MB 
) 
LOG ON 
( 
    NAME = QLSV_Log, 
    FILENAME = 'D:\HOCTAP\HQTCSDL\QLSV.ldf', 
    SIZE = 5MB, 
    MAXSIZE = 25MB, 
    FILEGROWTH = 5MB 
);
GO



-- Sử dụng database
USE QLSV;
GO

-- Bảng Khoa
CREATE TABLE Khoa (
    maKhoa NVARCHAR(10) PRIMARY KEY,
    tenKhoa NVARCHAR(100) NOT NULL
);

-- Bảng Bộ Môn
CREATE TABLE BoMon (
    maBM NVARCHAR(10) PRIMARY KEY,
    tenBM NVARCHAR(100) NOT NULL,
    maKhoa NVARCHAR(10),
    FOREIGN KEY (maKhoa) REFERENCES Khoa(maKhoa)
);

-- Bảng Giáo Viên
CREATE TABLE GiaoVien (
    maGV NVARCHAR(10) PRIMARY KEY,
    hoten NVARCHAR(100) NOT NULL,
    NgaySinh DATE,
    maBM NVARCHAR(10),
    FOREIGN KEY (maBM) REFERENCES BoMon(maBM)
);

-- Bảng Lớp
CREATE TABLE Lop (
    maLop NVARCHAR(10) PRIMARY KEY,
    tenLop NVARCHAR(100) NOT NULL
);

-- Bảng Sinh Viên
CREATE TABLE SinhVien (
    maSV NVARCHAR(10) PRIMARY KEY,
    hoten NVARCHAR(100) NOT NULL,
    NgaySinh DATE
);

-- Bảng Giáo Viên Chủ Nhiệm
CREATE TABLE GVCN (
    maLop NVARCHAR(10),
    maGV NVARCHAR(10),
    HK NVARCHAR(10),
    PRIMARY KEY (maLop, maGV, HK),
    FOREIGN KEY (maLop) REFERENCES Lop(maLop),
    FOREIGN KEY (maGV) REFERENCES GiaoVien(maGV)
);

-- Bảng LopSV (Sinh viên trong lớp)
CREATE TABLE LopSV (
    maLop NVARCHAR(10),
    maSV NVARCHAR(10),
    ChucVu NVARCHAR(50),
    PRIMARY KEY (maLop, maSV),
    FOREIGN KEY (maLop) REFERENCES Lop(maLop),
    FOREIGN KEY (maSV) REFERENCES SinhVien(maSV)
);

-- Bảng Môn Học
CREATE TABLE MonHoc (
    maMon NVARCHAR(10) PRIMARY KEY,
    TenMon NVARCHAR(100) NOT NULL,
    STC INT CHECK (STC > 0) -- Số tín chỉ phải lớn hơn 0
);

-- Bảng Lớp Học Phần
CREATE TABLE LopHP (
    maLopHP NVARCHAR(10) PRIMARY KEY,
    TenLopHP NVARCHAR(100) NOT NULL,
    HK NVARCHAR(10),
    maMon NVARCHAR(10),
    maGV NVARCHAR(10),
    FOREIGN KEY (maMon) REFERENCES MonHoc(maMon),
    FOREIGN KEY (maGV) REFERENCES GiaoVien(maGV)
);

-- Bảng Đăng Ký Môn Học
CREATE TABLE DKMH (
    maLopHP NVARCHAR(10),
    maSV NVARCHAR(10),
    DiemTP FLOAT CHECK (DiemTP BETWEEN 0 AND 10),
    DiemThi FLOAT CHECK (DiemThi BETWEEN 0 AND 10),
    PhanTramThi FLOAT CHECK (PhanTramThi BETWEEN 0 AND 100),
    PRIMARY KEY (maLopHP, maSV),
    FOREIGN KEY (maLopHP) REFERENCES LopHP(maLopHP),
    FOREIGN KEY (maSV) REFERENCES SinhVien(maSV)
);