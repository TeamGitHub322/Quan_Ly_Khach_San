USE [master]
GO
/****** Object:  Database [QUAN_LY_KHACH_SAN]    Script Date: 12/22/2020 4:43:06 PM ******/
CREATE DATABASE [QUAN_LY_KHACH_SAN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUAN_LY_KHACH_SAN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QUAN_LY_KHACH_SAN.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QUAN_LY_KHACH_SAN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QUAN_LY_KHACH_SAN_log.ldf' , SIZE = 2112KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUAN_LY_KHACH_SAN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET  MULTI_USER 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET QUERY_STORE = OFF
GO
USE [QUAN_LY_KHACH_SAN]
GO
/****** Object:  Table [dbo].[DANGNHAP]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGNHAP](
	[Username] [nvarchar](50) NOT NULL,
	[Pass] [nvarchar](50) NULL,
 CONSTRAINT [PK_DN] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[ID_DichVu] [nvarchar](10) NOT NULL,
	[TenDichVu] [nvarchar](50) NULL,
	[Gia] [bigint] NULL,
 CONSTRAINT [PK_DV] PRIMARY KEY CLUSTERED 
(
	[ID_DichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DODUNG]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DODUNG](
	[ID_DoDung] [nvarchar](10) NOT NULL,
	[TenDoDung] [nvarchar](50) NULL,
	[Gia] [bigint] NULL,
 CONSTRAINT [PK_DD] PRIMARY KEY CLUSTERED 
(
	[ID_DoDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[ID_KhachHang] [nvarchar](10) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[CMND] [nvarchar](10) NULL,
	[SDT] [bigint] NULL,
 CONSTRAINT [PK_KH] PRIMARY KEY CLUSTERED 
(
	[ID_KhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[ID_Phong] [nvarchar](10) NOT NULL,
	[TinhTrang] [nvarchar](10) NULL,
	[Gia1Ngay] [bigint] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ph] PRIMARY KEY CLUSTERED 
(
	[ID_Phong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANLYDICHVU]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLYDICHVU](
	[ID_Phong] [nvarchar](10) NOT NULL,
	[ID_DichVu] [nvarchar](10) NOT NULL,
	[Soluong] [bigint] NULL,
 CONSTRAINT [PK_CTTP] PRIMARY KEY CLUSTERED 
(
	[ID_Phong] ASC,
	[ID_DichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANLYDODUNG]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLYDODUNG](
	[ID_Phong] [nvarchar](10) NOT NULL,
	[ID_DoDung] [nvarchar](10) NOT NULL,
	[SoLuong] [bigint] NULL,
 CONSTRAINT [PK_QLDD] PRIMARY KEY CLUSTERED 
(
	[ID_Phong] ASC,
	[ID_DoDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANLYPHONG]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANLYPHONG](
	[ID_Phong] [nvarchar](10) NOT NULL,
	[ID_KhachHang] [nvarchar](10) NOT NULL,
	[NgayThue] [date] NULL,
	[NgayTra] [date] NULL,
	[TongTien] [bigint] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_QLP] PRIMARY KEY CLUSTERED 
(
	[ID_Phong] ASC,
	[ID_KhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DANGNHAP] ([Username], [Pass]) VALUES (N'anhtuan', N'tuan123')
INSERT [dbo].[DANGNHAP] ([Username], [Pass]) VALUES (N'hongquan', N'quan123')
INSERT [dbo].[DANGNHAP] ([Username], [Pass]) VALUES (N'khuonghoang', N'hoanglaota')
INSERT [dbo].[DANGNHAP] ([Username], [Pass]) VALUES (N'khuonglinh', N'linh123')
INSERT [dbo].[DANGNHAP] ([Username], [Pass]) VALUES (N'quangtruong', N'truong123')
INSERT [dbo].[DANGNHAP] ([Username], [Pass]) VALUES (N'tuananh', N'anhle123')
INSERT [dbo].[DICHVU] ([ID_DichVu], [TenDichVu], [Gia]) VALUES (N'DV001', N'Dịch vụ 1', 350000)
INSERT [dbo].[DICHVU] ([ID_DichVu], [TenDichVu], [Gia]) VALUES (N'DV002', N'Dịch vụ 2', 450000)
INSERT [dbo].[DICHVU] ([ID_DichVu], [TenDichVu], [Gia]) VALUES (N'DV003', N'Dịch vụ 3', 550000)
INSERT [dbo].[DICHVU] ([ID_DichVu], [TenDichVu], [Gia]) VALUES (N'DV004', N'Dịch vụ 4', 250000)
INSERT [dbo].[DICHVU] ([ID_DichVu], [TenDichVu], [Gia]) VALUES (N'DV005', N'Dịch vụ 5', 550000)
INSERT [dbo].[DICHVU] ([ID_DichVu], [TenDichVu], [Gia]) VALUES (N'DV006', N'Dịch vụ 6', 300000)
INSERT [dbo].[DICHVU] ([ID_DichVu], [TenDichVu], [Gia]) VALUES (N'DV007', N'Dịch vụ 7', 400000)
INSERT [dbo].[DICHVU] ([ID_DichVu], [TenDichVu], [Gia]) VALUES (N'DV008', N'Dịch vụ 8', 500000)
INSERT [dbo].[DICHVU] ([ID_DichVu], [TenDichVu], [Gia]) VALUES (N'DV009', N'Dịch vụ 9', 600000)
INSERT [dbo].[DICHVU] ([ID_DichVu], [TenDichVu], [Gia]) VALUES (N'DV010', N'Dịch vụ 10', 200000)
INSERT [dbo].[DODUNG] ([ID_DoDung], [TenDoDung], [Gia]) VALUES (N'DD001', N'TiVi', 100000)
INSERT [dbo].[DODUNG] ([ID_DoDung], [TenDoDung], [Gia]) VALUES (N'DD002', N'Tủ Lạnh', 200000)
INSERT [dbo].[DODUNG] ([ID_DoDung], [TenDoDung], [Gia]) VALUES (N'DD003', N'Điều Hòa 2 chiều', 300000)
INSERT [dbo].[DODUNG] ([ID_DoDung], [TenDoDung], [Gia]) VALUES (N'DD004', N'Giường', 400000)
INSERT [dbo].[DODUNG] ([ID_DoDung], [TenDoDung], [Gia]) VALUES (N'DD005', N'Kệ TiVi', 50000)
INSERT [dbo].[DODUNG] ([ID_DoDung], [TenDoDung], [Gia]) VALUES (N'DD006', N'Bàn trang điểm', 100000)
INSERT [dbo].[DODUNG] ([ID_DoDung], [TenDoDung], [Gia]) VALUES (N'DD007', N'Thùng rác', 100000)
INSERT [dbo].[DODUNG] ([ID_DoDung], [TenDoDung], [Gia]) VALUES (N'DD008', N'Rèm cửa', 100000)
INSERT [dbo].[DODUNG] ([ID_DoDung], [TenDoDung], [Gia]) VALUES (N'DD009', N'Điều khiển', 100000)
INSERT [dbo].[DODUNG] ([ID_DoDung], [TenDoDung], [Gia]) VALUES (N'DD010', N'Máy giặt', 100000)
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [CMND], [SDT]) VALUES (N'KH001', N'Lê Thị Ngọc Anh', N'174200022', 928182732)
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [CMND], [SDT]) VALUES (N'KH002', N'Phan Duy Nam', N'174232022', 982716273)
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [CMND], [SDT]) VALUES (N'KH003', N'Đào Văn Thành', N'174200202', 982628174)
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [CMND], [SDT]) VALUES (N'KH004', N'Bùi Anh Tuấn', N'174200974', 29182837)
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [CMND], [SDT]) VALUES (N'KH005', N'Nguyễn Minh Quân', N'174232321', 192837172)
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [CMND], [SDT]) VALUES (N'KH006', N'Trần Văn Tý', N'174254333', 123737180)
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [CMND], [SDT]) VALUES (N'KH007', N'Đỗ Hoài Thu', N'174209172', 192837172)
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [CMND], [SDT]) VALUES (N'KH008', N'Tạ Đình Chiến', N'174203232', 19283162)
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [CMND], [SDT]) VALUES (N'KH009', N'Võ Văn Bình', N'174289002', 182764718)
INSERT [dbo].[KHACHHANG] ([ID_KhachHang], [TenKhachHang], [CMND], [SDT]) VALUES (N'KH010', N'Nguyễn Duy Quang', N'174294828', 182736271)
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph001', N'Ready', 100000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph002', N'Busy', 50000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph003', N'Busy', 75000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph004', N'Ready', 125000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph005', N'Ready', 100000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph006', N'Ready', 100000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph007', N'Busy', 50000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph008', N'Busy', 100000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph009', N'Ready', 100000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph010', N'Ready', 100000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph011', N'Ready', 100000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph012', N'Ready', 100000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph013', N'Ready', 100000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph014', N'Ready', 100000, N'')
INSERT [dbo].[PHONG] ([ID_Phong], [TinhTrang], [Gia1Ngay], [GhiChu]) VALUES (N'Ph015', N'Ready', 100000, N'')
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph001', N'DV001', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph001', N'DV002', 2)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph001', N'DV003', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph001', N'DV004', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph002', N'DV002', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph002', N'DV003', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph002', N'DV004', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph003', N'DV003', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph003', N'DV005', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph003', N'DV006', 3)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph004', N'DV004', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph004', N'DV008', 2)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph005', N'DV005', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph005', N'DV006', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph005', N'DV007', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph005', N'DV009', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph006', N'DV006', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph006', N'DV009', 3)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph007', N'DV003', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph007', N'DV006', 4)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph007', N'DV008', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph008', N'DV001', 1)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph008', N'DV002', 5)
INSERT [dbo].[QUANLYDICHVU] ([ID_Phong], [ID_DichVu], [Soluong]) VALUES (N'Ph008', N'DV010', 1)
INSERT [dbo].[QUANLYDODUNG] ([ID_Phong], [ID_DoDung], [SoLuong]) VALUES (N'Ph001', N'DD001', 1)
INSERT [dbo].[QUANLYDODUNG] ([ID_Phong], [ID_DoDung], [SoLuong]) VALUES (N'Ph001', N'DD002', 1)
INSERT [dbo].[QUANLYDODUNG] ([ID_Phong], [ID_DoDung], [SoLuong]) VALUES (N'Ph002', N'DD002', 2)
INSERT [dbo].[QUANLYDODUNG] ([ID_Phong], [ID_DoDung], [SoLuong]) VALUES (N'Ph002', N'DD003', 1)
INSERT [dbo].[QUANLYDODUNG] ([ID_Phong], [ID_DoDung], [SoLuong]) VALUES (N'Ph002', N'DD007', 1)
INSERT [dbo].[QUANLYDODUNG] ([ID_Phong], [ID_DoDung], [SoLuong]) VALUES (N'Ph003', N'DD002', 1)
INSERT [dbo].[QUANLYDODUNG] ([ID_Phong], [ID_DoDung], [SoLuong]) VALUES (N'Ph004', N'DD005', 1)
INSERT [dbo].[QUANLYDODUNG] ([ID_Phong], [ID_DoDung], [SoLuong]) VALUES (N'Ph004', N'DD008', 2)
INSERT [dbo].[QUANLYPHONG] ([ID_Phong], [ID_KhachHang], [NgayThue], [NgayTra], [TongTien], [GhiChu]) VALUES (N'Ph001', N'KH002', CAST(N'2015-01-01' AS Date), CAST(N'2015-03-01' AS Date), 8250000, N'')
INSERT [dbo].[QUANLYPHONG] ([ID_Phong], [ID_KhachHang], [NgayThue], [NgayTra], [TongTien], [GhiChu]) VALUES (N'Ph002', N'KH003', CAST(N'2015-02-02' AS Date), CAST(N'2016-03-03' AS Date), 21800000, N'')
INSERT [dbo].[QUANLYPHONG] ([ID_Phong], [ID_KhachHang], [NgayThue], [NgayTra], [TongTien], [GhiChu]) VALUES (N'Ph003', N'KH004', CAST(N'2015-03-03' AS Date), CAST(N'2016-04-03' AS Date), 31975000, N'')
INSERT [dbo].[QUANLYPHONG] ([ID_Phong], [ID_KhachHang], [NgayThue], [NgayTra], [TongTien], [GhiChu]) VALUES (N'Ph004', N'KH005', CAST(N'2015-03-04' AS Date), CAST(N'2015-07-04' AS Date), 16750000, N'')
INSERT [dbo].[QUANLYPHONG] ([ID_Phong], [ID_KhachHang], [NgayThue], [NgayTra], [TongTien], [GhiChu]) VALUES (N'Ph005', N'KH006', CAST(N'2015-05-05' AS Date), CAST(N'2015-09-05' AS Date), 14150000, N'')
INSERT [dbo].[QUANLYPHONG] ([ID_Phong], [ID_KhachHang], [NgayThue], [NgayTra], [TongTien], [GhiChu]) VALUES (N'Ph006', N'KH007', CAST(N'2015-06-07' AS Date), CAST(N'2015-10-07' AS Date), 14300000, N'')
INSERT [dbo].[QUANLYPHONG] ([ID_Phong], [ID_KhachHang], [NgayThue], [NgayTra], [TongTien], [GhiChu]) VALUES (N'Ph007', N'KH008', CAST(N'2015-08-08' AS Date), CAST(N'2015-10-07' AS Date), 5250000, N'')
INSERT [dbo].[QUANLYPHONG] ([ID_Phong], [ID_KhachHang], [NgayThue], [NgayTra], [TongTien], [GhiChu]) VALUES (N'Ph008', N'KH009', CAST(N'2015-09-08' AS Date), CAST(N'2016-10-07' AS Date), 42300000, N'')
ALTER TABLE [dbo].[QUANLYDICHVU]  WITH CHECK ADD  CONSTRAINT [PK_CTTP_DV] FOREIGN KEY([ID_DichVu])
REFERENCES [dbo].[DICHVU] ([ID_DichVu])
GO
ALTER TABLE [dbo].[QUANLYDICHVU] CHECK CONSTRAINT [PK_CTTP_DV]
GO
ALTER TABLE [dbo].[QUANLYDICHVU]  WITH CHECK ADD  CONSTRAINT [PK_CTTP_Ph] FOREIGN KEY([ID_Phong])
REFERENCES [dbo].[PHONG] ([ID_Phong])
GO
ALTER TABLE [dbo].[QUANLYDICHVU] CHECK CONSTRAINT [PK_CTTP_Ph]
GO
ALTER TABLE [dbo].[QUANLYDODUNG]  WITH CHECK ADD  CONSTRAINT [PK_QLDD_DD] FOREIGN KEY([ID_DoDung])
REFERENCES [dbo].[DODUNG] ([ID_DoDung])
GO
ALTER TABLE [dbo].[QUANLYDODUNG] CHECK CONSTRAINT [PK_QLDD_DD]
GO
ALTER TABLE [dbo].[QUANLYDODUNG]  WITH CHECK ADD  CONSTRAINT [PK_QLDD_Ph] FOREIGN KEY([ID_Phong])
REFERENCES [dbo].[PHONG] ([ID_Phong])
GO
ALTER TABLE [dbo].[QUANLYDODUNG] CHECK CONSTRAINT [PK_QLDD_Ph]
GO
ALTER TABLE [dbo].[QUANLYPHONG]  WITH CHECK ADD  CONSTRAINT [PK_QLP_KH] FOREIGN KEY([ID_KhachHang])
REFERENCES [dbo].[KHACHHANG] ([ID_KhachHang])
GO
ALTER TABLE [dbo].[QUANLYPHONG] CHECK CONSTRAINT [PK_QLP_KH]
GO
ALTER TABLE [dbo].[QUANLYPHONG]  WITH CHECK ADD  CONSTRAINT [PK_QLP_Ph] FOREIGN KEY([ID_Phong])
REFERENCES [dbo].[PHONG] ([ID_Phong])
GO
ALTER TABLE [dbo].[QUANLYPHONG] CHECK CONSTRAINT [PK_QLP_Ph]
GO
/****** Object:  StoredProcedure [dbo].[AddObject]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AddObject]
(
	@core int,
	@ID1 varchar(10),
	@ID2 varchar(10),
	@String nvarchar(50),
	@Date1 date,
	@Date2 date,
	@Num bigint
)
as
begin
	if @core=1
		insert into KHACHHANG
		values (@ID1,@String,@ID2,@Num)
	else if @core=2
		insert into PHONG
		values (@ID1,@ID2,@Num,@String)
	else if @core=3
		insert into DODUNG
		values(@ID1,@String,@Num)
	else if @core=4
		insert into DICHVU
		values(@ID1,@String,@Num)
	else if @core=5
		insert into QUANLYDICHVU
		values (@ID1,@ID2,@Num)
	else if @core=6
		insert into QUANLYDODUNG
		values (@ID1,@ID2,@Num)
	else 
		insert into QUANLYPHONG
		values (@ID1,@ID2,@Date1,@Date2,@Num,@String)
end
GO
/****** Object:  StoredProcedure [dbo].[AutoCounting]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AutoCounting]
as 
begin
	update QUANLYPHONG set TongTien=0
	declare pointer1 cursor scroll for select ID_Phong,NgayThue,NgayTra from QUANLYPHONG
	declare pointer2 cursor scroll for select * from QUANLYDODUNG
	declare pointer3 cursor scroll for select * from QUANLYDICHVU
	declare @check int =0
	declare @ID nvarchar(10)
	declare @Date1 date
	declare @Date2 date
	declare @total bigint
	open pointer1
	while @check<>1
	begin
		fetch next from pointer1 into @ID,@Date1,@Date2
		if @@FETCH_STATUS<>0
		begin
			set @check=1
		end
		else
		begin
			set @total = Convert(bigint,(select DATEDIFF(DAY,NgayThue,NgayTra) from QUANLYPHONG where ID_Phong=@ID))*(select Gia1Ngay from PHONG where ID_Phong=@ID)
			open pointer2
			declare @ID2_Phong nvarchar(10)
			declare @ID2_DoDung nvarchar(10)
			declare @count2 bigint
			declare @check2 int=0
			while @check2<>1
			begin
				fetch next from pointer2 into @ID2_Phong,@ID2_DoDung,@count2
				if @@FETCH_STATUS<>0
					set @check2=1
				else
				begin
					if @ID2_Phong=@ID
					begin
						set @total = @total + (select Gia from DODUNG where ID_DoDung=@ID2_DoDung)*@count2
					end
				end
			end
			close pointer2
			open pointer3
			declare @ID3_Phong nvarchar(10)
			declare @ID3_DichVu nvarchar(10)
			declare @count3 bigint
			declare @check3 int=0
			while @check3<>1
			begin
				fetch next from pointer3 into @ID3_Phong,@ID3_DichVu,@count3 
				if @@FETCH_STATUS<>0
					set @check3=1
				else
				begin
					if @ID3_Phong=@ID
					begin
						set @total=@total +(select Gia from DICHVU where ID_DichVu=@ID3_DichVu)*@count3
					end
				end
			end
			close pointer3
			update QUANLYPHONG set TongTien=@total where ID_Phong=@ID
		end
	end
	close pointer1
	deallocate pointer1
	deallocate pointer2
	deallocate pointer3
end

GO
/****** Object:  StoredProcedure [dbo].[DeleteObject]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteObject]
(
	@core int,
	@ID1 nvarchar(10),
	@ID2 nvarchar(10)
)
as
begin
	if @core=1
		delete from KHACHHANG where ID_KhachHang=@ID1
	else if @core=2
		delete from PHONG where ID_Phong=@ID1
	else if @core=3
		delete from DODUNG where ID_DoDung=@ID1
	else if @core=4
		delete from DICHVU where ID_DichVu =@ID1
	else if @core=5
		delete from QUANLYDICHVU where ID_Phong=@ID1 and ID_DichVu=@ID2
	else if @core=6
		delete from QUANLYDODUNG where ID_Phong=@ID1 and ID_DoDung=@ID2
	else 
		delete from QUANLYPHONG where ID_Phong=@ID1 and ID_KhachHang=@ID2
end
GO
/****** Object:  StoredProcedure [dbo].[EditObject]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EditObject]
(
	@core int,
	@ID1 varchar(10),
	@ID2 varchar(10),
	@String nvarchar(50),
	@Date1 date,
	@Date2 date,
	@Num bigint
)
as
begin
	if @core=1
		update KHACHHANG set TenKhachHang=@String, CMND=@ID2,SDT=@Num
		where ID_KhachHang=@ID1
	else if @core=2
		update PHONG set TinhTrang=@ID2, GhiChu=@String ,Gia1Ngay=@Num
		where ID_Phong=@ID1
	else if @core=3
		update DODUNG set TenDoDung=@String,Gia=@Num
		where ID_DoDung=@ID1
	else if @core=4
		update DICHVU set TenDichVu=@String, Gia=@Num
		where ID_DichVu=@ID1
	else if @core=5
		update QUANLYDICHVU set SoLuong=@Num
		where ID_Phong=@ID1 and ID_DichVu=@ID2
	else if @core=6
		update QUANLYDODUNG set SoLuong=@Num
		where ID_Phong=@ID1 and ID_DoDung=@ID2
	else 
		update QUANLYPHONG set NgayThue=@Date1,NgayTra=@Date2,GhiChu=@String, TongTien=@Num
		where ID_Phong=@ID1 and ID_KhachHang=@ID2
end
GO
/****** Object:  StoredProcedure [dbo].[FindObject]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[FindObject]
(
	@core int,
	@Part nvarchar(50)
)
as
begin
	if @core=1
		select*from KHACHHANG where ID_KhachHang like ('%'+@Part+'%') or TenKhachHang like ('%'+@Part+'%') or SDT like ('%'+@Part+'%')
	else if @core=2
		select*from PHONG where ID_Phong like ('%'+@Part+'%') or TinhTrang like ('%'+@Part+'%') or GhiChu like ('%'+@Part+'%') or Gia1Ngay like ('%'+@Part+'%')
	else if @core=3
		select*from DODUNG where ID_DoDung like ('%'+@Part+'%') or  TenDoDung like ('%'+@Part+'%') or Gia like ('%'+@Part+'%')
	else if @core=4
		select*from DICHVU where ID_DichVu like ('%'+@Part+'%') or TenDichVu like ('%'+@Part+'%') or Gia like ('%'+@Part+'%')
	else if @core=5
		select*from QUANLYDICHVU where ID_DichVu  like ('%'+@Part+'%') or ID_Phong like ('%'+@Part+'%') or SoLuong like ('%'+@Part+'%')
	else if @core=6
		select*from QUANLYDODUNG where ID_DoDung like ('%'+@Part+'%') or ID_Phong like ('%'+@Part+'%') or SoLuong  like ('%'+@Part+'%')
	else 
		select*from QUANLYPHONG where ID_KhachHang  like ('%'+@Part+'%') or ID_Phong  like ('%'+@Part+'%')
end
GO
/****** Object:  StoredProcedure [dbo].[OutPutTable]    Script Date: 12/22/2020 4:43:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[OutPutTable]
(
	@core int
)
as
begin
	if @core=1
		select*from KHACHHANG
	else if @core=2
		select*from PHONG
	else if @core=3
		select*from DODUNG
	else if @core=4
		select*from DICHVU
	else if @core=5
		select*from QUANLYDICHVU
	else if @core=6
		select*from QUANLYDODUNG
	else if @core=7
		select*from QUANLYPHONG
	else 
		select*from DANGNHAP
end
GO
USE [master]
GO
ALTER DATABASE [QUAN_LY_KHACH_SAN] SET  READ_WRITE 
GO
