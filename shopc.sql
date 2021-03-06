USE [ShopC]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/17/2022 3:42:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/17/2022 3:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/17/2022 3:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/17/2022 3:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [nvarchar](150) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Phở')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Cơm Suất')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Rau')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Nước giải khát')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Món ăn kèm')
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (1, N'Phở Bò', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fthanhnien.vn%2Fpho-viet-phu-khap-nuoc-my-sao-pho-sai-gon-duoc-tay-yeu-thich-post964943.html&psig=AOvVaw2idq5CcOWvY-I-YSv-lEHv&ust=1647547031093000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMCJlou1y_YCFQAAAAAdAAAAABAD', 50, 3.0000, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (2, N'Phở Gà', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftrivietphat.net%2Fcach-nau-gia-vi-pho-ga-vua-ngon-vua-ngon-tai-nha%2F&psig=AOvVaw13Qci1q__-Y6nwStVbyWhc&ust=1647547107420000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIjo3Ky1y_YCFQAAAAAdAAAAABAD', 50, 3.0000, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (3, N'Phở Tim cật', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fnghienbep.com%2Freview-quan-an-dem-mi-tim-ca%25CC%25A3%25CC%2582t-30k-dong-da.html&psig=AOvVaw1SRjJoLLOOGtpT_sFWVCCw&ust=1647547222340000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKCzwOS1y_YCFQAAAAAdAAAAABB_', 50, 3.0000, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (4, N'Phở Thập cẩm', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.foody.vn%2Fho-chi-minh%2Ftim-kiem%2Fph%25E1%25BB%259F-th%25E1%25BA%25ADp-c%25E1%25BA%25A9m&psig=AOvVaw0Xy0U8Wsnrh76eCHc9vvbd&ust=1647547425977000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOjkzMe2y_YCFQAAAAAdAAAAABBR', 50, 3.0000, 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (5, N'Cơm Rang', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.24h.com.vn%2Fam-thuc%2Fbua-sang-chac-da-voi-com-chien-ca-hoi-mem-toi-bo-duong-c460a922648.html&psig=AOvVaw2LcqepgGZX6L19r_GmIzfE&ust=1647547536912000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKjkyPm2y_YCFQAAAAAdAAAAABAT', 10, 3.5000, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (6, N'Cơm Sườn', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fvinpearl.com%2Fvi%2Flap-team-can-quet-11-quan-com-tam-ngon-o-sai-gon&psig=AOvVaw2DZ8x5zKeuGrpXDaydBPgX&ust=1647547709184000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIjPosq3y_YCFQAAAAAdAAAAABAD', 20, 3.5000, 2)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (7, N'Rau muống', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcomtambason.com%2Fproduct%2Frau-muong-xao-toi%2F&psig=AOvVaw2nh2VLEMtcmt2R1aqF_QCe&ust=1647547788041000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPjA6PG3y_YCFQAAAAAdAAAAABAD', 10, 1.0000, 3)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (8, N'Dưa chua', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Feva.vn%2Fbep-eva%2Fcach-muoi-dua-gion-ngon-lai-vang-ruom-dep-mat-c162a392735.html&psig=AOvVaw3IVQVoRHELhQrC2UfTSz30&ust=1647547834922000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCODS-Ya4y_YCFQAAAAAdAAAAABAD', 10, 1.5000, 3)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (9, N'Rau cải bắp', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fphunutoday.vn%2Fluoc-bap-cai-cung-thu-nay-bap-cai-vua-ngon-vua-gion-lai-tang-gap-doi-chat-dinh-duong-d233113.html&psig=AOvVaw3Q285nBq9RK99PcYyQgdBi&ust=1647547891600000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOCutKG4y_YCFQAAAAAdAAAAABAD', 10, 1.0000, 3)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (10, N'Coca', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Faeoneshop.com%2Fproducts%2Fnuoc-ngot-co-gas-coca-sleek-lon-330ml&psig=AOvVaw3kjEpqVKtTGyn7ZO0yeOTG&ust=1647547930643000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCICbjLS4y_YCFQAAAAAdAAAAABAD', 30, 1.0000, 4)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (11, N'pepsi', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fmonamimart.com%2Fnuoc-ngot-pepsi-thai-lon-330ml&psig=AOvVaw3G8d89D-ftYtMuE808SzzD&ust=1647547963022000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCICorsO4y_YCFQAAAAAdAAAAABAJ', 30, 1.0000, 4)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (12, N'Nước đào', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bachhoaxanh.com%2Fnuoc-ep-trai-cay%2Fnuoc-ice-vi-dao-490ml&psig=AOvVaw3CQqCuWL8I4kHpr_D2iW-I&ust=1647547989941000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOjkmdK4y_YCFQAAAAAdAAAAABAD', 30, 1.0000, 4)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (13, N'Nước cam', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fnhanvan.vn%2Fproducts%2Fnuoc-ep-cam-twister-tropicana-320ml-lon&psig=AOvVaw1L2d6iVxMqQS4d69AzlO6B&ust=1647548018457000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCJjz6924y_YCFQAAAAAdAAAAABAD', 30, 1.0000, 4)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (14, N'Bò Húc', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fmrfoods.vn%2Fnuoc-tang-luc-redbull-250ml&psig=AOvVaw1ldtwEnokLN4HjDYP_y1p1&ust=1647548215247000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCICWwLy5y_YCFQAAAAAdAAAAABAD', 30, 1.5000, 4)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (15, N'Bò xào giá', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fphunutoday.vn%2Fthit-bo-xao-voi-gia-do-da-ngon-nhung-cho-them-thuc-rau-nay-vao-dinh-duong-se-tang-gap-boi-d239469.html&psig=AOvVaw0Q3b6dFjlDwOy1S73MKuJ2&ust=1647548298002000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNDBkuS5y_YCFQAAAAAdAAAAABAK', 15, 10.0000, 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (16, N'Đậu Phụ rán', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dienmayxanh.com%2Fvao-bep%2Fcach-chon-mua-cach-chien-dau-hu-gion-ngon-lau-vang-ruom-khong-09714&psig=AOvVaw35KEvCHkbRqaP3By-bcRVx&ust=1647548350706000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKjpzPy5y_YCFQAAAAAdAAAAABAD', 15, 2.0000, 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (17, N'Cá rán', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fsoha.vn%2Flan-sau-ran-ca-chi-em-cu-cho-them-1-thia-gia-vi-nay-vao-dam-bao-khong-bi-ban-dau-ma-mon-ca-ran-thi-ngon-bat-bai-2018092614312122.htm&psig=AOvVaw1TK4hpNeyEY1BnacC7LCN2&ust=1647548393763000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNCG7JK6y_YCFQAAAAAdAAAAABAD', 10, 5.5000, 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (18, N'Trứng ốp la', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fyummyday.vn%2Fbanh-mi-op-la-1029&psig=AOvVaw0VzjSFBEc7R1DNhnffVS58&ust=1647548456165000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIDYy666y_YCFQAAAAAdAAAAABAD', 30, 1.0000, 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (19, N'Thị lợn rang', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftuvaobep.com%2Fcach-lam-mon-thit-lon-rang-chay-canh%2F&psig=AOvVaw0h4japxrw9pkzj4zQOQwIQ&ust=1647548556858000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKi6g9-6y_YCFQAAAAAdAAAAABAD', 20, 3.0000, 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [Image], [Quantity], [Price], [CategoryID]) VALUES (20, N'Cơm thêm', N'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dienmayxanh.com%2Fvao-bep%2Ftai-sao-phai-bao-quan-com-dung-cach-cach-bao-quan-com-nguoi-14780&psig=AOvVaw029AI9aOZRhza8pvPxA4P2&ust=1647548603754000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOjYmfe6y_YCFQAAAAAdAAAAABAD', 20, 1.0000, 5)
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Custumer')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Admin')
GO
INSERT [dbo].[User] ([UserID], [Name], [Password], [RoleID]) VALUES (N'HE130951', N'Vang Viet Cuong', N'123', 2)
INSERT [dbo].[User] ([UserID], [Name], [Password], [RoleID]) VALUES (N'SE111111', N'Nguyen Truc Nhan', N'123', 1)
INSERT [dbo].[User] ([UserID], [Name], [Password], [RoleID]) VALUES (N'SE123123', N'Bui Duy Tri', N'123', 1)
INSERT [dbo].[User] ([UserID], [Name], [Password], [RoleID]) VALUES (N'tes2', N'heheee', N'123', 1)
INSERT [dbo].[User] ([UserID], [Name], [Password], [RoleID]) VALUES (N'test1', N'hhaaa', N'123', 1)
INSERT [dbo].[User] ([UserID], [Name], [Password], [RoleID]) VALUES (N'test3 ', N'u9u9', N'123', 1)
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
