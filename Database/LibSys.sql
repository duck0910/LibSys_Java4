-- Drop the database 'Libsys'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Uncomment the ALTER DATABASE statement below to set the database to SINGLE_USER mode if the drop database command fails because the database is in use.
-- ALTER DATABASE Libsys SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
-- Drop the database if it exists
IF EXISTS (
  SELECT [name]
FROM sys.databases
WHERE [name]= N'Libsys'
)
BEGIN
  DROP DATABASE Libsys
END
GO

-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
FROM sys.databases
WHERE [name]= N'LibSys'
)
CREATE DATABASE LibSys
GO

USE LibSys
GO

-- Tạo bảng người dùng
-- Create a new table called '[N]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[NguoiDung]', 'U') IS NOT NULL
DROP TABLE [dbo].[NguoiDung]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[NguoiDung]
(
  [MaND] NVARCHAR(10) NOT NULL,
  [TenND] NVARCHAR(50),
  [Email] NVARCHAR(50),
  [MatKhau] NVARCHAR(15),
  [VaiTro] Bit DEFAULT 0,
  PRIMARY KEY ([MaND])
);
GO

-- Tạo bảng Nhà Xuất Bản
-- Create a new table called '[NhaXuatBan]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[NhaXuatBan]', 'U') IS NOT NULL
DROP TABLE [dbo].[NhaXuatBan]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[NhaXuatBan]
(
  [MaNXB] NVARCHAR(10) NOT NULL,
  [TenNXB] NVARCHAR(50),
  PRIMARY KEY ([MaNXB])
);
GO

-- Tạo bảng Thể Loại
-- Create a new table called '[TheLoai]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[TheLoai]', 'U') IS NOT NULL
DROP TABLE [dbo].[TheLoai]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[TheLoai]
(
  [MaTL] NVARCHAR(10) NOT NULL,
  [TenTL] NVARCHAR(50),
  PRIMARY KEY ([MaTL])
);
GO

-- Tạo bảng Tác Giả
-- Create a new table called '[TacGia]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[TacGia]', 'U') IS NOT NULL
DROP TABLE [dbo].[TacGia]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[TacGia]
(
  [MaTG] NVARCHAR(10) NOT NULL,
  [TenTG] NVARCHAR(50),
  [GioiTinh] BIT DEFAULT 0,
  [NgaySinh] DATE,
  [Email] NVARCHAR(50),
  PRIMARY KEY ([MaTG])
);
GO

-- Tạo bảng sách
-- Create a new table called '[sach]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[sach]', 'U') IS NOT NULL
DROP TABLE [dbo].[Sach]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Sach]
(
  [MaSach] NVARCHAR(20) NOT NULL,
  [TenSach] NVARCHAR(255) NOT NULL,
  [MaTG] NVARCHAR(10) NOT NULL,
  [MaNXB] NVARCHAR(10) NOT NULL,
  [MaTL] NVARCHAR(10) NOT NULL,
  [SoLuong] INT NOT NULL DEFAULT 0,
  [NgayNhap] DATE DEFAULT GETDATE(),
  [ViTri] NVARCHAR(50) NOT NULL,
  [Hinh] NVARCHAR(50) NOT NULL,
  PRIMARY KEY([MaSach]),
  FOREIGN KEY ([MaNXB]) REFERENCES NhaXuatBan ([MaNXB]) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY ([MaTL]) REFERENCES TheLoai ([MaTL]) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY ([MaTG]) REFERENCES TacGia ([MaTG]) ON DELETE CASCADE ON UPDATE CASCADE,
  CHECK([SoLuong]>=0)
);
GO


-- -- Tạo bảng Sách Theo Tác Giả
-- -- Create a new table called '[SachTheoTacGia]' in schema '[dbo]'
-- -- Drop the table if it already exists
-- IF OBJECT_ID('[dbo].[SachTheoTacGia]', 'U') IS NOT NULL
-- DROP TABLE [dbo].[SachTheoTacGia]
-- GO
-- -- Create the table in the specified schema
-- CREATE TABLE [dbo].[SachTheoTacGia]
-- (
--   [MaTG] NVARCHAR(10) NOT NULL,
--   [MaSach] NVARCHAR(20) NOT NULL,
--   PRIMARY KEY(MaTG,MaSach),
--   FOREIGN KEY ([MaTG]) REFERENCES TacGia ([MaTG]) ON DELETE NO ACTION,
--   FOREIGN KEY ([MaSach]) REFERENCES Sach ([MaSach]) ON DELETE NO ACTION
-- );
-- GO

