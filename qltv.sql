USE [master]
GO
/****** Object:  Database [QLTHUVIEN]    Script Date: 15/06/2021 18:24:24 ******/
CREATE DATABASE [QLTHUVIEN]
 /*CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTHUVIEN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLTHUVIEN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLTHUVIEN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLTHUVIEN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT*/
GO
ALTER DATABASE [QLTHUVIEN] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTHUVIEN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTHUVIEN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTHUVIEN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTHUVIEN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLTHUVIEN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTHUVIEN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET RECOVERY FULL 
GO
ALTER DATABASE [QLTHUVIEN] SET  MULTI_USER 
GO
ALTER DATABASE [QLTHUVIEN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTHUVIEN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTHUVIEN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTHUVIEN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLTHUVIEN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLTHUVIEN] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLTHUVIEN] SET QUERY_STORE = OFF
GO
USE [QLTHUVIEN]
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 15/06/2021 18:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[MAKHOA] [nvarchar](50) NOT NULL,
	[TENKHOA] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[MAKHOA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 15/06/2021 18:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [nvarchar](50) NOT NULL,
	[TENLOP] [nvarchar](100) NOT NULL,
	[MAKHOA] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MUONTRA]    Script Date: 15/06/2021 18:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUONTRA](
	[MANGUOIDUNG] [nvarchar](50) NOT NULL,
	[MASACH] [nvarchar](50) NOT NULL,
	[NGAYMUON] [date] NOT NULL,
	[HANTRA] [date] NOT NULL,
 CONSTRAINT [PK_MUONSACH] PRIMARY KEY CLUSTERED 
(
	[MANGUOIDUNG] ASC,
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 15/06/2021 18:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[MANGUOIDUNG] [nvarchar](50) NOT NULL,
	[MATKHAU] [varchar](50) NOT NULL,
	[TENNGUOIDUNG] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](50) NULL,
	[NGAYSINH] [date] NULL,
	[NGAYDANGKY] [date] NULL,
	[NGAYHETHAN] [date] NULL,
	[DIACHI] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[EMAIL] [nvarchar](50) NULL,
	[MAVAITRO] [nvarchar](50) NOT NULL,
	[MALOP] [nvarchar](50) NULL,
 CONSTRAINT [PK_DOCGIA] PRIMARY KEY CLUSTERED 
(
	[MANGUOIDUNG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 15/06/2021 18:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[MANXB] [nvarchar](50) NOT NULL,
	[TENNXB] [nvarchar](100) NOT NULL,
	[DIACHI] [nvarchar](200) NULL,
 CONSTRAINT [PK_NHAXUATBAN] PRIMARY KEY CLUSTERED 
(
	[MANXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYDINH]    Script Date: 15/06/2021 18:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYDINH](
	[MAQUYDINH] [nvarchar](50) NOT NULL,
	[SOSACHMUONTOIDA] [int] NOT NULL,
	[SONGAYMUONTOIDA] [int] NOT NULL,
	[TIENPHATQUAHAN] [int] NOT NULL,
	[TIENPHATHONGMAT] [float] NOT NULL,
	[NGAYTHAYDOI] [date] NOT NULL,
 CONSTRAINT [PK_QUYDINH] PRIMARY KEY CLUSTERED 
(
	[MAQUYDINH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 15/06/2021 18:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MASACH] [nvarchar](50) NOT NULL,
	[TENSACH] [nvarchar](50) NOT NULL,
	[NGAYNHAP] [date] NOT NULL,
	[GIA] [int] NOT NULL,
	[VITRI] [nvarchar](50) NOT NULL,
	[MATACGIA] [nvarchar](50) NOT NULL,
	[MANXB] [nvarchar](50) NOT NULL,
	[MATHELOAI] [nvarchar](50) NOT NULL,
	[SOLUONGCO] [int] NOT NULL,
	[SOLUONGCON] [int] NOT NULL,
 CONSTRAINT [PK_SACH] PRIMARY KEY CLUSTERED 
(
	[MASACH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 15/06/2021 18:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MATACGIA] [nvarchar](50) NOT NULL,
	[TENTACGIA] [nvarchar](100) NOT NULL,
	[GHICHU] [nvarchar](200) NULL,
 CONSTRAINT [PK_TACGIA] PRIMARY KEY CLUSTERED 
(
	[MATACGIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 15/06/2021 18:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[MATHELOAI] [nvarchar](50) NOT NULL,
	[TENTHELOAI] [nvarchar](100) NOT NULL,
	[GHICHU] [nvarchar](500) NULL,
 CONSTRAINT [PK_THELOAI] PRIMARY KEY CLUSTERED 
(
	[MATHELOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VAITRO]    Script Date: 15/06/2021 18:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VAITRO](
	[MAVAITRO] [nvarchar](50) NOT NULL,
	[TENVAITRO] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_VAITRO] PRIMARY KEY CLUSTERED 
(
	[MAVAITRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XULYVIPHAM]    Script Date: 15/06/2021 18:24:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XULYVIPHAM](
	[MANGUOIDUNG] [nvarchar](50) NOT NULL,
	[PHATQUAHAN] [int] NULL,
	[PHATHONGMAT] [int] NULL,
	[SOLANVIPHAM] [int] NOT NULL,
 CONSTRAINT [PK_XULYVIPHAM] PRIMARY KEY CLUSTERED 
(
	[MANGUOIDUNG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'ATTT', N'An toàn thông tin')
GO
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'CNTT', N'Công nghệ thông tin')
GO
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'ĐPT', N'ĐPT')
GO
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'KT', N'Kế toán')
GO
INSERT [dbo].[KHOA] ([MAKHOA], [TENKHOA]) VALUES (N'MR', N'Marketing')
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'D17CQMR01', N'Marketing 1', N'MR')
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'D18CQAT01', N'An toàn thông tin 1', N'ATTT')
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'D18CQAT02', N'An toàn thông tin 2', N'ATTT')
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'D18CQCN01', N'Công nghệ thông tin 1', N'CNTT')
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'D18CQCN02', N'Công nghệ thông tin 2', N'CNTT')
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'D18CQCN03', N'Công nghệ thông tin 3', N'CNTT')
GO
INSERT [dbo].[LOP] ([MALOP], [TENLOP], [MAKHOA]) VALUES (N'D18CQKT01', N'Kế toán 1', N'KT')
GO
INSERT [dbo].[MUONTRA] ([MANGUOIDUNG], [MASACH], [NGAYMUON], [HANTRA]) VALUES (N'D02', N'S1', CAST(N'2021-03-05' AS Date), CAST(N'2021-04-05' AS Date))
GO
INSERT [dbo].[MUONTRA] ([MANGUOIDUNG], [MASACH], [NGAYMUON], [HANTRA]) VALUES (N'D02', N'S2', CAST(N'2021-03-05' AS Date), CAST(N'2021-04-05' AS Date))
GO
INSERT [dbo].[MUONTRA] ([MANGUOIDUNG], [MASACH], [NGAYMUON], [HANTRA]) VALUES (N'D03', N'S1', CAST(N'2021-03-05' AS Date), CAST(N'2021-04-05' AS Date))
GO
INSERT [dbo].[MUONTRA] ([MANGUOIDUNG], [MASACH], [NGAYMUON], [HANTRA]) VALUES (N'D04', N'S3', CAST(N'2021-03-05' AS Date), CAST(N'2021-06-07' AS Date))
GO
INSERT [dbo].[MUONTRA] ([MANGUOIDUNG], [MASACH], [NGAYMUON], [HANTRA]) VALUES (N'D04', N'S4', CAST(N'2021-03-05' AS Date), CAST(N'2021-06-04' AS Date))
GO
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MATKHAU], [TENNGUOIDUNG], [GIOITINH], [NGAYSINH], [NGAYDANGKY], [NGAYHETHAN], [DIACHI], [SDT], [EMAIL], [MAVAITRO], [MALOP]) VALUES (N'admin1', N'0x21232f297a57a5a743894a0e4a801fc3', N'Tuấn', N'Nam', NULL, CAST(N'2018-11-08' AS Date), CAST(N'2023-11-08' AS Date), NULL, NULL, N'buivantuan@gmail.com', N'VT04', NULL)
GO
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MATKHAU], [TENNGUOIDUNG], [GIOITINH], [NGAYSINH], [NGAYDANGKY], [NGAYHETHAN], [DIACHI], [SDT], [EMAIL], [MAVAITRO], [MALOP]) VALUES (N'admin2', N'0x21232f297a57a5a743894a0e4a801fc3', N'Tùng', N'Nam', NULL, CAST(N'2018-07-04' AS Date), CAST(N'2023-07-04' AS Date), NULL, NULL, N'kieuhuynhthanhtung@gmail.com', N'VT04', NULL)
GO
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MATKHAU], [TENNGUOIDUNG], [GIOITINH], [NGAYSINH], [NGAYDANGKY], [NGAYHETHAN], [DIACHI], [SDT], [EMAIL], [MAVAITRO], [MALOP]) VALUES (N'D01', N'0x168df315c87cbe3fa9d908ffb792325f', N'Nguyễn Đình Duy', N'Nam', CAST(N'1992-02-17' AS Date), CAST(N'2021-05-08' AS Date), CAST(N'2025-05-08' AS Date), N'', N'0123456789', N'abc@gmail.com', N'VT01', N'D18CQCN01')
GO
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MATKHAU], [TENNGUOIDUNG], [GIOITINH], [NGAYSINH], [NGAYDANGKY], [NGAYHETHAN], [DIACHI], [SDT], [EMAIL], [MAVAITRO], [MALOP]) VALUES (N'D02', N'0x0a7c91097604bf1b9e5d89a9f0c583c5', N'Hồ Thị Ái Diễm', N'Nữ', CAST(N'2000-06-10' AS Date), CAST(N'2018-06-01' AS Date), CAST(N'2022-06-01' AS Date), N'Quận 12, TP. HCM', N'0396311734', N'', N'VT01', N'D18CQCN03')
GO
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MATKHAU], [TENNGUOIDUNG], [GIOITINH], [NGAYSINH], [NGAYDANGKY], [NGAYHETHAN], [DIACHI], [SDT], [EMAIL], [MAVAITRO], [MALOP]) VALUES (N'D03', N'0x6b9a20a85d8e795d94d47905a75f6ed3', N'Nguyễn Tiến Phước', N'Nam', CAST(N'1999-05-29' AS Date), CAST(N'2021-05-08' AS Date), CAST(N'2025-05-08' AS Date), N'', N'', N'', N'VT01', N'D18CQAT01')
GO
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MATKHAU], [TENNGUOIDUNG], [GIOITINH], [NGAYSINH], [NGAYDANGKY], [NGAYHETHAN], [DIACHI], [SDT], [EMAIL], [MAVAITRO], [MALOP]) VALUES (N'D04', N'0x5a857c86485b74fcd48c541bc59b046f', N'Ngô Thị Hiền', N'Nữ', CAST(N'1996-04-01' AS Date), CAST(N'2021-05-08' AS Date), CAST(N'2025-05-08' AS Date), N'', N'', N'', N'VT01', N'D18CQAT01')
GO
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MATKHAU], [TENNGUOIDUNG], [GIOITINH], [NGAYSINH], [NGAYDANGKY], [NGAYHETHAN], [DIACHI], [SDT], [EMAIL], [MAVAITRO], [MALOP]) VALUES (N'D05', N'0x525643a3b8a2f8a7db705cdc2d9e9835', N'Nguyễn Thị Trúc Ly', N'Nữ', CAST(N'2000-07-05' AS Date), CAST(N'2021-05-08' AS Date), CAST(N'2025-05-08' AS Date), N'', N'', N'', N'VT01', N'D18CQCN01')
GO
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MATKHAU], [TENNGUOIDUNG], [GIOITINH], [NGAYSINH], [NGAYDANGKY], [NGAYHETHAN], [DIACHI], [SDT], [EMAIL], [MAVAITRO], [MALOP]) VALUES (N'D06', N'0x8fad1caf71b85341791e7cf2a3b0c741', N'Hoàng Quốc Huy', N'Nam', CAST(N'1998-09-30' AS Date), CAST(N'2020-07-20' AS Date), CAST(N'2024-07-20' AS Date), N'', N'0396311733', N'', N'VT01', N'D17CQMR01')
GO
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MATKHAU], [TENNGUOIDUNG], [GIOITINH], [NGAYSINH], [NGAYDANGKY], [NGAYHETHAN], [DIACHI], [SDT], [EMAIL], [MAVAITRO], [MALOP]) VALUES (N'thukho1', N'0x5ab1f1c9490952cc08bfee0c6511005d', N'Nguyễn Ngọc Phương Trinh', N'Nữ', CAST(N'2000-06-13' AS Date), CAST(N'2021-05-30' AS Date), CAST(N'2025-05-30' AS Date), N'', N'', N'reintrinh1306@gmail.com', N'VT03', NULL)
GO
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MATKHAU], [TENNGUOIDUNG], [GIOITINH], [NGAYSINH], [NGAYDANGKY], [NGAYHETHAN], [DIACHI], [SDT], [EMAIL], [MAVAITRO], [MALOP]) VALUES (N'thukho2', N'0x5ab1f1c9490952cc08bfee0c6511005d', N'Nguyễn Ngọc Lâm Như', N'Nữ', NULL, CAST(N'2018-12-03' AS Date), CAST(N'2023-12-03' AS Date), N'', N'0123456789', N'nguyenngoclamnhu@gmail.com', N'VT03', NULL)
GO
INSERT [dbo].[NGUOIDUNG] ([MANGUOIDUNG], [MATKHAU], [TENNGUOIDUNG], [GIOITINH], [NGAYSINH], [NGAYDANGKY], [NGAYHETHAN], [DIACHI], [SDT], [EMAIL], [MAVAITRO], [MALOP]) VALUES (N'thuthu', N'0xdc8369fdc42d87f9745fc85b4045cfdf', N'Hà Thị Mơ', N'Nữ', NULL, CAST(N'2018-05-04' AS Date), CAST(N'2023-05-04' AS Date), N'', N'0123456789', N'hathimo@gmail.com', N'VT02', NULL)
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB1', N'Kim Đồng', N'55 Quang Trung, Hà Nội, Việt Nam')
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB10', N'Lao Động', N'175 P. Giảng Võ, Chợ Dừa, Đống Đa, Hà Nội')
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB11', N'Thông Tấn', N'79 Lý Thường Kiệt, Phan Chu Trinh, Hoàn Kiếm, Hà Nội')
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB12', N'Văn Học', N'20 Nam Kỳ Khởi Nghĩa, Phường 8, Quận 3, Thành phố Hồ Chí Minh')
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB13', N'Thế Giới', N'7 Nguyễn Thị Minh Khai, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh')
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB2', N'Trẻ', N' 161B Lý Chính Thắng; Phường 7; Quận 3; Thành phố Hồ Chí Minh')
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB3', N'Thanh Xuân', N'Tầng 6, Tòa nhà Cục Tần số vô tuyến điện, 115, Trần Duy Hưng, Thanh Xuân Trung, Thanh Xuân, Hà Nội')
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB4', N'Hà Nội', N'số 4 Tống Duy Tân, Hàng Bông, Hoàn Kiếm, Hà Nội')
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB5', N'Dân Trí', N'Số 9, ngõ 26, phố Hoàng Cầu, phường Ô Chợ Dừa, quận Đống Đa, Hà Nội')
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB6', N'Tri Thức', N'Tầng 1, Tòa nhà VUSTA, 53, Nguyễn Du, Hai Bà Trưng, Hà Nội')
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB7', N'Công Thương', N'46 P. Ngô Quyền, Hàng Bài, Hoàn Kiếm, Hà Nội')
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB8', N'Kinh Tế TP.HCM', N'279 Nguyễn Tri Phương – Phường 5 – Quận 10 – TP. Hồ Chí Minh')
GO
INSERT [dbo].[NHAXUATBAN] ([MANXB], [TENNXB], [DIACHI]) VALUES (N'NXB9', N'Thanh Hóa', N'248 Trần Phú, P. Ba Đình, Thành phố Thanh Hóa, Thanh Hoá')
GO
INSERT [dbo].[QUYDINH] ([MAQUYDINH], [SOSACHMUONTOIDA], [SONGAYMUONTOIDA], [TIENPHATQUAHAN], [TIENPHATHONGMAT], [NGAYTHAYDOI]) VALUES (N'1', 5, 30, 2000, 1.5, CAST(N'2021-06-15' AS Date))
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S1', N'Mononoke Princess', CAST(N'2021-03-05' AS Date), 50000, N'I don''t know', N'TG01', N'NXB1', N'TL01', 25, 23)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S10', N'Thánh kinh trong người mới khởi nghiệp', CAST(N'2021-03-05' AS Date), 96000, N'I don''t know', N'TG07', N'NXB9', N'TL05', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S11', N'AI trong Marketing', CAST(N'2021-03-05' AS Date), 189000, N'I don''t know', N'TG08', N'NXB10', N'TL05', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S12', N'Con rồng cháu tiên', CAST(N'2021-03-05' AS Date), 135000, N'I don''t know', N'TG04', N'NXB2', N'TL06', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S13', N'Tanya chiến ký', CAST(N'2021-03-05' AS Date), 209000, N'I don''t know', N'TG09', N'NXB4', N'TL02', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S14', N'Lược sử thời gian', CAST(N'2021-03-05' AS Date), 95000, N'I don''t know', N'TG10', N'NXB2', N'TL04', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S15', N'Ngày cuối cùng của một tử tù', CAST(N'2021-03-05' AS Date), 75000, N'I don''t know', N'TG11', N'NXB13', N'TL07', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S16', N'Về nhà với mẹ', CAST(N'2021-03-05' AS Date), 89000, N'I don''t know', N'TG12', N'NXB5', N'TL07', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S17', N'Pippi tất dài', CAST(N'2021-03-05' AS Date), 94000, N'I don''t know', N'TG13', N'NXB12', N'TL07', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S18', N'Những người khốn khổ', CAST(N'2021-03-05' AS Date), 395000, N'I don''t know', N'TG11', N'NXB12', N'TL07', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S19', N'Cô thành trong gương', CAST(N'2021-03-05' AS Date), 218000, N'I don''t know', N'TG14', N'NXB4', N'TL07', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S2', N'Castle in the sky', CAST(N'2021-03-05' AS Date), 200000, N'I don''t know', N'TG03', N'NXB1', N'TL02', 40, 39)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S20', N'Hà Nội 1967 - 1975', CAST(N'2021-03-05' AS Date), 28000, N'I don''t know', N'TG15', N'NXB13', N'TL06', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S21', N'Mình về nhà thôi', CAST(N'2021-03-05' AS Date), 110000, N'I don''t know', N'TG17', N'NXB10', N'TL07', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S22', N'Sài Gòn trăm bước', CAST(N'2021-03-05' AS Date), 268000, N'I don''t know', N'TG16', N'NXB11', N'TL08', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S3', N'Spirited away', CAST(N'2021-03-05' AS Date), 50000, N'I don''t know', N'TG02', N'NXB3', N'TL03', 20, 19)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S4', N'My Neighbor Totoro', CAST(N'2021-03-05' AS Date), 50000, N'I don''t know', N'TG02', N'NXB4', N'TL01', 10, 9)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S5', N'Ponyo', CAST(N'2021-06-09' AS Date), 100000, N'Kệ 5', N'TG02', N'NXB1', N'TL01', 25, 25)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S6', N'Trí tuệ nhân tạo', CAST(N'2021-03-05' AS Date), 69000, N'I don''t know', N'TG04', N'NXB5', N'TL04', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S7', N'Stephen Hawking: Một trí tuệ không giới hạn', CAST(N'2021-03-05' AS Date), 189000, N'I don''t know', N'TG05', N'NXB6', N'TL04', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S8', N'Hacker lược sử', CAST(N'2021-03-05' AS Date), 299000, N'I don''t know', N'TG06', N'NXB7', N'TL04', 10, 10)
GO
INSERT [dbo].[SACH] ([MASACH], [TENSACH], [NGAYNHAP], [GIA], [VITRI], [MATACGIA], [MANXB], [MATHELOAI], [SOLUONGCO], [SOLUONGCON]) VALUES (N'S9', N'Hiệu ứng chim mồi', CAST(N'2021-03-05' AS Date), 75000, N'I don''t know', N'TG04', N'NXB8', N'TL05', 10, 10)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG01', N'Vũ Trọng Phụng', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG02', N'Vu Triết', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG03', N'Dịch Nhân Bắc', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG04', N'BBC Worldwide Ltd', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG05', N'Steven Levy', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG06', N'JJ Ramberg', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG07', N'Eric Verzuh', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG08', N'Carlo Zen', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG09', N'Stephen Hawking', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG10', N'Victor Hugo', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG11', N'Kim Hye-jin', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG12', N'Astrid Lindgren', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG13', N'Tsujimura Mizuki', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG14', N'Thomas Billhardt', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG15', N'KTS. Nguyễn Ngọc Dũng', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG16', N'Catherine Ryan Hyde', NULL)
GO
INSERT [dbo].[TACGIA] ([MATACGIA], [TENTACGIA], [GHICHU]) VALUES (N'TG17', N'Indrytimes', NULL)
GO
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI], [GHICHU]) VALUES (N'TL01', N'Anime', NULL)
GO
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI], [GHICHU]) VALUES (N'TL02', N'Light novel', NULL)
GO
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI], [GHICHU]) VALUES (N'TL03', N'BL', NULL)
GO
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI], [GHICHU]) VALUES (N'TL04', N'Khoa Học Kĩ Thuật', NULL)
GO
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI], [GHICHU]) VALUES (N'TL05', N'Kinh Tế', NULL)
GO
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI], [GHICHU]) VALUES (N'TL06', N'Lịch sử', NULL)
GO
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI], [GHICHU]) VALUES (N'TL07', N'Văn học - Tiểu thuyết', NULL)
GO
INSERT [dbo].[THELOAI] ([MATHELOAI], [TENTHELOAI], [GHICHU]) VALUES (N'TL08', N'Văn hóa - Du lịch', NULL)
GO
INSERT [dbo].[VAITRO] ([MAVAITRO], [TENVAITRO]) VALUES (N'VT01', N'Độc giả')
GO
INSERT [dbo].[VAITRO] ([MAVAITRO], [TENVAITRO]) VALUES (N'VT02', N'Thủ thư')
GO
INSERT [dbo].[VAITRO] ([MAVAITRO], [TENVAITRO]) VALUES (N'VT03', N'Thủ kho')
GO
INSERT [dbo].[VAITRO] ([MAVAITRO], [TENVAITRO]) VALUES (N'VT04', N'Quản trị')
GO
INSERT [dbo].[VAITRO] ([MAVAITRO], [TENVAITRO]) VALUES (N'VT06', N'Nhân viên')
GO
INSERT [dbo].[XULYVIPHAM] ([MANGUOIDUNG], [PHATQUAHAN], [PHATHONGMAT], [SOLANVIPHAM]) VALUES (N'D02', 2000, 50000, 2)
GO
ALTER TABLE [dbo].[LOP]  WITH CHECK ADD  CONSTRAINT [FK_LOP_KHOA] FOREIGN KEY([MAKHOA])
REFERENCES [dbo].[KHOA] ([MAKHOA])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LOP] CHECK CONSTRAINT [FK_LOP_KHOA]
GO
ALTER TABLE [dbo].[MUONTRA]  WITH CHECK ADD  CONSTRAINT [FK_MUONTRA_NGUOIDUNG] FOREIGN KEY([MANGUOIDUNG])
REFERENCES [dbo].[NGUOIDUNG] ([MANGUOIDUNG])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MUONTRA] CHECK CONSTRAINT [FK_MUONTRA_NGUOIDUNG]
GO
ALTER TABLE [dbo].[MUONTRA]  WITH CHECK ADD  CONSTRAINT [FK_MUONTRA_SACH] FOREIGN KEY([MASACH])
REFERENCES [dbo].[SACH] ([MASACH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MUONTRA] CHECK CONSTRAINT [FK_MUONTRA_SACH]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOIDUNG_LOP] FOREIGN KEY([MALOP])
REFERENCES [dbo].[LOP] ([MALOP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_NGUOIDUNG_LOP]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOIDUNG_VAITRO] FOREIGN KEY([MAVAITRO])
REFERENCES [dbo].[VAITRO] ([MAVAITRO])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_NGUOIDUNG_VAITRO]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_NHAXUATBAN] FOREIGN KEY([MANXB])
REFERENCES [dbo].[NHAXUATBAN] ([MANXB])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_NHAXUATBAN]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_TACGIA] FOREIGN KEY([MATACGIA])
REFERENCES [dbo].[TACGIA] ([MATACGIA])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_TACGIA]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_THELOAI] FOREIGN KEY([MATHELOAI])
REFERENCES [dbo].[THELOAI] ([MATHELOAI])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_THELOAI]
GO
ALTER TABLE [dbo].[XULYVIPHAM]  WITH CHECK ADD  CONSTRAINT [FK_XULYVIPHAM_NGUOIDUNG] FOREIGN KEY([MANGUOIDUNG])
REFERENCES [dbo].[NGUOIDUNG] ([MANGUOIDUNG])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[XULYVIPHAM] CHECK CONSTRAINT [FK_XULYVIPHAM_NGUOIDUNG]
GO
USE [master]
GO
ALTER DATABASE [QLTHUVIEN] SET  READ_WRITE 
GO
