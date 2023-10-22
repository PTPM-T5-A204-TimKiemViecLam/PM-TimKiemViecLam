CREATE DATABASE DB_SIEUTHI
GO

USE DB_SIEUTHI
GO

--------------------------------------------------- [ KHỞI TẠO CÁC BẢNG DỮ LIỆU ] ---------------------------------------------------
--------------------- BẢNG QUYỀN TRUY CẬP
CREATE TABLE QUYENTRUYCAP
(
	MAQTC			INT NOT NULL IDENTITY(1, 1),
	TENQTC			NVARCHAR(50),
	CONSTRAINT PK_QUYENTRUYCAP PRIMARY KEY(MAQTC)
);

--------------------- BẢNG TÀI KHOẢN
CREATE TABLE TAIKHOAN
(
	ID				INT IDENTITY(1,1) NOT NULL,
    MATK			AS 'TK' + RIGHT('000' + CAST(ID AS VARCHAR(3)), 3) PERSISTED NOT NULL,
	MATKHAU			NVARCHAR(6),
	MAQTC			INT NOT NULL,
	CONSTRAINT PK_TAIKHOAN PRIMARY KEY(MATK)
);

--------------------- BẢNG NHÂN VIÊN
CREATE TABLE NHANVIEN
(
	MANV			VARCHAR(10) NOT NULL,
	HOTEN			NVARCHAR(50),
	ANHDAIDIEN		VARCHAR(100),
	NGAYSINH		DATE,
	GIOITINH		NVARCHAR(5),
	DIACHI			NVARCHAR(100),
	SODIENTHOAI		VARCHAR(10),
	EMAIL			VARCHAR(30),
	MATK			VARCHAR(5) NOT NULL,
	CONSTRAINT PK_NHANVIEN PRIMARY KEY(MANV)
);

--------------------- BẢNG ĐƠN VỊ TÍNH
CREATE TABLE DONVITINH
(
	MADVT			VARCHAR(10) NOT NULL,
	TENDVT			NVARCHAR(50),
	CONSTRAINT PK_DONVITINH PRIMARY KEY(MADVT)
);

--------------------- BẢNG NHÀ SẢN XUẤT
CREATE TABLE NHASANXUAT
(
	MANSX			VARCHAR(10) NOT NULL,
	TENNXS			NVARCHAR(50),
	DIACHI			NVARCHAR(100),
	SODIENTHOAI		VARCHAR(10),
	CONSTRAINT PK_NHASANXUAT PRIMARY KEY(MANSX)
);

--------------------- BẢNG NHÀ CUNG CẤP
CREATE TABLE NHACUNGCAP
(
	MANCC			VARCHAR(10) NOT NULL,
	TENNCC			NVARCHAR(50),
	DIACHI			NVARCHAR(100),
	SODIENTHOAI		VARCHAR(10),
	CONSTRAINT PK_NHACUNGCAP PRIMARY KEY(MANCC)
);

--------------------- BẢNG SẢN PHẨM
CREATE TABLE SANPHAM
(
	MASP			VARCHAR(10) NOT NULL,
	TENSP			NVARCHAR(50),
	ANHSANPHAM		VARCHAR(100),
	NGAYSX			DATE,
	HANSD			DATE,
	GIASP			DECIMAL(18, 0),
	MOTA			NVARCHAR(100),
	SLTON			INT,
	COKM			BIT,
	MANSX			VARCHAR(10) NOT NULL,
	MANCC			VARCHAR(10) NOT NULL,
	MADVT			VARCHAR(10) NOT NULL,
	CONSTRAINT PK_SANPHAM PRIMARY KEY(MASP)
);

--------------------- BẢNG KHUYẾN MÃI
CREATE TABLE KHUYENMAI
(
	MAKM			VARCHAR(10) NOT NULL,
	TENKM			NVARCHAR(50),
	NGAYBATDAU		DATE,
	NGAYKETTHUC		DATE,
	SOGIAM			VARCHAR(20),
	DIEUKIEN		NVARCHAR(100),
	CONSTRAINT PK_KHUYENMAI PRIMARY KEY(MAKM)
);

--------------------- BẢNG CHI TIẾT KHUYẾN MÃI
CREATE TABLE CHITIETKHUYENMAI
(
	MAKM			VARCHAR(10) NOT NULL,
	MASP			VARCHAR(10) NOT NULL,
	CONSTRAINT PK_CHITIETKHUYENMAI PRIMARY KEY(MAKM, MASP)
);


--------------------- BẢNG VOUCHER
CREATE TABLE VOUCHER
(
	MAVOR			VARCHAR(15) NOT NULL,
	TENVOR			NVARCHAR(50),
	CONHAN			BIT,
	SOGIAM			VARCHAR(20),
	DIEUKIEN		NVARCHAR(100),
	CONSTRAINT PK_VOUCHER PRIMARY KEY(MAVOR)
);