-- Tạo bảng độc giả
-- Create a new table called '[DocGia]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[DocGia]', 'U') IS NOT NULL
DROP TABLE [dbo].[DocGia]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[DocGia]
(
  [MaDG] NVARCHAR(10) NOT NULL,
  [TenDG] NVARCHAR(50) NOT NULL,
  [DiaChi] NVARCHAR(100) NOT NULL,
  [GioiTinh] BIT NOT NULL DEFAULT 1,
  [DienThoai] NVARCHAR(10) NOT NULL,
  [Email] NVARCHAR(50) NOT NULL,
  PRIMARY KEY([MADG])
);
GO

-- Tạo bảng phiếu mượn
-- Create a new table called '[PhieuMuon]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[PhieuMuon]', 'U') IS NOT NULL
DROP TABLE [dbo].[PhieuMuon]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[PhieuMuon]
(
  [MaPM] INT IDENTITY(1,1),
  [MADG] NVARCHAR(10) NOT NULL,
  [NgayMuon] DATE DEFAULT GETDATE(),
  [NgayTra] DATE NOT NULL,
  [MaND] NVARCHAR(10) NOT NULL,
  [TinhTrang] BIT DEFAULT 0,
  PRIMARY KEY([MAPM]),
  FOREIGN KEY (MADG) REFERENCES DocGia (MADG) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (MaND) REFERENCES NguoiDung (MaND) ON DELETE CASCADE ON UPDATE CASCADE,
);
GO

--
IF OBJECT_ID('[dbo].[PhieuMuonChiTiet]', 'U') IS NOT NULL
DROP TABLE [dbo].PhieuMuonChiTiet
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].PhieuMuonChiTiet
(
  [MaCTPM] INT IDENTITY(1,1),
  [MaPM] INT NOT NULL,
  [MaSach] NVARCHAR(20) NOT NULL,
  PRIMARY KEY([MaCTPM]),
  FOREIGN KEY (MaPM) REFERENCES PhieuMuon (MaPM) ON UPDATE NO ACTION,
  FOREIGN KEY (MaSach) REFERENCES Sach (MaSach) ON UPDATE NO ACTION
);
GO

--insert NguoiDung
INSERT INTO [dbo].[NguoiDung]
  ([MaND],[TenND],[Email],[MatKhau],[VaiTro])
VALUES
  ('vinhnt', N'Nguyễn Thanh Vinh', 'Vinhntpc07091@fpt.edu.vn', '123456', 0),
  ('cuongdtk', N'Đặng Thị Kim Cương', 'Cuongdtkpc07085@fpt.edu.vn', '123456', 0),
  ('huyenttb', N'Trần Thị Bích Huyền', 'Huyenttb07086@fpt.edu.vn', '123456', 0),
  ('ngandt', N'Dương Tuyết Ngân', 'Ngandtpc07108@fpt.edu.vn', '123456', 1),
  ('thamldh', N'Lê Dương Hồng Thắm', 'Thamldhpc07084@fpt.edu.vn', '123456', 0)
GO


-- Insert TacGia
INSERT INTO [dbo].[TacGia]
  (
  [MaTG],[TenTG],[GioiTinh],[NgaySinh],[Email]
  )
