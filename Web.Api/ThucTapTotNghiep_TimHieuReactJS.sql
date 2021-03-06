USE [QLBH]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/11/2022 7:36:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/11/2022 7:36:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 1/11/2022 7:36:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_product] [int] NULL,
	[path] [varchar](50) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 1/11/2022 7:36:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cat_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
	[price] [decimal](18, 0) NULL,
	[softDelete] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220107143648_initdb', N'5.0.13')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Apple')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Samsung')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Xiaomi')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Oppo')
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'ASUS')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (1, 1, N'1_1.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (2, 1, N'1_2.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (3, 2, N'2_1.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (4, 2, N'2_1.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (5, 3, N'0393cded-933a-4743-8f66-43d8c6312068.png')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (6, 4, N'b4318bd3-5883-46a4-a4d3-92d34c8f5c16.png')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (7, 5, N'4545b032-943a-4ed1-b34f-9f7f93a2b1d2.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (8, 5, N'f1d06ffb-c49b-4f82-aaa3-573fdbc2c350.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (9, 5, N'66517189-f03e-41ea-8e67-8cdbe0071bc2.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (10, 5, N'2da77107-0709-465b-a245-e2e31ff33558.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (11, 6, N'f93220d6-5555-4768-b1ff-ac3141e2d25c.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (12, 6, N'90cb5bbc-e2b7-4c93-ad8d-d13910161e97.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (13, 6, N'cfdb0136-2e88-4c00-84e1-587b24a18853.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (14, 6, N'882ce96d-4ea8-4758-9375-17752df5f172.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (15, 6, N'a21fd108-1455-406a-b2d9-e67734b7658f.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (16, 7, N'64a13521-2340-494a-84cb-e90fcff3b9ba.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (17, 7, N'67be98b8-4b22-4dbc-808a-d594c99cef12.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (18, 7, N'04090a2c-0dd4-48c2-b99a-764af3e3f24b.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (19, 7, N'b90b9c03-4b87-4e3b-a0b3-26bed65e3154.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (20, 7, N'400810a7-7cb1-4555-b4c7-a69eac748ee1.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (21, 8, N'c8fe0c6b-a874-4296-b2e3-f47103afd548.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (22, 8, N'75bd72f1-2085-4f82-ba28-04a54f0a3530.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (23, 8, N'b9f0b0a3-2851-4757-9373-ab10d9f96c7e.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (24, 8, N'0ac20031-b252-415c-b38d-72eea4b95889.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (25, 9, N'386b739c-2813-4551-b1fa-4456959da77d.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (26, 9, N'f2ce9896-f3bf-42f3-b39e-5786ae4c4678.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (27, 9, N'844ed945-4db5-420a-817e-0fec1a8fc5b2.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (28, 9, N'48ee8894-6506-491c-bb5c-2eac014cf3b1.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (29, 10, N'40757fe9-faae-47a0-9932-8874cc094227.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (30, 10, N'e61e01d5-1fc4-447a-af67-d4d3d6a8f4ee.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (31, 11, N'26f7478f-481e-4317-b56b-75b95f3bf3fd.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (32, 11, N'5a2afa32-9f5c-449e-99fb-4e063295777e.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (33, 11, N'bc11149b-fb4e-467f-9c6e-f81a747339e8.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (34, 11, N'705a377f-374e-4147-9e4e-686bc4261361.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (35, 11, N'787bbba5-abd9-4c69-b18d-074f4027ba7e.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (36, 11, N'cb161201-e849-48eb-a5b5-59e10cd5cd72.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (37, 12, N'9c1a0396-74d4-4c7c-a284-c0da76ac9e8f.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (38, 12, N'c6c28fb8-4ccb-466d-9a6d-9736441cc3a5.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (39, 12, N'33123fa4-7bd0-4af2-ba63-8a253cf596bf.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (40, 13, N'11870d3e-b79d-4a65-a39c-8bc3b48885fa.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (41, 13, N'ad1c22ad-b303-4496-900a-b9bdd086af26.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (42, 13, N'83e9f17b-833e-4add-a69f-94c6dfc5bc90.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (43, 14, N'18844f07-dddb-451c-8e91-1fed9d6bbdac.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (44, 14, N'816d966e-7e92-4adc-96d1-4a919f8f0b21.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (45, 14, N'50f49658-e45c-4758-b89f-18a107ca4803.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (46, 15, N'4fd3be72-0b1f-4e4a-8fb4-756e60594ac7.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (47, 15, N'3547cf59-9569-4eae-b16a-d396868e9cbb.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (48, 15, N'd1c168e3-ee0b-48ea-a84f-8f7e13d10ea3.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (49, 16, N'1197b503-7530-4af5-9f24-736f746bdec0.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (50, 16, N'1ca2817f-a58f-4263-a0de-3e85c5b98f89.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (51, 16, N'5b16c4ed-08a7-42ee-9c7d-d33b4b68a13a.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (52, 17, N'5ee120e4-88b5-42c7-88d3-42f370338166.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (53, 17, N'8eaf5084-62cf-4c90-bbf6-1b67eca1f22b.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (54, 17, N'd7d57a81-9bc2-4a37-a444-c2befefee4a5.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (55, 18, N'638246b3-ee1a-48db-acf4-72ff8e6dab32.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (56, 18, N'e87564e0-44d1-4674-867f-1d1e52737498.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (57, 18, N'c4930340-929b-4ddf-85e2-7259e51f4f51.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (58, 19, N'93a4042e-9d96-411b-ac9e-cdbaade2434b.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (59, 19, N'73d2f4b6-a2d1-4a4c-9665-46aafa310f2d.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (60, 19, N'287d66b0-363a-4a2e-ba4b-b1a7e541002c.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (61, 20, N'4af60760-af03-464d-a889-c4ef05437994.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (62, 20, N'520b713d-b229-42ec-a696-3a834225c0cc.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (63, 21, N'ce6c0188-a1d6-4a2a-ba6e-991230578163.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (64, 21, N'94259dc0-186b-4c08-bf18-55d64c62b4ab.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (65, 21, N'3e35d32f-2469-4ad3-b6fd-173b671b36e0.jpg')
INSERT [dbo].[Image] ([id], [id_product], [path]) VALUES (66, 22, N'a0d0c0a6-1260-460e-8370-25ecd5c0e2a2.jpg')
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (1, 1, N'iPhone 13 Pro Max 256GB I Chính hãng VN/A', N'iPhone 13 Pro Max 256GB được đánh giá là một trong những dòng iPhone có khả năng chụp ảnh siêu ấn tượng cùng với camera góc siêu rộng mang đến khả năng chụp ảnh thiếu sáng một cách đặc biệt. Không những thế, mà dòng iPhone này còn được đánh giá là có dung lượng bộ nhớ tốt, đáp ứng được đầy đủ các công việc hằng ngày Xem thêm thông tin iPhone 13 Pro Max 512GB thiết kế đẳng cấp, mang lại trải nghiệm vượt trội cho người dùng', CAST(33500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (2, 3, N'Xiaomi Mi 11 5G 128GB', N'Làm chủ mọi khung hình - Bộ 3 camera sau 108 MP, camera selfie 20 MP
Hiệu năng vượt trội, xử lý cực nhanh - Chip Snapdragon 888 cao cấp, 8 GB RAM LPDDR5
Thiết kế thời thượng đi đầu xu hướng - Hoàn thiện thiết kế siêu mỏng từ kim loại và kính cường lực
Hiển thị rõ ràng, sắc nét - Màn hình tràn viền AMOLED 6.81 inch, 120Hz
Sáng tạo chuyên nghiệp mọi lúc, mọi nơi - Cụm 3 camera sau 108 MP, camera selfie 20 MP, chống rung quang học', CAST(14200000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (3, 2, N'samsung', N'sasdasd', CAST(213144 AS Decimal(18, 0)), 1)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (4, 1, N'iPhone 13 128GB | Chính hãng VN/A', N'Về kích thước, iPhone 13 sẽ có 4 phiên bản khác nhau và kích thước không đổi so với series iPhone 12 hiện tại. Nếu iPhone 12 có sự thay đổi trong thiết kế từ góc cạnh bo tròn (Thiết kế được duy trì từ thời iPhone 6 đến iPhone 11 Pro Max) sang thiết kế vuông vắn (đã từng có mặt trên iPhone 4 đến iPhone 5S, SE).

Thì trên điện thoại iPhone 13 vẫn được duy trì một thiết kế tương tự. Máy vẫn có phiên bản khung viền thép, một số phiên bản khung nhôm cùng mặt lưng kính. Tương tự năm ngoái, Apple cũng sẽ cho ra mắt 4 phiên bản là iPhone 13, 13 mini, 13 Pro và 13 Pro Max.

', CAST(1199999997 AS Decimal(18, 0)), 1)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (5, 2, N'Samsung Galaxy Z Flip3 5G', N'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp - Thiết kế gập mở vỏ sò, khung nhôm aluminum chắc chắn
Màn hình kép ấn tượng - Màn hình chính: 6.7", màn hình phụ: 1.9" AMOLED
Hệ thống camera siêu ấn tượng - Bộ 3 ống kính camera 12MP, camera selfie sắc nét
Hiệu năng ấn tượng, làm chủ tốc độ - Snapdragon 888 kết hợp RAM 8GB, hỗ trợ 5G', CAST(23000000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (6, 5, N'ASUS ROG Phone 5 chính hãng', N'Chinh phạt mọi giới hạn - Snapdragon 888 mạnh mẽ, RAM LPDDR5, bộ nhớ UFS 3.1
Hiển thị đẳng cấp - Màn hình AMOLED tần số quét 144Hz, phản hồi 1ms, kính Gorilla Victus
Tính năng dành cho game thủ - Cảm ứng đa điểm AirTrigger 5, loa kép chất lượng
Chiến game bất tận - Pin khủng 6000mAh, sạc siêu tốc 65W', CAST(18990000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (7, 2, N'Samsung Galaxy A72', N'Giải trí điện ảnh chất lượng - Màn hình Super AMOLED tần số quét 90Hz, độ sáng cao 800 nit.
Bắt trọng khoảnh khắc sắc nét - Bộ camera 64MP, hỗ trợ chống rung 2 camera, Zoom xa 30X
An toàn khi sử dụng - Kháng nước, kháng bụi IP67
Hiệu năng ưu việt, đa nhiệm dễ dàng - Snapdragon 720G 8 nhân, RAM 8GB.', CAST(10100000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (8, 4, N'Oppo A94', N'Không bỏ lỡ bất kỳ khoảnh khắc - Quay video hiển thị kép cả camera trước và sau
Trải nghiệm hình ảnh sắc nét, hiệu suất mượt mà - Helio P95 8 nhân, NPU tốc độ cao hỗ trợ AI, RAM 8GB
Sẵn sàng để sử dụng - Pin lớn 4310mAh, sạc nhanh 30W
Trải nghiệm thị giá mượt mà - Màn hình AMOLED 6.43 inch, mở khóa vân tay trong màn hình, chế độ bảo vệ mắt AI', CAST(6290000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (9, 4, N'OPPO A95', N'Thiết kế mỏng nhẹ hiện đại - Mỏng chỉ 7.95mm, nhẹ chỉ 175g, màu sắc sành điệu
Hiển thị sắc nét mọi khung hình - Màn hình Super AMOLED FullHD+ 6.43"
Vi xử lý mạnh mẽ - Chip Snapdragon 662, RAM 8GB
Trọn vẹn từng khoảng khắc - Cụm camera sau lên đến 48MP, xoá phông chuyên nghiệp', CAST(6490000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (10, 4, N'Oppo Reno5 5G', N'Tạo phước thim ấn tượng - Video hiển thị kép, phơi sang kép
Sạc 5 phút, 4 giờ sử dụng - Sạc nhanh SuperVOOC 65W
Hình ảnh mượt mà, phản hồi nhanh chóng - Màn hình AMOLED sắc nét, tần số quét 90Hz
Hiệu suất mạnh mẽ, trải nghiệm liền mạch - Snapdragon 765G hỗ trợ 5G, RAM 8GB
Thiết kế tinh tế, độc đáo - Lớp phủ cao cấp chống bám dính, thể hiện rực rỡ với màu sắc độc đáo
Tạo nên bức ảnh và video ấn tượng hơn - Camera trước 44MP siêu nét, bộ tứ camera 64MP đa năng', CAST(9990000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (11, 4, N'OPPO Reno6 5G', N'Thiết kế ấn tượng, màu sắc cá tính - Thiết kế tràn viền, mỏng nhẹ chỉ 182g
Tăng tốc kết nối, dẫn đầu xu hướng - Dimensity 900 5G (6 nm) mạnh mẽ, kết nối 5G siêu nhanh
Chuyên gia nhiếp ảnh chân dung - Bộ 3 camera lên tới 64 MP, sắc nét, ấn tượng
Màn hình lớn, sắc nét với tốc độ làm mới cao - Màn hình AMOLED 6.43 inch Full HD, 90Hz
Dung lượng pin lớn, công nghệ sạc nhanh hiện đại - Viên pin 4300mAh, sạc nhanh 65W', CAST(12990000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (12, 4, N'OPPO Find X3 Pro 5G', N'Thiết kế hoàn thiện nguyên khối, bền bỉ - Thiết kế nhôm nguyên khối sang trọng, chống chọi lực va đập hiệu quả
Màn hình sắc nét, hiển thị màu sắc rực rỡ - Màn hình 6.7" AMOLED đạt chuẩn 2K, 120Hz, hiển thị 1 tỷ màu
Cấu hình mạnh mẽ, chiến game cực đỉnh - Bộ vi xử lý Snapdragon 888, 12GB RAM và 256GB bộ nhớ trong
Camera chụp ảnh ấn tượng, chống rung ổn định - Bộ 4 camera lên đến 50MP, hỗ trợ HDR và tối ưu chụp đêm sắc nét
Dung lượng pin khá lớn đi kèm nhiều tiện ích - Viên pin dung lượng 4500 mAh, sạc nhanh 65W, sạc không dây 30W', CAST(19290000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (13, 1, N'iPhone 12 Pro 128GB I Chính hãng VN/A', N'Mạnh mẽ, siêu nhanh với chip A14, RAM 6GB, mạng 5G tốc độ cao
Rực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision
Chụp ảnh siêu đỉnh - Night Mode , thuật toán Deep Fusion, Smart HDR 3, camera LiDar
Bền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', CAST(26200000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (14, 1, N'iPhone 12 mini 64GB I Chính hãng VN/A', N'Mạnh mẽ, siêu nhanh với chip A14, RAM 4GB, mạng 5G tốc độ cao
Rực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision
Chụp đêm ấn tượng - Night Mode cho 2 camera, thuật toán Deep Fusion, Smart HDR 3
Bền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', CAST(15500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (15, 1, N'iPhone 12 mini 128GB I Chính hãng VN/A', N'Mạnh mẽ, siêu nhanh với chip A14, RAM 4GB, mạng 5G tốc độ cao
Rực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision
Chụp đêm ấn tượng - Night Mode cho 2 camera, thuật toán Deep Fusion, Smart HDR 3
Bền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', CAST(16800000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (16, 1, N'iPhone 12 Pro 256GB I Chính hãng VN/A', N'Mạnh mẽ, siêu nhanh với chip A14, RAM 6GB, mạng 5G tốc độ cao
Rực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision
Chụp ảnh siêu đỉnh - Night Mode , thuật toán Deep Fusion, Smart HDR 3, camera LiDar
Bền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', CAST(27500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (17, 2, N'Samsung Galaxy Note 20 Ultra 5G', N'Sang trọng, cao cấp - Màu sắc độc đáo và cuốn hút
Chụp ảnh chuyên nghiệp - Bộ 3 camera hỗ trợ Zoom xa đến 30X
Ghi chú nhanh chóng, chính xác với bút S- Pen thế hệ mới
Chơi game đỉnh cao - Exynos 990 7nm mạnh mẽ, hiệu năng xử lý vượt trội', CAST(21000000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (18, 2, N'Samsung Galaxy S21 Ultra 5G 256GB', N'Giải trí đỉnh cao - Màn hình AMOLED 6.8 inch, độ phân giải 2K, tần số quét cao 120Hz
Chụp ảnh, quay video siêu nét - 4 camera mạnh mẽ, quay phim 8K, quay phim siêu chống rung.
Tốc độ vượt trội, chơi game đỉnh cao - Exynos 2100 8 nhân 5nm, RAM 8GB, bộ nhớ tốc độ cao UFS 3.1
Trải nghiệm thả ga - Pin 5000mAh, hỗ trợ sạc nhanh lên đến 25W, công nghệ pin thông minh', CAST(27500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (19, 2, N'Samsung Galaxy S21 Plus 5G', N'Màn hình siêu ấn tượng - Tấm nền 6.7 inch AMOLED, tần số quét 120Hz
Chụp ảnh, quay video siêu nét - Cụm 3 camera mạnh mẽ, quay phim 8K, quay phim siêu chống rung.
Tốc độ vượt trội, chơi game đỉnh cao - Exynos 2100 8 nhân 5nm, RAM 8GB, bộ nhớ tốc độ cao UFS 3.1
Kết nối siêu tốc và ổn định - Mạng 5G thế hệ mới, Wifi 6 tốc độ cao', CAST(24500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (20, 2, N'Samsung Galaxy Z Fold3 5G', N'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp - Thiết kế gập mở, chất liệu cao cấp, bản lề chắc chắn
Màn hình kép ấn tượng - Màn hình chính 7.9" và màn hình phụ: 6.23", 120Hz chuyển động mượt mà
Hệ thống camera siêu ấn tượng - Bộ 3 ống kính camera 12MP, camera selfie ẩn dưới màn hình
Hiệu năng ấn tượng, làm chủ tốc độ - Snapdragon 888 kết hợp RAM 12GB, hỗ trợ 5G', CAST(40500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (21, 2, N'Samsung Galaxy A52s 5G', N'Hiệu năng ưu việt, đa nhiệm mạnh mẽ - Chip xử lí Snapdragon 778G 5G và RAM 8GB
Màn hình sắc nét, chuyển động mượt mà - Màn hình Super AMOLED 6.5" chuẩn FHD+
Bắt trọn khung hình sắc nét - Cụm 4 camera sau chất lượng lên đến 64MP, chống rung ổn định
Pin ấn tượng cho trải nghiệm thả ga - Pin 4500 mAh, sạc nhanh 25W, công nghệ tiết kiệm pin thông minh', CAST(9650000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Product] ([id], [cat_id], [name], [description], [price], [softDelete]) VALUES (22, 3, N'degoo', N'dep', CAST(100000000 AS Decimal(18, 0)), 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [softDelete]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([id_product])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([cat_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
