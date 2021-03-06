USE [QuanLySinhVienKTX]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 6/13/2021 10:09:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[MaHD] [nchar](10) NOT NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[SoPhong] [int] NOT NULL,
	[MSSV] [int] NOT NULL,
 CONSTRAINT [PK_HopDong_1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/13/2021 10:09:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[SDT] [nchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 6/13/2021 10:09:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[SoPhong] [int] NOT NULL,
	[Tang] [int] NULL,
	[SLTD] [int] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[SoPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLy]    Script Date: 6/13/2021 10:09:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLy](
	[SoPhong] [int] NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[NgayNhan] [date] NULL,
 CONSTRAINT [PK_QuanLy] PRIMARY KEY CLUSTERED 
(
	[SoPhong] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 6/13/2021 10:09:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MSSV] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[CMND] [int] NULL,
	[NgaySinh] [date] NULL,
	[SDT] [nchar](10) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[Lop] [nchar](10) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD01      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 101, 17110112)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD02      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 101, 17110113)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD03      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 101, 17110345)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD04      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 101, 17110434)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD05      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 101, 17110444)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD06      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 101, 17110448)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD07      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 101, 17110449)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD08      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 101, 17110453)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD09      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 301, 17110499)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD10      ', CAST(N'2019-12-02' AS Date), CAST(N'2020-01-01' AS Date), 301, 17110666)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD11      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 102, 17110676)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD12      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 102, 17110987)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD13      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 102, 17111000)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD14      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 102, 17111001)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD15      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 102, 17111992)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD16      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 102, 17111993)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD17      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 103, 17112001)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD18      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 103, 17112002)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD19      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 103, 17112010)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD20      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 103, 17112011)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD21      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 401, 17112111)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD22      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 402, 17112222)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD23      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 410, 17112345)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD24      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 103, 17113333)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD25      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 104, 17114000)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD26      ', CAST(N'2019-12-02' AS Date), CAST(N'2022-01-01' AS Date), 104, 17114001)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD27      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 104, 18110145)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD28      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 501, 18110234)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD29      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 511, 18110235)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD30      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 104, 18110435)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD31      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 104, 18110447)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD32      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 104, 18110455)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD33      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 105, 18110456)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD34      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 105, 18110543)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD35      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 105, 18110567)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD36      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 601, 18110660)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD37      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 105, 18110666)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD38      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 620, 18110678)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD39      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 105, 18110777)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD40      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 105, 18110789)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD41      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 106, 18110987)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD42      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 106, 18110999)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD43      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 702, 18112000)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD44      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 106, 18113444)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD45      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 106, 18113500)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD46      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 720, 18113555)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD47      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 106, 18113560)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD48      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 106, 18113777)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD49      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 107, 18115000)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD50      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 107, 18115001)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD51      ', CAST(N'2020-12-02' AS Date), CAST(N'2022-01-01' AS Date), 107, 18118777)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD52      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 107, 19110001)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD53      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 107, 19110002)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD54      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 801, 19110003)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD55      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 107, 19110009)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD56      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 107, 19110111)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD57      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 108, 19110113)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD58      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 805, 19110212)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD59      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 108, 19110222)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD60      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 108, 19110233)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD61      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 108, 19110234)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD62      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 108, 19110239)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD63      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 108, 19110245)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD64      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 108, 19110365)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD65      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 109, 19110366)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD66      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 109, 19110377)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD67      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 901, 19110433)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD68      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 109, 19110446)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD69      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 109, 19110447)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD70      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 902, 19110512)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD71      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 109, 19110545)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD72      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 109, 19110578)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD73      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 110, 19110678)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD74      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 110, 19110735)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD75      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 111, 19110765)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD76      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 111, 19110786)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD77      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 112, 19110888)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD78      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 112, 19110889)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD79      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 113, 19110897)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD80      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 113, 19111000)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD81      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 114, 19111002)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD82      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 114, 19110003)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD83      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 115, 19111111)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD84      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 115, 19111112)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD85      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 116, 19111113)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD86      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 117, 19111114)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD87      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 117, 19111555)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD88      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 118, 19112175)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD89      ', CAST(N'2021-12-02' AS Date), CAST(N'2023-01-01' AS Date), 118, 19116666)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD90      ', CAST(N'2022-12-02' AS Date), CAST(N'2023-01-01' AS Date), 119, 20110445)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD91      ', CAST(N'2022-12-02' AS Date), CAST(N'2023-01-01' AS Date), 119, 20110567)