VALUES
  ('TG0001', N'Dale Carnegie', 0, '1989-3-27', 'DaleCarnegie@gmail.com'),
  ('TG0002', N'Eckhart Tolle', 1, '1985-5-14', 'EckhartTolle@gmail.com'),
  ('TG0003', N'Jay', 0, '1986-5-28', 'Jay@gmail.com'),
  ('TG0004', N'Andrew Matthews', 0, '1990-12-23', 'AndrewMatthews@gmail.com'),
  ('TG0005', N'Antoine de Saint-Exupéry', 1, '1989-9-12', 'AntoinedeSaint-Exupery@gmail.com'),
  ('TG0006', N'Ernest Hemingway', 0, '1985-2-12', 'Ernest Hemingway@gmail.com'),
  ('TG0007', N'Vũ Trọng Phụng', 1, '1990-11-1', 'VuTrongPhung@gmail.com'),
  ('TG0008', N'Cho Chang In', 0, '1987-7-9', 'ChoChangIn@gmail.com'),
  ('TG0009', N'Shin Kyung-Sook', 1, '1989-5-27', 'ShinKyung-Sook@gmail.com'),
  ('TG0010', N'Luis Sepúlveda', 0, '1986-4-16', 'LuisSepulveda@gmail.com'),
  ('TG0011', N'Fujimaki Yukio', 1, '1989-5-21', 'FujimakiYukio@gmail.com'),
  ('TG0012', N'Margaret Mitchell', 1, '1989-6-22', 'MargaretMitchell@gmail.com'),
  ('TG0013', N'Victor Hugo', 1, '1988-4-13', 'VictorHugo@gmail.com'),
  ('TG0014', N'Hans Christian Andersen', 1, '1985-7-21', 'HansChristianAndersen@gmail.com'),
  ('TG0015', N'Kathryn Stockett', 0, '1987-6-25', 'KathrynStockett@gmail.com'),
  ('TG0016', N'Nguyễn Nhật Ánh', 0, '1988-11-10', 'NguyenNhatAnh@gmail.com'),
  ('TG0017', N'Akiyuki Nosaka', 0, '1987-9-5', 'AkiyukiNosaka@gmail.com'),
  ('TG0018', N'Paulo Coelho', 1, '1985-5-10', 'PauloCoelho@gmail.com'),
  ('TG0019', N'José Mauro de Vasconcelos', 1, '1987-1-25', 'JoseMauroDeVasconcelos@gmail.com'),
  ('TG0020', N'Lana Del Rey', 0, '1990-11-13', 'LanaDelRey@gmail.com'),
  ('TG0021', N'Barry Schwartz', 1, '1987-12-8', 'BarrySchwartz@gmail.com')
GO

-- Insert TheLoai
INSERT INTO [dbo].[TheLoai]
  (
  [MaTL], [TenTL]
  )
VALUES
  ('TL0001', N'Khoa Học'),
  ('TL0002', N'Giáo dục'),
  ('TL0003', N'Tự lực'),
  ('TL0004', N'Tâm lý học'),
  ('TL0005', N'Tiểu thuyết'),
  ('TL0006', N'Tiểu thuyết ngắn'),
  ('TL0007', N'Hư cấu'),
  ('TL0008', N'Kỹ năng sống'),
  ('TL0009', N'Cổ tích'),
  ('TL0010', N'Phát triển bản thân'),
  ('TL0011', N'Thơ'),
  ('TL0012', N'Truyện ngắn')
GO

-- Insert NXB
INSERT INTO [dbo].[NhaXuatBan]
  (
  [MaNXB],[TenNXB]
  )
VALUES
  ('SB0001', N'Nhà Xuất Bản Trẻ'),
  ('SB0002', N'Nhà Xuất Bản Tổng Hợp Thành Phố Hồ Chí Minh'),
  ('SB0003', N'Nhà Xuất Bản Lao Động Và Xã Hội'),
  ('SB0004', N'Nhà Xuất Bản Hội Nhà Văn'),
  ('SB0005', N'Nhà Xuất Bản Văn Học'),
  ('SB0006', N'Nhà Xuất Bản Dân Trí'),
  ('SB0007', N'Nhà Xuất Bản Hà Nội'),
  ('SB0008', N'Nhà Xuất Bản Simon & Schuster'),
  ('SB0009', N'Nhà Xuất Bản Xây Dựng'),
  ('SB0010', N'Nhà Xuất Bản Thông Tấn')
GO

-- Insert Sach
INSERT INTO [dbo].[Sach]
  (
  [MaSach], [TenSach], [MaTG], [MaNXB], [MaTL], [SoLuong], [ViTri], [Hinh]
  )
