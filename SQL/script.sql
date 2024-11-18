USE [petShop_db]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idStatus] [int] NULL,
	[composition] [nvarchar](100) NULL,
	[dateOfOrder] [date] NULL,
	[dateOfDelivery] [date] NULL,
	[point] [int] NULL,
	[lname] [nvarchar](100) NULL,
	[fname] [nvarchar](100) NULL,
	[patro] [nvarchar](100) NULL,
	[code] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Point]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Point](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[indexNumber] [nvarchar](100) NULL,
	[idCity] [int] NULL,
	[idStreet] [int] NULL,
	[number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[producerName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productTypeId] [int] NULL,
	[quantityTypeId] [int] NULL,
	[cost] [int] NULL,
	[maxDiscount] [int] NULL,
	[producerId] [int] NULL,
	[supplierId] [int] NULL,
	[categoryId] [int] NULL,
	[currentDiscount] [int] NULL,
	[amount] [int] NULL,
	[description] [nvarchar](200) NULL,
	[image] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productTypeName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuantityType]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuantityType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantityTypeName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[statusName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[streetName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplierName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 18.11.2024 7:43:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idRoles] [int] NULL,
	[lname] [nvarchar](100) NULL,
	[fnaem] [nvarchar](100) NULL,
	[patro] [nvarchar](100) NULL,
	[login] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [categoryName]) VALUES (1, N'Для животных')
INSERT [dbo].[Category] ([id], [categoryName]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[Category] ([id], [categoryName]) VALUES (3, N'Товары для собак')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([id], [CityName]) VALUES (1, N'г. Нефтеюганск')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [idStatus], [composition], [dateOfOrder], [dateOfDelivery], [point], [lname], [fname], [patro], [code]) VALUES (1, 2, N'А112Т4, 15, G453T5, 1', CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, NULL, NULL, 601)
INSERT [dbo].[Orders] ([id], [idStatus], [composition], [dateOfOrder], [dateOfDelivery], [point], [lname], [fname], [patro], [code]) VALUES (2, 2, N'F432F4, 15, Y324F4, 15', CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, NULL, NULL, 602)
INSERT [dbo].[Orders] ([id], [idStatus], [composition], [dateOfOrder], [dateOfDelivery], [point], [lname], [fname], [patro], [code]) VALUES (3, 1, N'E532Q5, 10, T432F4, 10', CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, N'Шилова', N'Майя', N'Артемьевна', 603)
INSERT [dbo].[Orders] ([id], [idStatus], [composition], [dateOfOrder], [dateOfDelivery], [point], [lname], [fname], [patro], [code]) VALUES (4, 1, N'G345E4, 1, E345R4, 2', CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, NULL, NULL, 604)
INSERT [dbo].[Orders] ([id], [idStatus], [composition], [dateOfOrder], [dateOfDelivery], [point], [lname], [fname], [patro], [code]) VALUES (5, 1, N'R356F4, 1, E431R5, 10', CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, NULL, NULL, 605)
INSERT [dbo].[Orders] ([id], [idStatus], [composition], [dateOfOrder], [dateOfDelivery], [point], [lname], [fname], [patro], [code]) VALUES (6, 1, N'H436R4, 1, D643B5, 1', CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, N'Филимонов', N'Роберт', N'Васильевич', 606)
INSERT [dbo].[Orders] ([id], [idStatus], [composition], [dateOfOrder], [dateOfDelivery], [point], [lname], [fname], [patro], [code]) VALUES (7, 2, N'H342F5, 2, Q245F5, 2', CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, NULL, NULL, 607)
INSERT [dbo].[Orders] ([id], [idStatus], [composition], [dateOfOrder], [dateOfDelivery], [point], [lname], [fname], [patro], [code]) VALUES (8, 2, N'K436T5, 1, V527T5, 1', CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, NULL, NULL, 608)
INSERT [dbo].[Orders] ([id], [idStatus], [composition], [dateOfOrder], [dateOfDelivery], [point], [lname], [fname], [patro], [code]) VALUES (9, 2, N'V527T5, 1, K452T5, 1', CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, N'Волкова', N'Эмилия', N'Артёмовна', 609)
INSERT [dbo].[Orders] ([id], [idStatus], [composition], [dateOfOrder], [dateOfDelivery], [point], [lname], [fname], [patro], [code]) VALUES (10, 1, N'M356R4, 1, W548O7, 1', CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, N'Чистякова', N'Виктория', N'Степановна', 610)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Point] ON 

INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (1, N'344288', 1, 28, 1)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (2, N'614164', 1, 25, 30)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (3, N'394242', 1, 7, 43)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (4, N'660540', 1, 23, 25)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (5, N'125837', 1, 30, 40)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (6, N'125703', 1, 16, 49)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (7, N'625283', 1, 17, 46)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (8, N'614611', 1, 11, 50)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (9, N'454311', 1, 14, 19)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (10, N'660007', 1, 15, 19)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (11, N'603036', 1, 20, 4)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (12, N'450983', 1, 8, 26)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (13, N'394782', 1, 28, 3)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (14, N'603002', 1, 4, 28)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (15, N'450558', 1, 12, 30)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (16, N'394060', 1, 26, 43)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (17, N'410661', 1, 29, 50)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (18, N'625590', 1, 7, 20)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (19, N'625683', 1, 1, NULL)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (20, N'400562', 1, 5, 32)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (21, N'614510', 1, 9, 47)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (22, N'410542', 1, 21, 46)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (23, N'620839', 1, 27, 8)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (24, N'443890', 1, 7, 1)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (25, N'603379', 1, 24, 46)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (26, N'603721', 1, 3, 41)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (27, N'410172', 1, 22, 13)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (28, N'420151', 1, 2, 32)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (29, N'125061', 1, 18, 8)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (30, N'630370', 1, 30, 24)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (31, N'614753', 1, 19, 35)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (32, N'426030', 1, 9, 44)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (33, N'450375', 1, 6, 44)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (34, N'625560', 1, 13, 12)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (35, N'630201', 1, 8, 17)
INSERT [dbo].[Point] ([id], [indexNumber], [idCity], [idStreet], [number]) VALUES (36, N'190949', 1, 10, 26)
SET IDENTITY_INSERT [dbo].[Point] OFF
GO
SET IDENTITY_INSERT [dbo].[Producer] ON 