--------------------- BẢNG KHÁCH HÀNG
CREATE TABLE KHACHHANG
(
	MAKH			VARCHAR(10) NOT NULL,
	HOTEN			NVARCHAR(50),
	ANHDAIDIEN		VARCHAR(100),
	NGAYSINH		DATE,
	GIOITINH		NVARCHAR(5),
	DIACHI			NVARCHAR(100),
	SODIENTHOAI		VARCHAR(10),
	MATKHAU			VARCHAR(20),
	EMAIL			VARCHAR(30),
	TINHTHANH		VARCHAR(20),
	DIEMTICHLUY		DECIMAL(5,2),
	CONSTRAINT PK_KHACHHANG PRIMARY KEY(MAKH)
);

--------------------- BẢNG HÓA ĐƠN
CREATE TABLE HOADON
(
	MAHD			VARCHAR(10) NOT NULL,
	NGAYLAP			DATE,
	TONGTIEN		DECIMAL(18, 0),
	THANHTIEN		DECIMAL(18, 0),
	COTICHDIEM		BIT,
	COVOUCHER		BIT,
	CONSTRAINT PK_HOADON PRIMARY KEY(MAHD)
);

--------------------- BẢNG CHI TIẾT VOUCHER
CREATE TABLE CHITIETVOUCHER
(
	MAHD			VARCHAR(10) NOT NULL,
	MAVOR			VARCHAR(15) NOT NULL,
	CONSTRAINT PK_CHITIETVOUCHER PRIMARY KEY(MAHD, MAVOR)
);

--------------------- BẢNG CHI TIẾT HÓA ĐƠN
CREATE TABLE CHITIETHOADON
(
	MAHD			VARCHAR(10) NOT NULL,
	MASP			VARCHAR(10) NOT NULL,
	MANV			VARCHAR(10) NOT NULL,
	SOLUONG			INT,
	MATICHDIEM		VARCHAR(6),
	CONSTRAINT PK_CHITIETHOADON PRIMARY KEY(MAHD)
);

--------------------------------------------------- [ RÀNG BUỘC ] ---------------------------------------------------

--------------------------------------------------------- KHÓA NGOẠI
--------------------- BẢNG TÀI KHOẢN
ALTER TABLE TAIKHOAN 
ADD CONSTRAINT FK_TAIKHOAN_QUYENTRUYCAP FOREIGN KEY(MAQTC) REFERENCES QUYENTRUYCAP(MAQTC)

--------------------- BẢNG NHÂN VIÊN
ALTER TABLE NHANVIEN 
ADD CONSTRAINT FK_NHANVIEN_TAIKHOAN FOREIGN KEY(MATK) REFERENCES TAIKHOAN(MATK)

--------------------- BẢNG SẢN PHẨM
ALTER TABLE SANPHAM
ADD CONSTRAINT FK_SANPHAM_NHASANXUAT FOREIGN KEY(MANSX) REFERENCES NHASANXUAT(MANSX),
	CONSTRAINT FK_SANPHAM_NHACUNGCAP FOREIGN KEY(MANCC) REFERENCES NHACUNGCAP(MANCC),
	CONSTRAINT FK_SANPHAM_DONVITINH FOREIGN KEY(MADVT) REFERENCES DONVITINH(MADVT)

--------------------- BẢNG CHI TIẾT KHUYẾN MÃI
ALTER TABLE CHITIETKHUYENMAI
ADD CONSTRAINT FK_CHITIETKHUYENMAI_SANPHAM FOREIGN KEY(MASP) REFERENCES SANPHAM(MASP),
	CONSTRAINT FK_CHITIETKHUYENMAI_KHUYENMAI FOREIGN KEY(MAKM) REFERENCES KHUYENMAI(MAKM)

--------------------- BẢNG CHI TIẾT VOUCHER
ALTER TABLE CHITIETVOUCHER
ADD CONSTRAINT FK_CHITIETVOUCHER_HOADON FOREIGN KEY(MAHD) REFERENCES HOADON(MAHD),
	CONSTRAINT FK_CHITIETVOUCHER_VOUCHER FOREIGN KEY(MAVOR) REFERENCES VOUCHER(MAVOR)

--------------------- BẢNG CHI TIẾT HÓA ĐƠN
ALTER TABLE CHITIETHOADON
ADD CONSTRAINT FK_CHITIETHOADON_HOADON FOREIGN KEY(MAHD) REFERENCES HOADON(MAHD),
	CONSTRAINT FK_CHITIETHOADON_SANPHAM FOREIGN KEY(MASP) REFERENCES SANPHAM(MASP),
	CONSTRAINT FK_CHITIETHOADON_NHANVIEN FOREIGN KEY(MANV) REFERENCES NHANVIEN(MANV)

--------------------------------------------------------- TRIGGER
--------------------- TRIGGER TẠO RANDOM MÃ NHÂN VIÊN
CREATE TRIGGER TAONGAUNHIENMANHANVIEN
ON NHANVIEN
AFTER INSERT
AS
BEGIN    
    UPDATE NHANVIEN
    SET MANV = '#' + LEFT(CAST(ABS(CHECKSUM(NEWID())) AS VARCHAR(10)), 7)