VALUES
  ('S00001', N'Phân Tích Kỹ Thuật', 'TG0001', 'SB0010', N'TL0002', 21, N'T7', N'hinh1.jpg'),
  ('S00002', N'Đắc Nhân Tâm', 'TG0002', 'SB0002', N'TL0003', 14, N'T4', N'hinh2.jpg'),
  ('S00003', N'Thức tỉnh mục đích sống', 'TG0003', 'SB0002', N'TL0004', 24, N'T1', N'hinh3.jpg'),
  ('S00004', N'Điều ý nghĩa nhất trong từng khoảnh khắc cuộc đời', 'TG0004', 'SB0003', N'TL0010', 14, N'T8', N'hinh4.jpg'),
  ('S00005', N'Đời thay đổi khi chúng ta thay đổi ', 'TG0005', 'SB0001', N'TL0004', 16, N'T8', N'hinh5.jpg'),
  ('S00006', N'Hoàng tử bé', 'TG0006', 'SB0004', N'TL0006', 24, N'T9', N'hinh6.jpg'),
  ('S00007', N'Ông già và biển cả', 'TG0007', 'SB0005', N'TL0006', 12, N'T6', N'hinh7.jpg'),
  ('S00008', N'Số đỏ', 'TG0008', 'SB0005', N'TL0005', 21, N'T1', N'hinh8.jpg'),
  ('S00009', N'Bố con cá gai', 'TG0009', 'SB0004', N'TL0005', 34, N'T8', N'hinh9.jpg'),
  ('S00010', N'Hãy Chăm Sóc Mẹ', 'TG0010', 'SB0006', N'TL0005', 20, N'T9', N'hinh10.jpg'),
  ('S00011', N'Chuyện Con Mèo Dạy Hải Âu Bay', 'TG0011', 'SB0004', N'TL0007', 17, N'T10', N'hinh11.jpg'),
  ('S00012', N'Để Sống Mà Không Hối Tiếc', 'TG0012', 'SB0007', N'TL0008', 21, N'T6', N'hinh12.jpg'),
  ('S00013', N'Cuốn Theo Chiều Gió', 'TG0013', 'SB0004', N'TL0005', 20, N'T9', N'hinh13.jpg'),
  ('S00014', N'Những người khốn khổ', 'TG0014', 'SB0005', N'TL0005', 21, N'T9', N'hinh14.jpg'),
  ('S00015', N'Bà chúa Tuyết', 'TG0015', 'SB0001', N'TL0009', 10, N'T8', N'hinh15.jpg'),
  ('S00016', N'Người giúp việc ', 'TG0016', 'SB0001', N'TL0005', 18, N'T3', N'hinh16.jpg'),
  ('S00017', N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 'TG0017', 'SB0001', N'TL0005', 24, N'T1', N'hinh17.jpg'),
  ('S00018', N'Mộ Đom Đóm ', 'TG0018', 'SB0007', N'TL0012', 30, N'T6', N'hinh18.jpg'),
  ('S00019', N'Nhà giả kim', 'TG0019', 'SB0005', N'TL0005', 16, N'T2', N'hinh19.jpg'),
  ('S00020', N'Cây Cam Ngọt Của Tôi', 'TG0020', 'SB0004', N'TL0005', 22, N'T9', N'hinh20.jpg'),
  ('S00021', N'Violet Bent Backwards Over The Grass', 'TG0021', 'SB0008', N'TL0011', 25, N'T3', N'hinh21.jpg')
GO

-- Insert DocGia
INSERT INTO [dbo].[DocGia]
  (
  [MaDG],[TenDG],[DiaChi],[GioiTinh],[DienThoai],[Email]
  )