INSERT [dbo].[Producer] ([id], [producerName]) VALUES (1, N'Cat Chow')
INSERT [dbo].[Producer] ([id], [producerName]) VALUES (2, N'Chappy')
INSERT [dbo].[Producer] ([id], [producerName]) VALUES (3, N'Dog Chow')
INSERT [dbo].[Producer] ([id], [producerName]) VALUES (4, N'Dreames')
INSERT [dbo].[Producer] ([id], [producerName]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[Producer] ([id], [producerName]) VALUES (6, N'LIKER')
INSERT [dbo].[Producer] ([id], [producerName]) VALUES (7, N'Nobby')
INSERT [dbo].[Producer] ([id], [producerName]) VALUES (8, N'Pro Plan')
INSERT [dbo].[Producer] ([id], [producerName]) VALUES (9, N'TitBit')
INSERT [dbo].[Producer] ([id], [producerName]) VALUES (10, N'Triol')
INSERT [dbo].[Producer] ([id], [producerName]) VALUES (11, N'trixie')
INSERT [dbo].[Producer] ([id], [producerName]) VALUES (12, N'True Touch')
INSERT [dbo].[Producer] ([id], [producerName]) VALUES (13, N'ZooM')
SET IDENTITY_INSERT [dbo].[Producer] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (1, 3, 1, 123, 30, 4, 1, 2, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png')
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (2, 8, 1, 149, 15, 12, 2, 1, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg')
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (3, 7, 1, 1200, 10, 8, 2, 2, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg')
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (4, 3, 1, 86, 5, 9, 1, 3, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg')
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (5, 3, 1, 166, 15, 9, 1, 3, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg')
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (6, 7, 1, 1700, 25, 2, 2, 3, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg')
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (7, 6, 1, 300, 5, 6, 2, 3, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg')
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (8, 1, 1, 199, 5, 5, 2, 2, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg')
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (9, 5, 1, 234, 10, 7, 1, 3, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg')
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (10, 3, 1, 170, 5, 10, 2, 3, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png')
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (11, 1, 1, 600, 10, 10, 1, 3, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (12, 1, 1, 300, 15, 10, 1, 3, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (13, 7, 1, 4100, 30, 1, 1, 2, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (14, 5, 1, 385, 10, 10, 2, 1, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (15, 7, 1, 280, 15, 1, 2, 2, 3, 8, N'Сухой корм для кошек CAT CHOW', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (16, 7, 1, 1700, 25, 2, 1, 3, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (17, 1, 1, 510, 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (18, 1, 1, 510, 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (19, 7, 1, 2190, 30, 8, 1, 3, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (20, 3, 1, 177, 15, 10, 2, 3, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (21, 6, 1, 100, 5, 10, 2, 3, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (22, 1, 1, 640, 5, 10, 1, 3, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (23, 4, 1, 800, 25, 13, 2, 3, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (24, 2, 1, 3500, 30, 10, 2, 3, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (25, 5, 1, 400, 15, 10, 2, 1, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (26, 5, 1, 292, 25, 10, 1, 1, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (27, 6, 1, 600, 15, 11, 1, 3, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (28, 3, 1, 140, 20, 9, 2, 3, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (29, 3, 1, 50, 5, 9, 2, 3, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', NULL)
INSERT [dbo].[Products] ([id], [productTypeId], [quantityTypeId], [cost], [maxDiscount], [producerId], [supplierId], [categoryId], [currentDiscount], [amount], [description], [image]) VALUES (30, 7, 1, 600, 15, 3, 1, 3, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([id], [productTypeName]) VALUES (1, N'Игрушка')
INSERT [dbo].[ProductType] ([id], [productTypeName]) VALUES (2, N'Клетка')
INSERT [dbo].[ProductType] ([id], [productTypeName]) VALUES (3, N'Лакомство')
INSERT [dbo].[ProductType] ([id], [productTypeName]) VALUES (4, N'Лежак')
INSERT [dbo].[ProductType] ([id], [productTypeName]) VALUES (5, N'Миска')
INSERT [dbo].[ProductType] ([id], [productTypeName]) VALUES (6, N'Мячик')
INSERT [dbo].[ProductType] ([id], [productTypeName]) VALUES (7, N'Сухой корм')
INSERT [dbo].[ProductType] ([id], [productTypeName]) VALUES (8, N'Щетка-варежка')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[QuantityType] ON 

INSERT [dbo].[QuantityType] ([id], [quantityTypeName]) VALUES (1, N'шт.')
SET IDENTITY_INSERT [dbo].[QuantityType] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id], [roleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Roles] ([id], [roleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Roles] ([id], [roleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([id], [statusName]) VALUES (1, N'Завершен')
INSERT [dbo].[Status] ([id], [statusName]) VALUES (2, N'Новый ')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([id], [streetName]) VALUES (1, N'ул. 8 Марта')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (2, N'ул. Вишневая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (3, N'ул. Гоголя')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (4, N'ул. Дзержинского')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (5, N'ул. Зеленая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (6, N'ул. Клубная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (7, N'ул. Коммунистическая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (8, N'ул. Комсомольская')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (9, N'ул. Маяковского')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (10, N'ул. Мичурина')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (11, N'ул. Молодежная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (12, N'ул. Набережная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (13, N'ул. Некрасова')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (14, N'ул. Новая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (15, N'ул. Октябрьская')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (16, N'ул. Партизанская')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (17, N'ул. Победы')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (18, N'ул. Подгорная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (19, N'ул. Полевая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (20, N'ул. Садовая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (21, N'ул. Светлая')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (22, N'ул. Северная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (23, N'ул. Солнечная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (24, N'ул. Спортивная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (25, N'ул. Степная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (26, N'ул. Фрунзе')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (27, N'ул. Цветочная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (28, N'ул. Чехова')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (29, N'ул. Школьная')
INSERT [dbo].[Street] ([id], [streetName]) VALUES (30, N'ул. Шоссейная')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([id], [supplierName]) VALUES (1, N'PetShop')
INSERT [dbo].[Supplier] ([id], [supplierName]) VALUES (2, N'ZooMir')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [idRoles], [lname], [fnaem], [patro], [login], [password]) VALUES (1, 1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG')
INSERT [dbo].[Users] ([id], [idRoles], [lname], [fnaem], [patro], [login], [password]) VALUES (2, 1, N'Яковлева', N'Ярослава', N'Даниэльевна', N'"deummecillummu-4992@mail.ru', NULL)
INSERT [dbo].[Users] ([id], [idRoles], [lname], [fnaem], [patro], [login], [password]) VALUES (3, 1, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp')
INSERT [dbo].[Users] ([id], [idRoles], [lname], [fnaem], [patro], [login], [password]) VALUES (4, 3, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR')
INSERT [dbo].[Users] ([id], [idRoles], [lname], [fnaem], [patro], [login], [password]) VALUES (5, 3, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv')
INSERT [dbo].[Users] ([id], [idRoles], [lname], [fnaem], [patro], [login], [password]) VALUES (6, 3, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9')
INSERT [dbo].[Users] ([id], [idRoles], [lname], [fnaem], [patro], [login], [password]) VALUES (7, 2, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos')
INSERT [dbo].[Users] ([id], [idRoles], [lname], [fnaem], [patro], [login], [password]) VALUES (8, 2, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT')
INSERT [dbo].[Users] ([id], [idRoles], [lname], [fnaem], [patro], [login], [password]) VALUES (9, 2, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr')
INSERT [dbo].[Users] ([id], [idRoles], [lname], [fnaem], [patro], [login], [password]) VALUES (10, 2, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Status] FOREIGN KEY([idStatus])
REFERENCES [dbo].[Status] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Status]
GO
ALTER TABLE [dbo].[Point]  WITH CHECK ADD  CONSTRAINT [FK_Point_City] FOREIGN KEY([idCity])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[Point] CHECK CONSTRAINT [FK_Point_City]
GO
ALTER TABLE [dbo].[Point]  WITH CHECK ADD  CONSTRAINT [FK_Point_Street] FOREIGN KEY([idStreet])
REFERENCES [dbo].[Street] ([id])
GO
ALTER TABLE [dbo].[Point] CHECK CONSTRAINT [FK_Point_Street]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Producer] FOREIGN KEY([producerId])
REFERENCES [dbo].[Producer] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Producer]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductType] FOREIGN KEY([productTypeId])
REFERENCES [dbo].[ProductType] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductType]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_QuantityType] FOREIGN KEY([quantityTypeId])
REFERENCES [dbo].[QuantityType] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_QuantityType]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Supplier] FOREIGN KEY([supplierId])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Supplier]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([idRoles])
REFERENCES [dbo].[Roles] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
