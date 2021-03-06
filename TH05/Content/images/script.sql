USE [QLTHUEXE]
GO
/****** Object:  Table [dbo].[BaoCao]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCao](
	[IDBaoCao] [nvarchar](50) NOT NULL,
	[Thang] [datetime] NULL,
 CONSTRAINT [PK_BaoCao] PRIMARY KEY CLUSTERED 
(
	[IDBaoCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChitietDG]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChitietDG](
	[IDKH] [nvarchar](50) NOT NULL,
	[IDXe] [nvarchar](50) NOT NULL,
	[NoidungDG] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChitietDG] PRIMARY KEY CLUSTERED 
(
	[IDKH] ASC,
	[IDXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTBAOCAO]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTBAOCAO](
	[IDBaoCao] [nvarchar](50) NOT NULL,
	[IDHopDong] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CTBAOCAO] PRIMARY KEY CLUSTERED 
(
	[IDBaoCao] ASC,
	[IDHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatXe]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatXe](
	[IDDatXe] [nvarchar](50) NOT NULL,
	[IDKH] [nvarchar](50) NULL,
	[IDXe] [nvarchar](50) NULL,
	[IDThanhToan] [nvarchar](50) NULL,
	[NgayNhan] [datetime] NULL,
	[NgayTra] [datetime] NULL,
	[TienCoc] [nvarchar](50) NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbDatXe] PRIMARY KEY CLUSTERED 
(
	[IDDatXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThu](
	[IDDoanhThu] [nvarchar](50) NOT NULL,
	[IDBaoCao] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DoanhThu] PRIMARY KEY CLUSTERED 
(
	[IDDoanhThu] ASC,
	[IDBaoCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangXe]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangXe](
	[IDHangXe] [nvarchar](50) NOT NULL,
	[TenHangXe] [nvarchar](50) NULL,
 CONSTRAINT [PK_HangXe] PRIMARY KEY CLUSTERED 
(
	[IDHangXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HopDong]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDong](
	[IDHopDong] [nvarchar](50) NOT NULL,
	[IDDatXe] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
 CONSTRAINT [PK_HopDong] PRIMARY KEY CLUSTERED 
(
	[IDHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKH] [nvarchar](50) NOT NULL,
	[IDType] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[Avt] [nvarchar](max) NULL,
	[Cmnd] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiXe]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiXe](
	[IDLoaiXe] [nvarchar](50) NOT NULL,
	[TenLoaiXe] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiXe] PRIMARY KEY CLUSTERED 
(
	[IDLoaiXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IDNhanVien] [nvarchar](50) NOT NULL,
	[IDType] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nchar](10) NULL,
	[TenNv] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Cmnd] [nvarchar](50) NULL,
	[Avt] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[IDThanhToan] [nvarchar](50) NOT NULL,
	[TenThanhToan] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThanhToan] PRIMARY KEY CLUSTERED 
(
	[IDThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeAcc]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeAcc](
	[IDType] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[IDType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 13/05/2021 1:55:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[IDXe] [nvarchar](50) NOT NULL,
	[IDHangXe] [nvarchar](50) NULL,
	[IDLoaiXe] [nvarchar](50) NULL,
	[TenXe] [nvarchar](50) NULL,
	[BienSo] [nvarchar](50) NULL,
	[GiaXe] [int] NULL,
	[MoTa] [nvarchar](max) NULL,
	[TinhTrang] [bit] NULL,
	[HinhAnh1] [nvarchar](max) NULL,
	[HinhAnh2] [nvarchar](max) NULL,
	[HinhAnh3] [nvarchar](max) NULL,
	[LoaiNhienLieu] [nvarchar](50) NULL,
	[HopSo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Xe] PRIMARY KEY CLUSTERED 
(
	[IDXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[HangXe] ([IDHangXe], [TenHangXe]) VALUES (N'HD', N'Honda')
INSERT [dbo].[HangXe] ([IDHangXe], [TenHangXe]) VALUES (N'HDAI', N'Huyndai')
INSERT [dbo].[HangXe] ([IDHangXe], [TenHangXe]) VALUES (N'KIA', N'KIA')
INSERT [dbo].[HangXe] ([IDHangXe], [TenHangXe]) VALUES (N'MD', N'Mazda')
INSERT [dbo].[HangXe] ([IDHangXe], [TenHangXe]) VALUES (N'SBR', N'Subaru')
INSERT [dbo].[HangXe] ([IDHangXe], [TenHangXe]) VALUES (N'TYT', N'Toyota')
INSERT [dbo].[HangXe] ([IDHangXe], [TenHangXe]) VALUES (N'VV', N'Volvo')
GO
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'1', N'3', N'hdanzey0@uol.com.br', N'BC0Fovp', N'Danzey', N'89 Carpenter Way', N'+57 902 823 4603', N'logo-small.png', N'459-33-0940')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'10', N'3', N'crisbrough9@prlog.org', N'R9AHJv', N'Risbrough', N'436 Surrey Pass', N'+1 805 683 8384', N'logo-small.png', N'454-70-9736')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'11', N'3', N'cwytcharda@ft.com', N'KQ1CegW', N'Wytchard', N'84 Declaration Avenue', N'+299 920 922 1726', N'logo-small.png', N'342-12-5832')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'12', N'3', N'kkebleb@slideshare.net', N'zCaL7KsyIz3t', N'Keble', N'967 Clyde Gallagher Crossing', N'+46 530 108 9570', N'logo-small.png', N'203-88-7921')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'13', N'3', N'bsedenc@nymag.com', N'dAoFsOaJfP', N'Seden', N'8171 Duke Trail', N'+86 208 529 5319', N'logo-small.png', N'712-62-1288')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'14', N'3', N'llemaried@topsy.com', N'LT2YFU09qS3', N'Lemarie', N'40774 Garrison Center', N'+1 313 788 9764', N'logo-small.png', N'896-52-5758')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'15', N'3', N'qovette@illinois.edu', N'S5fu9H', N'Ovett', N'39 Steensland Avenue', N'+55 766 592 3835', N'logo-small.png', N'328-13-9119')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'16', N'3', N'dsmetounf@weibo.com', N'7nE7qX237k', N'Smetoun', N'04 Karstens Lane', N'+386 885 154 1819', N'logo-small.png', N'560-94-1409')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'17', N'3', N'ddavidwitzg@economist.com', N'LTBV5QEVc4T5', N'Davidwitz', N'06964 Veith Pass', N'+62 324 466 5455', N'logo-small.png', N'712-56-1168')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'18', N'3', N'mdanielianh@bbc.co.uk', N'n98IZd59vI', N'Danielian', N'28 Crescent Oaks Alley', N'+92 248 251 6245', N'logo-small.png', N'260-46-7256')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'19', N'3', N'lbarrsi@deliciousdays.com', N'tcBDCAz', N'Barrs', N'52 Hoepker Road', N'+355 833 148 8121', N'logo-small.png', N'594-22-3325')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'2', N'3', N'losheilds1@google.es', N'FPE9AE1aDnc', N'O''Sheilds', N'815 Stang Court', N'+55 920 926 1968', N'logo-small.png', N'178-37-0822')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'20', N'3', N'sgorcej@twitter.com', N'YIDaHR', N'Gorce', N'4732 Monica Crossing', N'+30 348 469 7965', N'logo-small.png', N'386-21-9790')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'21', N'3', N'brubinovicik@discovery.com', N'yugsTx3X', N'Rubinovici', N'6744 Dapin Street', N'+7 446 395 2542', N'logo-small.png', N'345-89-5671')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'22', N'3', N'itomsl@tinyurl.com', N'Gtt2DL', N'Toms', N'7 Messerschmidt Way', N'+62 631 808 7241', N'logo-small.png', N'715-66-8173')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'23', N'3', N'bsowtenm@va.gov', N'RUm0vJ', N'Sowten', N'46574 Melby Junction', N'+81 240 678 3325', N'logo-small.png', N'440-82-5669')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'24', N'3', N'lschuricken@pinterest.com', N'58TmPcQk1cJS', N'Schuricke', N'07104 Monument Center', N'+57 305 429 1771', N'logo-small.png', N'525-01-8148')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'25', N'3', N'lbrinkmano@hugedomains.com', N'Pmy4DDBi', N'Brinkman', N'108 Oakridge Place', N'+63 160 624 0882', N'logo-small.png', N'266-78-2078')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'26', N'3', N'cvinckp@independent.co.uk', N'vepsznU', N'Vinck', N'53456 Gulseth Circle', N'+502 373 464 7013', N'logo-small.png', N'518-12-8150')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'27', N'3', N'lvarleyq@msu.edu', N'JHnYbzo', N'Varley', N'505 Dovetail Parkway', N'+48 594 559 2742', N'logo-small.png', N'834-20-7310')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'28', N'3', N'drobleyr@google.es', N'AMh20O', N'Robley', N'15 Old Shore Trail', N'+1 510 778 6556', N'logo-small.png', N'145-22-7907')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'29', N'3', N'rmarikhins@sphinn.com', N'AtUV53Dya', N'Marikhin', N'6 Merchant Street', N'+86 401 932 3645', N'logo-small.png', N'149-07-0686')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'3', N'3', N'pthurston2@trellian.com', N'36bYciQ5KIq', N'Thurston', N'3 Tennyson Pass', N'+55 988 719 9372', N'logo-small.png', N'870-95-1237')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'30', N'3', N'ggoadbyt@hao123.com', N'Eu8wJdiuh7mG', N'Goadby', N'981 Ludington Drive', N'+420 733 469 6314', N'logo-small.png', N'363-72-4234')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'31', N'3', N'tgoleyu@istockphoto.com', N'uXsw0T2', N'Goley', N'47 Buena Vista Park', N'+57 179 943 6236', N'logo-small.png', N'471-52-9814')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'32', N'3', N'abarringtonv@geocities.jp', N'AmNJrXT', N'Barrington', N'3197 Hansons Hill', N'+48 170 933 8431', N'logo-small.png', N'520-58-0198')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'33', N'3', N'aeilhertsenw@cisco.com', N'g64jricdJ0W', N'Eilhertsen', N'8 Hollow Ridge Pass', N'+62 857 700 9943', N'logo-small.png', N'658-02-4938')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'34', N'3', N'bboundyx@cocolog-nifty.com', N'OkoKUd6czYKN', N'Boundy', N'90956 Blaine Trail', N'+93 450 677 8607', N'logo-small.png', N'597-27-3898')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'35', N'3', N'cclemendoty@fda.gov', N'piEQ4ajiHRp', N'Clemendot', N'5089 Nancy Park', N'+962 483 425 9597', N'logo-small.png', N'721-12-9370')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'36', N'3', N'trackleyz@samsung.com', N'K403rvCw', N'Rackley', N'720 Kinsman Center', N'+420 757 112 2824', N'logo-small.png', N'634-27-2550')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'37', N'3', N'tkhristyukhin10@slate.com', N'kUo00fJ1HFa', N'Khristyukhin', N'455 Moulton Drive', N'+7 821 678 1710', N'logo-small.png', N'323-81-9583')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'38', N'3', N'ccosten11@miibeian.gov.cn', N'7gNEIOP', N'Costen', N'1 Utah Way', N'+86 827 393 0747', N'logo-small.png', N'757-19-0311')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'39', N'3', N'meason12@dion.ne.jp', N'pfl6qL', N'Eason', N'9458 Elgar Circle', N'+31 486 715 0288', N'logo-small.png', N'890-60-0741')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'4', N'3', N'vcrighten3@yale.edu', N'VRuZOANV', N'Crighten', N'328 Clemons Street', N'+86 167 193 1950', N'logo-small.png', N'284-77-9685')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'40', N'3', N'astrain13@so-net.ne.jp', N'7OqW1Sf', N'Strain', N'3 Pleasure Pass', N'+86 641 938 2247', N'logo-small.png', N'279-10-9463')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'41', N'3', N'bburlingame14@si.edu', N'km9PId5', N'Burlingame', N'03 Bayside Place', N'+967 883 756 0807', N'logo-small.png', N'524-40-7697')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'42', N'3', N'fskedgell15@blinklist.com', N'9Gxd3LxkDc', N'Skedgell', N'22 Marcy Park', N'+55 821 719 5060', N'logo-small.png', N'100-60-7005')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'43', N'3', N'shulett16@themeforest.net', N'UFVlzC23pz', N'Hulett', N'511 Buell Pass', N'+55 936 300 1153', N'logo-small.png', N'453-61-8743')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'44', N'3', N'yduxfield17@ask.com', N'zHH8vJb', N'Duxfield', N'549 Shelley Alley', N'+86 140 108 2449', N'logo-small.png', N'835-14-0849')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'45', N'3', N'ckeith18@berkeley.edu', N'aBv3OT9sT', N'Keith', N'49 John Wall Crossing', N'+86 866 910 1428', N'logo-small.png', N'624-76-5961')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'46', N'3', N'psilvers19@nydailynews.com', N'3MdJ7k8E2', N'Silvers', N'2 Ramsey Avenue', N'+57 289 436 6491', N'logo-small.png', N'829-31-7223')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'47', N'3', N'rlampbrecht1a@google.de', N'9qY1Lcn', N'Lampbrecht', N'7 Lakeland Road', N'+86 642 529 0325', N'logo-small.png', N'530-58-7438')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'48', N'3', N'dkilleley1b@nydailynews.com', N'UyCQsuJYqnt', N'Killeley', N'001 Brickson Park Avenue', N'+371 310 952 7329', N'logo-small.png', N'130-86-8183')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'49', N'3', N'bbiagi1c@list-manage.com', N'mFsOqQBby', N'Biagi', N'628 Warrior Terrace', N'+249 239 550 9150', N'logo-small.png', N'722-61-7656')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'5', N'3', N'lapplegate4@tiny.cc', N'Vid8GDV4F5', N'Applegate', N'0 Quincy Point', N'+27 928 718 8581', N'logo-small.png', N'490-39-9526')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'50', N'3', N'wkiddell1d@gizmodo.com', N'jCJK5Xd', N'Kiddell', N'081 Spohn Place', N'+1 585 594 1778', N'logo-small.png', N'490-37-6783')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'6', N'3', N'aimison5@virginia.edu', N's6klaB8vz9', N'Imison', N'86413 Redwing Avenue', N'+54 145 337 8132', N'logo-small.png', N'708-80-0643')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'7', N'3', N'mallam6@census.gov', N'4GIauTHS8lVJ', N'Allam', N'30327 Gina Point', N'+62 962 518 5875', N'logo-small.png', N'720-72-6797')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'8', N'3', N'mantoshin7@twitpic.com', N'kJ2ApaQijuN', N'Antoshin', N'06426 Waxwing Street', N'+351 135 576 5851', N'logo-small.png', N'211-15-9403')
INSERT [dbo].[KhachHang] ([IDKH], [IDType], [Email], [Password], [TenKH], [DiaChi], [DienThoai], [Avt], [Cmnd]) VALUES (N'9', N'3', N'baskey8@ucla.edu', N'qUo1OpvogT', N'Askey', N'323 Holmberg Avenue', N'+261 807 549 5987', N'https://robohash.org/rerumutnumquam.png?size=50x50&set=set1', N'488-45-0861')
GO
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (N'16C', N'16 Chỗ    ')
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (N'4C', N'4 chỗ     ')
INSERT [dbo].[LoaiXe] ([IDLoaiXe], [TenLoaiXe]) VALUES (N'7C', N'7 chỗ     ')
GO
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDType], [Email], [Password], [TenNv], [DienThoai], [DiaChi], [Cmnd], [Avt]) VALUES (N'NV01', N'1', N'giahuyngh16@gmail.com', N'123456    ', N'Nguyen Gia Huy Admin', N'0332554108', N'123 Luy Ban Bich', N'123456', N'logo-small.png')
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDType], [Email], [Password], [TenNv], [DienThoai], [DiaChi], [Cmnd], [Avt]) VALUES (N'NV02', N'2', N'giahuyngh17@gmail.com', N'123456    ', N'Nguyen Gia Huy Staff', N'0000000000', N'123 LLB', N'111111', N'icon.png')
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDType], [Email], [Password], [TenNv], [DienThoai], [DiaChi], [Cmnd], [Avt]) VALUES (N'NV03', N'2', N'giahuyngh18@gmail.com', N'12345     ', N'Nguyễn Gia ', N'1111111', N'123aaaaaa', N'111111111', N'logo-small.png')
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDType], [Email], [Password], [TenNv], [DienThoai], [DiaChi], [Cmnd], [Avt]) VALUES (N'NV04', N'2', N'giahuyngh19@gmail.com', N'123456    ', N'Nguyễn', N'1111111', N'123aaaaaa', N'111111', N'logo-small.png')
INSERT [dbo].[NhanVien] ([IDNhanVien], [IDType], [Email], [Password], [TenNv], [DienThoai], [DiaChi], [Cmnd], [Avt]) VALUES (N'NV05', N'2', N'giahuyngh118@gmail.com', N'123456    ', N'Nguy', N'1111111', N'123aaaaaa', N'111111', N'z2241471267391_f8431dde620df6bb361624993d19a309.jpg')
GO
INSERT [dbo].[TypeAcc] ([IDType], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[TypeAcc] ([IDType], [Name]) VALUES (N'2', N'Staff')
INSERT [dbo].[TypeAcc] ([IDType], [Name]) VALUES (N'3', N'User')
GO
INSERT [dbo].[Xe] ([IDXe], [IDHangXe], [IDLoaiXe], [TenXe], [BienSo], [GiaXe], [MoTa], [TinhTrang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [LoaiNhienLieu], [HopSo]) VALUES (N'HD01', N'HD', N'4C', N'Honda Civicccccc', N'59A-11123', 1000000, N'Xe còn mới ', 1, N'innova.jpg', NULL, NULL, N'Xăng', N'Tự động')
INSERT [dbo].[Xe] ([IDXe], [IDHangXe], [IDLoaiXe], [TenXe], [BienSo], [GiaXe], [MoTa], [TinhTrang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [LoaiNhienLieu], [HopSo]) VALUES (N'HD02', N'HD', N'4C', N'Honda City', N'59A-32135', 8000000, N'Xe cũ', 1, NULL, NULL, NULL, N'Xăng', N'Tự động')
INSERT [dbo].[Xe] ([IDXe], [IDHangXe], [IDLoaiXe], [TenXe], [BienSo], [GiaXe], [MoTa], [TinhTrang], [HinhAnh1], [HinhAnh2], [HinhAnh3], [LoaiNhienLieu], [HopSo]) VALUES (N'TYT01', N'TYT', N'7C', N'Innova', N'59H-12663', 1100000, N'Xe đời 2015', 1, N'innova.jpg', N'innova.jpg', N'innova.jpg', N'Dầu ', N'Số sàn')
GO
ALTER TABLE [dbo].[ChitietDG]  WITH CHECK ADD  CONSTRAINT [FK_ChitietDG_ChitietDG] FOREIGN KEY([IDKH])
REFERENCES [dbo].[KhachHang] ([IDKH])
GO
ALTER TABLE [dbo].[ChitietDG] CHECK CONSTRAINT [FK_ChitietDG_ChitietDG]
GO
ALTER TABLE [dbo].[ChitietDG]  WITH CHECK ADD  CONSTRAINT [FK_ChitietDG_Xe] FOREIGN KEY([IDXe])
REFERENCES [dbo].[Xe] ([IDXe])
GO
ALTER TABLE [dbo].[ChitietDG] CHECK CONSTRAINT [FK_ChitietDG_Xe]
GO
ALTER TABLE [dbo].[CTBAOCAO]  WITH CHECK ADD  CONSTRAINT [FK_CTBAOCAO_BaoCao] FOREIGN KEY([IDBaoCao])
REFERENCES [dbo].[BaoCao] ([IDBaoCao])
GO
ALTER TABLE [dbo].[CTBAOCAO] CHECK CONSTRAINT [FK_CTBAOCAO_BaoCao]
GO
ALTER TABLE [dbo].[CTBAOCAO]  WITH CHECK ADD  CONSTRAINT [FK_CTBAOCAO_HopDong] FOREIGN KEY([IDHopDong])
REFERENCES [dbo].[HopDong] ([IDHopDong])
GO
ALTER TABLE [dbo].[CTBAOCAO] CHECK CONSTRAINT [FK_CTBAOCAO_HopDong]
GO
ALTER TABLE [dbo].[DatXe]  WITH CHECK ADD  CONSTRAINT [FK_DatXe_KhachHang] FOREIGN KEY([IDKH])
REFERENCES [dbo].[KhachHang] ([IDKH])
GO
ALTER TABLE [dbo].[DatXe] CHECK CONSTRAINT [FK_DatXe_KhachHang]
GO
ALTER TABLE [dbo].[DatXe]  WITH CHECK ADD  CONSTRAINT [FK_DatXe_ThanhToan] FOREIGN KEY([IDThanhToan])
REFERENCES [dbo].[ThanhToan] ([IDThanhToan])
GO
ALTER TABLE [dbo].[DatXe] CHECK CONSTRAINT [FK_DatXe_ThanhToan]
GO
ALTER TABLE [dbo].[DatXe]  WITH CHECK ADD  CONSTRAINT [FK_DatXe_Xe] FOREIGN KEY([IDXe])
REFERENCES [dbo].[Xe] ([IDXe])
GO
ALTER TABLE [dbo].[DatXe] CHECK CONSTRAINT [FK_DatXe_Xe]
GO
ALTER TABLE [dbo].[DoanhThu]  WITH CHECK ADD  CONSTRAINT [FK_DoanhThu_BaoCao] FOREIGN KEY([IDBaoCao])
REFERENCES [dbo].[BaoCao] ([IDBaoCao])
GO
ALTER TABLE [dbo].[DoanhThu] CHECK CONSTRAINT [FK_DoanhThu_BaoCao]
GO
ALTER TABLE [dbo].[HopDong]  WITH CHECK ADD  CONSTRAINT [FK_HopDong_DatXe] FOREIGN KEY([IDDatXe])
REFERENCES [dbo].[DatXe] ([IDDatXe])
GO
ALTER TABLE [dbo].[HopDong] CHECK CONSTRAINT [FK_HopDong_DatXe]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TypeAcc] FOREIGN KEY([IDType])
REFERENCES [dbo].[TypeAcc] ([IDType])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_TypeAcc]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TypeAcc] FOREIGN KEY([IDType])
REFERENCES [dbo].[TypeAcc] ([IDType])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TypeAcc]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [FK_Xe_LoaiXe] FOREIGN KEY([IDLoaiXe])
REFERENCES [dbo].[LoaiXe] ([IDLoaiXe])
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [FK_Xe_LoaiXe]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [FK_Xe_Xe] FOREIGN KEY([IDHangXe])
REFERENCES [dbo].[HangXe] ([IDHangXe])
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [FK_Xe_Xe]
GO