VALUES
  ('DG0001', N'Lê Văn Nam', N'Cần Thơ', 0, N'0976091466', 'Namlv@gmail.com'),
  ('DG0002', N'Nguyễn Thị Thùy Linh', N'Cần Thơ', 1, N'0815702419', 'Linhntt@gmail.com'),
  ('DG0003', N'Nguyễn Quang Vinh', N'Cần Thơ', 0, N'0977621350', 'Vinhnq@gmail.com'),
  ('DG0004', N'Phan Thị Thương Thảo', N'Cần Thơ', 1, N'0875988197', 'Thaoptt@gmail.com'),
  ('DG0005', N'Nguyễn Lê Thảo Nguyên', N'Cần Thơ', 1, N'0829805149', 'Nguyennlt@gmail.com'),
  ('DG0006', N'Nguyễn Thị Trà My', N'Cần Thơ', 1, N'0877043105', 'Myntt@gmail.com'),
  ('DG0007', N'Võ Thị Kim Ngân', N'Cần Thơ', 1, N'0869444517', 'Nganvtk@gmail.com'),
  ('DG0008', N'Hồ Nguyễn Thảo Vy', N'Cần Thơ', 1, N'0948700060', 'Vyhnt@gmail.com'),
  ('DG0009', N'Trần Trương Dâng', N'Cần Thơ', 0, N'0826654249', 'Dangtt@gmail.com'),
  ('DG0010', N'Đỗ Thị Như Thương', N'Cần Thơ', 1, N'0997283349', 'Thuongdtn@gmail.com'),
  ('DG0011', N'Cao Thị Linh', N'Cần Thơ', 1, N'0912963132', 'Linhct@gmail.com'),
  ('DG0012', N'Lê Thị Hoài Nhi', N'Cần Thơ', 1, N'0834824153', 'Nhilth@gmail.com'),
  ('DG0013', N'Nguyễn Lê Phương Thảo', N'Cần Thơ', 1, N'0846859194', 'Thaonlp@gmail.com'),
  ('DG0014', N'Nguyễn Thị Yến Nhi', N'Cần Thơ', 1, N'0800135410', 'Nhinty@gmail.com'),
  ('DG0015', N'Nguyễn Quỳnh Như', N'Cần Thơ', 1, N'0868988475', 'Nhunq@gmail.com'),
  ('DG0016', N'Dương Thị Thu Thủy', N'Cần Thơ', 1, N'0865637399', 'Thuydtt@gmail.com'),
  ('DG0017', N'Nguyễn Thị Diệu Trinh', N'Cần Thơ', 1, N'0996161141', 'Trinhntd@gmail.com'),
  ('DG0018', N'Nguyễn Thị Vân Lan', N'Cần Thơ', 1, N'0874852408', 'Lanntv@gmail.com'),
  ('DG0019', N'Nguyễn Thị Mỹ Ngọc', N'Cần Thơ', 1, N'0938817459', 'Ngocntm@gmail.com'),
  ('DG0020', N'Lê Quang Đức', N'Cần Thơ', 0, N'0830190595', 'Duclq@gmail.com')
GO

-- Insert PhieuMuon
INSERT INTO [dbo].[PhieuMuon]
  (
  [MaDG],[NgayMuon],[NgayTra],[MaND],[TinhTrang]
  )
VALUES
 ('DG0001', '2023-12-9', '2023-12-9', 'cuongdtk', 0),
('DG0002', '2023-12-22', '2023-12-22', 'cuongdtk', 0),
('DG0003', '2023-12-18', '2023-12-18', 'cuongdtk', 0),
('DG0004', '2023-12-19', '2023-12-19', 'cuongdtk', 0),
('DG0005', '2023-12-7', '2023-12-7', 'cuongdtk', 0),
('DG0006', '2023-12-16', '2023-12-16', 'cuongdtk', 0),
('DG0007', '2023-12-8', '2023-12-8', 'cuongdtk', 0),
('DG0008', '2023-12-21', '2023-12-21', 'cuongdtk', 0),
('DG0009', '2023-12-29', '2023-12-29', 'huyenttb', 0),
('DG0010', '2023-12-17', '2023-12-17', 'huyenttb', 0),
('DG0011', '2023-12-18', '2023-12-18', 'huyenttb', 0),
('DG0012', '2023-12-20', '2023-12-20', 'huyenttb', 0),
('DG0013', '2023-12-19', '2023-12-19', 'huyenttb', 0),
('DG0014', '2023-12-24', '2023-12-24', 'huyenttb', 0),
('DG0015', '2023-12-21', '2023-12-21', 'huyenttb', 0),
('DG0016', '2023-12-8', '2023-12-8', 'huyenttb', 0),
('DG0017', '2023-12-27', '2023-12-27', 'thamldh', 0),
('DG0018', '2023-12-18', '2023-12-18', 'thamldh', 0),
('DG0019', '2023-12-25', '2023-12-25', 'thamldh', 0),
('DG0020', '2023-12-7', '2023-12-7', 'thamldh', 0);
GO