INSERT [dbo].[HopDong] ([MaHD], [NgayBD], [NgayKT], [SoPhong], [MSSV]) VALUES (N'HD92      ', CAST(N'2020-12-02' AS Date), CAST(N'2023-01-01' AS Date), 201, 18114000)
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [ChucVu], [SDT]) VALUES (N'NV01', N'Nguyễn Ngọc An', CAST(N'1988-12-04' AS Date), N'Quận 1, TP.HCM', N'Bảo Vệ', N'345290615 ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [ChucVu], [SDT]) VALUES (N'NV02', N'Lê Ngọc Như', CAST(N'1986-02-12' AS Date), N'Quận Gò Vấp, TP.HCM', N'Kế Toán', N'98712187  ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [ChucVu], [SDT]) VALUES (N'NV03', N'Nguyễn Thị Lệ', CAST(N'1987-10-02' AS Date), N'Quận 9, TP.HCM', N'Kế Toán', N'98612176  ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [ChucVu], [SDT]) VALUES (N'NV04', N'Nguyễn An Nhàn', CAST(N'1991-02-01' AS Date), N'Quận Bình Thạnh, TP.HCM', N'Bảo vệ', N'234711909 ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [ChucVu], [SDT]) VALUES (N'NV05', N'Nguyễn Quang Dũng', CAST(N'1990-11-05' AS Date), N'Quận 5, TP.HCM', N'Quản Lý', N'21187656  ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [ChucVu], [SDT]) VALUES (N'NV06', N'Nguyễn Quang Lộc', CAST(N'1990-04-05' AS Date), N'Quận 1,TP.HCM', N'Bảo Vệ', N'98712145  ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [ChucVu], [SDT]) VALUES (N'NV07', N'Nguyễn Thị Hương', CAST(N'1990-01-02' AS Date), N'Quận 9,TP.HCM', N'Quản Lý', N'345290876 ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [ChucVu], [SDT]) VALUES (N'NV08', N'Nguyễn Ngọc Khôi', CAST(N'1981-08-09' AS Date), N'Quận 2,TP.HCM', N'Kế Toán', N'343312390 ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [ChucVu], [SDT]) VALUES (N'NV09', N'Nguyễn Quang Bình', CAST(N'1981-05-04' AS Date), N'Quận Gò Vấp,TP.HCM', N'Bảo Vệ', N'23412187  ')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NgaySinh], [DiaChi], [ChucVu], [SDT]) VALUES (N'NV10', N'Nguyễn Thị Ngọc', CAST(N'1991-12-01' AS Date), N'Quận 9,TP.HCM', N'Kế Toán', N'34487690  ')
GO
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (101, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (102, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (103, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (104, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (105, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (106, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (107, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (108, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (109, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (110, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (111, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (112, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (113, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (114, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (115, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (116, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (117, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (118, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (119, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (120, 1, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (201, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (202, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (203, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (204, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (205, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (206, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (207, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (208, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (209, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (210, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (211, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (212, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (213, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (214, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (215, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (216, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (217, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (218, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (219, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (220, 2, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (301, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (302, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (303, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (304, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (305, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (306, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (307, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (308, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (309, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (310, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (311, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (312, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (313, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (314, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (315, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (316, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (317, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (318, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (319, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (320, 3, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (401, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (402, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (403, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (404, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (405, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (406, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (407, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (408, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (409, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (410, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (411, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (412, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (413, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (414, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (415, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (416, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (417, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (418, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (419, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (420, 4, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (501, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (502, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (503, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (504, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (505, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (506, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (507, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (508, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (509, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (510, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (511, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (512, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (513, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (514, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (515, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (516, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (517, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (518, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (519, 5, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (520, 5, 8)
GO
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (601, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (602, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (603, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (604, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (605, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (606, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (607, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (608, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (609, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (610, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (611, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (612, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (613, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (614, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (615, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (616, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (617, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (618, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (619, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (620, 6, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (701, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (702, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (703, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (704, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (705, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (706, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (707, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (708, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (709, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (710, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (711, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (712, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (713, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (714, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (715, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (716, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (717, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (718, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (719, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (720, 7, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (801, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (802, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (803, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (804, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (805, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (806, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (807, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (808, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (809, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (810, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (811, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (812, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (813, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (814, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (815, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (816, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (817, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (818, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (819, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (820, 8, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (901, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (902, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (903, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (904, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (905, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (906, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (907, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (908, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (909, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (910, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (911, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (912, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (913, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (914, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (915, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (916, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (917, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (918, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (919, 9, 8)
INSERT [dbo].[Phong] ([SoPhong], [Tang], [SLTD]) VALUES (920, 9, 8)
GO
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17110112, N'Nguyễn Thúy Diễm', 171102354, CAST(N'1999-02-03' AS Date), N'345280767 ', N'Nữ', N'171101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17110113, N'Lê Thị Linh', 171234567, CAST(N'1999-09-10' AS Date), N'234545112 ', N'Nữ', N'171101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17110345, N'Nguyễn Tín', 175609878, CAST(N'1999-12-02' AS Date), N'987121345 ', N'Nam', N'171101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17110434, N'Nguyễn Quang Kiệt', 174509876, CAST(N'1999-03-04' AS Date), N'234454567 ', N'Nam', N'171101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17110444, N'Nguyễn Quang Phong', 172321459, CAST(N'1999-02-01' AS Date), N'999123423 ', N'Nam', N'171101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17110448, N'Nguyễn Quang Thái', 177823456, CAST(N'1999-02-01' AS Date), N'976543123 ', N'Nam', N'171101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17110449, N'Nguyễn Ngọc', 177112432, CAST(N'1999-02-09' AS Date), N'76512135  ', N'Nam', N'171101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17110453, N'Nguyễn Ngọc Thúy', 177612345, CAST(N'1999-11-02' AS Date), N'234765431 ', N'Nữ', N'171101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17110499, N'Nguyễn Thị Giang', 174521345, CAST(N'1999-02-02' AS Date), N'98512342  ', N'Nữ', N'171101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17110666, N'Nguyễn Linh Chi', 178623432, CAST(N'1999-04-05' AS Date), N'324676587 ', N'Nữ', N'171101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17110676, N'Nguyễn Thị Ly', 174123412, CAST(N'1999-02-03' AS Date), N'876512232 ', N'Nữ', N'171101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17110987, N'Nguyễn An Lành', 172309876, CAST(N'1999-08-08' AS Date), N'23451213  ', N'Nam', N'171101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17111000, N'Lâm Linh Chi', 176645321, CAST(N'1999-02-01' AS Date), N'23451231  ', N'Nữ', N'171101E   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17111001, N'Lê Thị Nga', 172334624, CAST(N'1999-12-02' AS Date), N'45612121  ', N'Nữ', N'171101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17111992, N'Nguyễn Quang Lộc', 177721245, CAST(N'1999-12-01' AS Date), N'345213323 ', N'Nam', N'171101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17111993, N'Nguyễn Dư Tuấm', 177421342, CAST(N'1999-12-01' AS Date), N'44523121  ', N'Nam', N'171101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17112001, N'Nguyễn Ngọc Ánh', 174021356, CAST(N'1999-02-28' AS Date), N'21398765  ', N'Nữ', N'171101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17112002, N'Nguyễn Ngọc Oanh', 173367521, CAST(N'1999-02-04' AS Date), N'23231212  ', N'Nữ', N'171101E   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17112010, N'Nguyễn Quang Nghiêm', 179823467, CAST(N'1999-04-12' AS Date), N'987612133 ', N'Nam', N'171101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17112011, N'Nguyễn Sáng', 178898065, CAST(N'1999-02-02' AS Date), N'34528076  ', N'Nam', N'171101E   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17112111, N'Lâm Ngọc Ánh', 178632122, CAST(N'1999-07-06' AS Date), N'231325766 ', N'Nữ', N'171101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17112222, N'Nguyễn Trà My', 172712309, CAST(N'1999-10-02' AS Date), N'9867823   ', N'Nữ', N'171101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17112345, N'Nguyễn Thị Tuyềm', 178934521, CAST(N'1999-02-12' AS Date), N'89761221  ', N'Nữ', N'171101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17113333, N'Nguyễn Thu Hương', 178890811, CAST(N'1999-05-06' AS Date), N'98723231  ', N'Nữ', N'171101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17114000, N'Cái Hoàng Hải', 173409812, CAST(N'1999-03-30' AS Date), N'34562178  ', N'Nam', N'171101E   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (17114001, N'Lê Đức An', 173509854, CAST(N'1999-06-14' AS Date), N'987123122 ', N'Nam', N'171101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110145, N'Nguyễn Minh Nhật', 187623412, CAST(N'2000-12-01' AS Date), N'456723123 ', N'Nam', N'181101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110234, N'Nguyễn Tiến', 182345609, CAST(N'2000-12-12' AS Date), N'235478765 ', N'Nam', N'181101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110235, N'Nguyễn Đức Long', 185687654, CAST(N'2000-12-12' AS Date), N'235676543 ', N'Nam', N'181101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110435, N'Nguyễn Huệ', 181109812, CAST(N'2000-08-09' AS Date), N'23222121  ', N'Nữ', N'181101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110447, N'Lưu Thị Luyến', 181109998, CAST(N'2000-02-03' AS Date), N'199978623 ', N'Nữ', N'181101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110455, N'Trần Khánh Vy', 182345667, CAST(N'2000-07-08' AS Date), N'456876458 ', N'Nữ', N'181101E   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110456, N'Nguyễn Khánh Vân', 182404567, CAST(N'2000-01-02' AS Date), N'345879543 ', N'Nữ', N'181101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110543, N'Nguyễn Như Hoa', 185412321, CAST(N'2000-12-01' AS Date), N'98745632  ', N'Nữ', N'181101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110567, N'Lê Quang Linh', 187703421, CAST(N'2000-07-08' AS Date), N'456786312 ', N'Nam', N'181101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110660, N'Nguyễn Ánh Ngọc', 189823131, CAST(N'2000-12-12' AS Date), N'879123121 ', N'Nữ', N'181101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110666, N'Nguyễn Nhật Hoàng', 187921232, CAST(N'2000-09-02' AS Date), N'988812132 ', N'Nam', N'181101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110678, N'Nguyễn Tâm Như', 187634212, CAST(N'2000-01-01' AS Date), N'753412353 ', N'Nữ', N'181101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110777, N'Nguyễn Quang Vinh', 184321345, CAST(N'2000-02-02' AS Date), N'678812313 ', N'Nam', N'181101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110789, N'Nguyễn Thị Uyên', 187712312, CAST(N'2000-12-03' AS Date), N'987234132 ', N'Nữ', N'181101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110987, N'Nguyễn Hoài', 183213156, CAST(N'2000-09-09' AS Date), N'212980123 ', N'Nữ', N'181101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18110999, N'Lê Thị Thuộc', 187821098, CAST(N'2000-01-21' AS Date), N'98412312  ', N'Nữ', N'181101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18111000, N'Nguyễn Duy Thành', 187412313, CAST(N'2000-02-02' AS Date), N'98781212  ', N'Nam', N'181101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18111001, N'Nguyễn Lợi', 187721345, CAST(N'2000-06-12' AS Date), N'234114232 ', N'Nam', N'181101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18111234, N'Nguyễn Quang Minh', 172378612, CAST(N'2000-02-03' AS Date), N'567214134 ', N'Nam', N'181101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18111235, N'Nguyễn Đức Long', 184523412, CAST(N'2000-01-01' AS Date), N'98761212  ', N'Nam', N'181101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18111777, N'Lê Khánh Ly', 187712312, CAST(N'2000-02-10' AS Date), N'768912312 ', N'Nữ', N'181101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18111778, N'Nguyễn Ngọc Anh', 181234521, CAST(N'2000-12-12' AS Date), N'78612121  ', N'Nữ', N'181101E   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18111990, N'Lê Thúy Phương', 188721212, CAST(N'2000-07-08' AS Date), N'345621232 ', N'Nữ', N'181101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18111999, N'Lê Thị Đào', 188812311, CAST(N'2000-02-01' AS Date), N'34231222  ', N'Nữ', N'181101E   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18112000, N'Lê Bảo', 189834521, CAST(N'2000-12-03' AS Date), N'986781231 ', N'Nam', N'181101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18113444, N'Lê Như Ý', 18909987, CAST(N'2000-09-08' AS Date), N'888721213 ', N'Nữ', N'181101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18113500, N'Đoàn Thị Hiền', 186665456, CAST(N'2000-12-09' AS Date), N'35672121  ', N'Nữ', N'181101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18113555, N'Nguyễn Thùy Dương', 180921276, CAST(N'2000-04-03' AS Date), N'398712131 ', N'Nữ', N'181101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18113560, N'Lê Ngọc Ly', 187654312, CAST(N'2000-02-02' AS Date), N'65421390  ', N'Nữ', N'181101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18113777, N'Lương Quốc Trung', 187723212, CAST(N'2000-07-08' AS Date), N'98721209  ', N'Nam', N'181101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18114000, N'Nguyễn Văn Bằng ', 183607623, CAST(N'2000-01-01' AS Date), N'96523412  ', N'Nam', N'181101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18115000, N'Lê QuangHoài', 182309876, CAST(N'2000-02-03' AS Date), N'56712209  ', N'Nam', N'181101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18115001, N'Long Sĩ Hùng', 189276521, CAST(N'2000-11-11' AS Date), N'97621254  ', N'Nam', N'181101E   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (18118777, N'Long Sĩ Hòa', 182209870, CAST(N'2000-08-27' AS Date), N'34012176  ', N'Nam', N'181101E   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110001, N'Nguyễn Bình', 19451213, CAST(N'2001-12-14' AS Date), N'90912313  ', N'Nam', N'191101E   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110002, N'Lê Minh Tiến', 19870234, CAST(N'2001-06-06' AS Date), N'98723231  ', N'Nam', N'191101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110003, N'Lê Minh Đạo', 192312167, CAST(N'2001-05-04' AS Date), N'9832313   ', N'Nam', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110009, N'Nguyễn Bảo An', 195673212, CAST(N'2001-07-06' AS Date), N'2423423   ', N'Nam', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110111, N'Nguyễn Ngọc Anh', 1923788653, CAST(N'2001-02-03' AS Date), N'764123542 ', N'Nữ', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110113, N'Nguyễn Đan Kim', 192365432, CAST(N'2001-08-06' AS Date), N'678954211 ', N'Nữ', N'191101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110212, N'Nguyễn Thúy An', 1932575421, CAST(N'2001-12-01' AS Date), N'575231987 ', N'Nữ', N'191102A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110222, N'Nguyễn Kiều An', 194702489, CAST(N'2001-02-02' AS Date), N'1234659875', N'Nữ', N'191101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110233, N'Nguyễn Nhật Minh', 194567432, CAST(N'2001-07-07' AS Date), N'23452134  ', N'Nam', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110234, N'Nguyễn Thị Loan', 195621354, CAST(N'2001-09-09' AS Date), N'346980102 ', N'Nữ', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110239, N'Nguyễn Long Minh', 193421345, CAST(N'2001-08-06' AS Date), N'212342434 ', N'Nam', N'191101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110245, N'Nguyễn Bình ', 199945623, CAST(N'2001-08-02' AS Date), N'923132432 ', N'Nam', N'191101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110365, N'Phạm Đinh Quốc Hòa', 196578912, CAST(N'2001-07-12' AS Date), N'1648123654', N'Nam', N'191101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110366, N'Võ Nhật Phi', 195612323, CAST(N'2001-08-12' AS Date), N'345278616 ', N'Nam', N'191101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110377, N'Nguyễn Đức Mạnh', 197301276, CAST(N'2001-01-09' AS Date), N'1345276123', N'Nam', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110433, N'Nguyễn Long An', 19110765, CAST(N'2001-04-03' AS Date), N'236786541 ', N'Nam', N'191101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110446, N'Lê Minh Sang', 194501278, CAST(N'2001-05-05' AS Date), N'1666174685', N'Nam', N'191101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110447, N'Nguyễn Quang Sang', 197404298, CAST(N'2001-08-21' AS Date), N'345290616 ', N'Nam', N'191101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110512, N'Nguyễn Long Nhật', 1974012378, CAST(N'2001-02-03' AS Date), N'234587654 ', N'Nam', N'191101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110545, N'Đàm Ngọc Linh', 199923453, CAST(N'2001-05-04' AS Date), N'978671233 ', N'Nữ', N'191101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110578, N'Nguyễn Ngọc Thiện ', 177712145, CAST(N'2001-06-07' AS Date), N'345987211 ', N'Nam', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110678, N'Nguyễn Thành Công', 197634212, CAST(N'2001-06-12' AS Date), N'98712312  ', N'Nam', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110735, N'Nguyễn Linh Hưng', 181109821, CAST(N'2000-02-21' AS Date), N'232786121 ', N'Nam', N'181101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110765, N'Đỗ Quốc Việt', 192376754, CAST(N'2001-02-07' AS Date), N'897454312 ', N'Nam', N'191101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110786, N'Nguyễn Ngọc Huy', 192312312, CAST(N'2001-01-02' AS Date), N'23414766  ', N'Nam', N'191101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110888, N'Nguyễn Linh ', 1973566890, CAST(N'2001-01-02' AS Date), N'123789654 ', N'Nữ', N'191101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110889, N'Nguyễn Tấn Hào', 197623314, CAST(N'2001-05-06' AS Date), N'897435671 ', N'Nam', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19110897, N'Nguyễn Quang Hoài', 19983241, CAST(N'2001-02-02' AS Date), N'45213113  ', N'Nam', N'191101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19111000, N'Nguyễn Quang Nhật', 197456212, CAST(N'2001-01-01' AS Date), N'23231789  ', N'Nam', N'191101E   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19111002, N'Nguyễn Long A', 194123123, CAST(N'2001-02-03' AS Date), N'98783434  ', N'Nam', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19111003, N'Nguyễn Huy', 194721311, CAST(N'2001-11-11' AS Date), N'34524232  ', N'Nam', N'191101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19111111, N'Nguyễn Thị Lành', 194212342, CAST(N'2001-05-06' AS Date), N'95412980  ', N'Nữ', N'191101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19111112, N'Nguyễn Thị Như', 197402398, CAST(N'2001-04-04' AS Date), N'345678901 ', N'Nữ', N'191101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19111113, N'Nguyễn Long Lanh ', 197896512, CAST(N'2001-07-08' AS Date), N'678123131 ', N'Nữ', N'191101D   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19111114, N'Nguyễn Long Nữ', 198967512, CAST(N'2001-08-09' AS Date), N'978612312 ', N'Nữ', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19111555, N'Nguyễn Đình Hải', 197498524, CAST(N'2001-01-31' AS Date), N'34590912  ', N'Nam', N'191101C   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19112175, N'Nguyễn Nhật Nam', 195643267, CAST(N'2001-05-06' AS Date), N'98723142  ', N'Nam', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (19116666, N'Nguyễn Trâm', 194456212, CAST(N'2001-08-07' AS Date), N'86793212  ', N'Nữ', N'191101A   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (20110445, N'Nguyễn Quang Hải', 176512367, CAST(N'2002-05-06' AS Date), N'123456432 ', N'Nam', N'201101B   ')
INSERT [dbo].[SinhVien] ([MSSV], [HoTen], [CMND], [NgaySinh], [SDT], [GioiTinh], [Lop]) VALUES (20110567, N'Nguyễn Tiến Linh', 197742312, CAST(N'2002-07-03' AS Date), N'266679812 ', N'Nam', N'201101A   ')
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_Phong] FOREIGN KEY([SoPhong])
REFERENCES [dbo].[Phong] ([SoPhong])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK_HopDong_Phong]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_SinhVien] FOREIGN KEY([MSSV])
REFERENCES [dbo].[SinhVien] ([MSSV])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK_HopDong_SinhVien]
GO
ALTER TABLE [dbo].[QuanLy]  WITH CHECK ADD  CONSTRAINT [FK_QuanLy_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[QuanLy] CHECK CONSTRAINT [FK_QuanLy_NhanVien]
GO
ALTER TABLE [dbo].[QuanLy]  WITH CHECK ADD  CONSTRAINT [FK_QuanLy_Phong] FOREIGN KEY([SoPhong])
REFERENCES [dbo].[Phong] ([SoPhong])
GO
ALTER TABLE [dbo].[QuanLy] CHECK CONSTRAINT [FK_QuanLy_Phong]
GO