END
GO

--------------------- TRIGGER TẠO RANDOM MÃ KHÁCH HÀNG
CREATE TRIGGER TAONGAUNHIENMAKHACHHANG
ON KHACHHANG
AFTER INSERT
AS
BEGIN    
    UPDATE KHACHHANG
    SET MAKH = '#' + LEFT(CAST(ABS(CHECKSUM(NEWID())) AS VARCHAR(10)), 7)
END
GO

--------------------- TRIGGER TẠO MÃ TÀI KHOẢN THEO ĐỊNH DẠNG	
CREATE TRIGGER TAOMATAIKHOANTHEODINHDANG
ON TAIKHOAN
INSTEAD OF INSERT
AS
BEGIN
    INSERT INTO TAIKHOAN (MATKHAU, MAQTC)
    SELECT I.MATKHAU, I.MAQTC
    FROM inserted I;
END
GO


--------------------------------------------------- [ KHỞI TẠO CÁC BẢNG DỮ LIỆU ] ---------------------------------------------------
--------------------- BẢNG QUYỀN TRUY CẬP
INSERT INTO QUYENTRUYCAP(TENQTC)
VALUES
(N'Nhân viên quản lý'),
(N'Nhân viên bán hàng'),
(N'Nhân viên kiểm kê và quản lý kho')

SELECT * FROM TAIKHOAN

--------------------- BẢNG TÀI KHOẢN
INSERT INTO TAIKHOAN( MATKHAU, MAQTC)
VALUES
('admin', 1),
('123', 2),
('456', 3)

--------------------- BẢNG NHÂN VIÊN
SET DATEFORMAT DMY
INSERT INTO NHANVIEN(MANV, HOTEN, ANHDAIDIEN, EMAIL, NGAYSINH, GIOITINH, DIACHI, SODIENTHOAI, MATK)
VALUES
('1', N'Phạm Trần Tấn Đạt', '', 'datptt@gmail.com', '22/09/2002', N'Nam', N'F11/27E2 đường Phạm Thị Nghĩ, ấp 6, Xã Vĩnh Lộc A, Huyện Bình Chánh, TP Hồ Chí Minh', '0123456789', 'TK001'),
('2', N'Trần Bích Phượng', '', 'phuongtb@gmail.com', '12/01/1999', N'Nữ', N' 2/33 đường 147, KP5, Phường Tăng Nhơn Phú B, Thành phố Thủ Đức, TP Hồ Chí Minh', '0987654321', 'TK002'),
('3', N'Phùng Thanh Độ', '', 'dopt@gmail.com', '28/10/2001', N'Nam', N'223 Hoàng Văn Thụ (K3.28 Cao ốc Kingston Residence), Phường 08, Quận Phú Nhuận, TP Hồ Chí Minh', '0123412345', 'TK002'),
('4', N'Phan Tấn Trung', '', 'trungpt@gmail.com', '04/04/1996', N'Nam', N'Số 103, đường số 5, Phường Linh Xuân, Thành phố Thủ Đức, TP Hồ Chí Minh', '0234567890', 'TK002'),
('5', N'Đặng Ngọc Bảo Châu', '', 'chaudnb@gmail.com', '25/12/1998', N'Nữ', N'Tầng 16, tòa nhà E, Town Central, số 11 Đoàn Văn Bơ, phường 13, Quận 4, TP Hồ Chí Minh', '0345678912', 'TK003'),
('6', N'Nguyễn Trung Thịnh', '', 'thinhnt@gmail.com', '12/07/2000', N'Nam', N'Số 473 Đỗ Xuân Hợp, Phường Phước Long B, Thành phố Thủ Đức, TP Hồ Chí Minh', '0456789123', 'TK003'),
('7', N'Nguyễn Quốc Bảo', '', 'baonq@gmail.com', '07/12/2000', N'Nam', N'120 Vũ Tông Phan , Khu Phố 5, Phường An Phú, Thành phố Thủ Đức, TP Hồ Chí Minh', '0567891234', 'TK002'),
('8', N'Trần Quốc Quy', '', 'quytq@gmail.com', '06/11/2001', N'Nam', N'72 Bình Giã, Phường 13, Quận Tân Bình, TP Hồ Chí Minh', '0678912345', 'TK003'),
('9', N'Lâm Quốc Huy', '', 'huylq@gmail.com', '17/08/1998', N'Nam', N'C10 Rio Vista, 72 Dương Đình Hội, Phường Phước Long B, Thành phố Thủ Đức, TP Hồ Chí Minh', '0789123456', 'TK003'),
('10', N'Trần Thị Vân Anh', '', 'anhttv@gmail.com', '22/02/1993', N'Nữ', N'K02, Park Riverside, 09 Bưng ông Thoàn, Phường Phú Hữu, Thành phố Thủ Đức, TP Hồ Chí Minh', '0891234567', 'TK002')