--Insert PhieuMuonChiTiet
INSERT INTO [dbo].[PhieuMuonChiTiet]
VALUES
 (1, 'S00001'),
(2, 'S00002'),
(3, 'S00003'),
(4, 'S00004'),
(5, 'S00005'),
(6, 'S00006'),
(7, 'S00007'),
(8, 'S00008'),
(9, 'S00009'),
(10, 'S00010'),
(11, 'S00011'),
(12, 'S00012'),
(13, 'S00013'),
(14, 'S00014'),
(15, 'S00015'),
(16, 'S00016'),
(17, 'S00017'),
(18, 'S00018'),
(19, 'S00019'),
(20, 'S00020'),
(1, 'S00020'),
(2, 'S00020'),
(3, 'S00020'),
(4, 'S00001'),
(5, 'S00002'),
(6, 'S00003'),
(7, 'S00004'),
(8, 'S00005'),
(9, 'S00006'),
(10, 'S00007'),
(11, 'S00008'),
(12, 'S00009'),
(13, 'S00010'),
(14, 'S00011'),
(15, 'S00012'),
(16, 'S00013'),
(17, 'S00014'),
(18, 'S00015'),
(19, 'S00016'),
(20, 'S00017'),
(19, 'S00018'),
(20, 'S00021');
GO

-- Create a new stored procedure called 'sp_ThongKeSachTheoTheLoai' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
  AND SPECIFIC_NAME = N'sp_ThongKeSachTheoTheLoai'
  AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE sp_ThongKeSachTheoTheLoai
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE sp_ThongKeSachTheoTheLoai

AS
BEGIN
  SELECT TL.MaTL, TL.TenTL, COUNT(S.MaSach) SoLuong
  FROM Sach S JOIN TheLoai TL ON S.MaTL= TL.MaTL
  GROUP BY TL.MaTL, TL.TenTL
END
GO

-- EXECUTE sp_ThongKeSachTheoTheLoai
-- GO

-- Create a new stored procedure called 'sp_ThongKeSachTheoTacGia' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
  AND SPECIFIC_NAME = N'sp_ThongKeSachTheoTacGia'
  AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE sp_ThongKeSachTheoTacGia
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE sp_ThongKeSachTheoTacGia
AS
BEGIN
  SELECT TG.MaTG, TG.TenTG, COUNT(S.MaSach) SoLuong
  FROM Sach S JOIN TacGia TG ON S.MaTG= TG.MaTG
  GROUP BY TG.MaTG, TG.TenTG
END
GO

-- EXECUTE sp_ThongKeSachTheoTacGia
-- GO

-- Create a new stored procedure called 'DROP PROCEDURE sp_ThongKeSachTrongThuVien' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
  AND SPECIFIC_NAME = N'sp_ThongKeSachTrongThuVien'
  AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE sp_ThongKeSachTrongThuVien
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE sp_ThongKeSachTrongThuVien
AS
BEGIN
  SELECT CONCAT(MONTH(NgayNhap),'/',YEAR(NgayNhap)) AS ThangNhap, COUNT(MaSach) SoLuong
  FROM Sach
  GROUP BY MONTH(NgayNhap), YEAR(NgayNhap)
END
GO

-- EXECUTE sp_ThongKeSachTrongThuVien
-- GO

-- Create a new stored procedure called 'sp_ThongKeDocGia' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
  AND SPECIFIC_NAME = N'sp_ThongKeDocGia'
  AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.sp_ThongKeDocGia
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE sp_ThongKeDocGia
AS
BEGIN
  SELECT YEAR(NgayMuon) Nam, COUNT(MADG) SoLuong
  FROM PhieuMuon
  GROUP BY YEAR(NgayMuon)
END
GO

-- EXECUTE sp_ThongKeDocGia
-- GO

