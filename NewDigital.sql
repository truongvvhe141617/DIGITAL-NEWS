USE [NewDigital]
GO
/****** Object:  Table [dbo].[Digital]    Script Date: 8/6/2021 10:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Digital](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[description] [nvarchar](4000) NULL,
	[image] [nvarchar](4000) NULL,
	[author] [nvarchar](1000) NULL,
	[timePost] [date] NULL,
	[shortDes] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Digital] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Digital] ON 

INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (1, N'Hà Nội: Từ 12h trưa 25/5 dừng hoạt động nhà hàng ăn uống, cắt tóc, gội đầu', N'Từ 12h ngày mai (25/5), TP quyết định tạm dừng hoạt động một số cơ sở kinh doanh dịch vụ để đảm bảo phòng, chống dịch bệnh Covid-19 đến khi có thông báo mới. Cụ thể: Nhà hàng, cơ sở dịch vụ ăn, uống tại chỗ (chỉ cho phép bán hàng mang về), không tổ chức ăn uống, liên hoan tập trung đông người; các cửa hàng cắt tóc, gội đầu.

Thực hiện dừng triệt để hoạt động vui chơi, tập thể dục, tụ tập đông người tại công viên, vườn hoa và các địa điểm công cộng.

Chủ tịch UBND TP yêu cầu, đẩy mạnh công tác tuyên truyền hiệu quả hơn, nhanh hơn bằng nhiều hình thức thiết thực, phát huy tuyên truyền trên loa truyền thanh xã, phường, các khu chung cư, trên không gian mạng.', N'https://image.thanhnien.vn/1080/uploaded/hieplv/2020_04_24/93840220_298396991153116_3440539142222512128_n_pgsr.jpg', N'Truong', CAST(N'2021-05-24' AS Date), N'Giám sát, quản lý chặt chẽ việc cách ly y tế tại cộng đồng, tuyệt đối không để xảy ra các ca bệnh mới phát sinh tại cộng đồng.

Thần tốc, truy vết, cách ly, khoanh vùng, tổ chức xét nghiệm nhanh, kịp thời để sàng lọc khi có ca bệnh mới phát sinh.

Người đứng đầu UBND TP yêu cầu, tất cả người dân từ các tỉnh, thành khác trở về Hà Nội: Thời điểm từ ngày 10-24/5 đều phải khai báo y tế trên website http://tokhaiyte.vn và các ứng dụng NCOVI, Bluezone, hoàn thành chậm nhất trong ngày 25/5.')
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (2, N'Hoài Linh: Tôi không biển thủ 14 tỷ tiền quyên góp từ thiện', N'Trong video gửi đến báo VietNamNet, Hoài Linh cho biết đúng ra sau khi hoàn thành hoạt động từ thiện mới báo cáo nhưng nay thấy cần thiết phải lên tiếng sớm về việc mình đã làm.

Anh nói hiện đã liên hệ các địa phương và sẽ tiếp tục thực hiện công việc của mình đến khi nào hết số tiền 14 tỷ đồng. Số tiền này sẽ đến đúng người dân chịu thiệt hại của thiên tai. Sau video này, anh sẽ báo cáo với đầy đủ chứng từ, giấy xác nhận,... của chính quyền địa phương.', N'https://vnn-imgs-f.vgcloud.vn/2021/05/24/19/hoai-linh-toi-khong-danh-doi-30-nam-su-nghiep-de-bien-thu-tien-quyen-gop-tu-thien-2.jpg', N'Digital News Asia', CAST(N'2021-05-06' AS Date), N'Trao đổi với Zing, nam danh hài chia sẻ: "Tôi cũng muốn trở lại game show nhưng sẽ ưu tiên chọn chương trình có tính bảo tồn, nhân văn. Với game show vui chơi thì có lẽ đã qua tuổi của mình rồi". Anh khẳng định sự hạn chế nhận game show không đồng nghĩa với việc dừng nghệ thuật.')
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (3, N'Sếp du lịch đi nấu bia, ship tận nhà cho khách: Biết bao giờ về lại nghề chính
', N'“Người tiêu dùng Việt Nam nghĩ khẩu trang có màu xanh, màu trắng, 3 lớp hay 4 lớp là khẩu trang y tế nhưng thực tế không phải. Khẩu trang phải có các tiêu chí: lọc được virus, lọc được bụi mịn, kháng máu. Ba chỉ tiêu trên gần như công ty nào cũng đạt, nhưng chỉ tiêu cuối cùng là áp suất thở thì không nhiều công ty làm được, trừ khẩu trang do chúng tôi sản xuất. Áp suất thở chính là việc người dùng đeo khẩu trang giao tiếp không bị cảm giác ngạt”, ông Long phân tích.', N'https://vnn-imgs-f.vgcloud.vn/2021/05/19/10/khau-trang-2.jpg', N'Digital News Asia', CAST(N'2021-05-11' AS Date), N'Bán nhà, bán tài sản để tập trung đầu tư vào hướng đi mới là một quyết định không dễ dàng đối với vị Tổng giám đốc này. Số tiền bỏ ra đầu tư để chủ động nguồn nguyên liệu, mua sắm dây chuyền sản xuất khẩu trang đến giờ đã lên tới hàng trăm tỷ đồng. Để khẩu trang thương hiệu Ecom Med có mặt được tại các cơ sở y tế ở Mỹ như hiện tại thì doanh nghiệp phải trải qua những tháng ngày “chảy máu mắt”, theo lời ông Long mô tả')
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (4, N'Nga cáo buộc Mỹ vi phạm hiệp ước vũ khí hạt nhân', N'Trong một tuyên bố được đưa ra hôm 24/5, Bộ Ngoại giao Nga cho biết khoảng 56 bệ phóng tên lửa, 41 oanh tạc cơ hạng nặng, và 4 hầm chứa tên lửa của Mỹ đã bị loại khỏi danh sách vũ khí được Washington công khai, và Moscow chưa thể xác nhận rằng chúng có khả năng mang theo vũ khí hạt nhân hay không. 

Do đó, tuyên bố cho rằng Mỹ đang có khoảng 101 bệ phóng tên lửa và oanh tạc cơ vượt quá số lượng cho phép theo Hiệp ước Cắt giảm Vũ khí Chiến lược Mới (gọi tắt là New START).', N'https://vnn-imgs-f.vgcloud.vn/2021/05/24/22/nga-cao-buoc-my-vi-pham-hiep-uoc-vu-khi-hat-nhan.jpg', N'Digital News Asia', CAST(N'2021-05-10' AS Date), N'Tuyên bố của Bộ Ngoại giao Nga được đưa ra trong bối cảnh Nga và Mỹ đang cố thúc đẩy việc tổ chức hội nghị thượng đỉnh giữa Tổng thống Vladimir Putin và người đồng cấp Mỹ Joe Biden vào tháng tới, bất chấp mối quan hệ căng thẳng giữa hai nước. ')
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (11, N'Không công bố danh tính, lịch trình di chuyển bệnh nhân CoviD-19', N'Ngày 21/5, Bộ Y tế đã có văn bản đề nghị các đơn vị cung cấp thông tin cho báo chí kịp thời, chuẩn xác về diễn biến của dịch bệnh Covid-19.

Đặc biệt, không công bố cho báo chí danh tính, chi tiết về lịch trình di chuyển và chi tiết quá trình tiếp xúc bệnh nhân.

Đây là động thái của Bộ Y tế một ngày sau khi Bộ Thông tin và Truyền thông (TT&TT) có đề nghị.

Theo Bộ TT&TT, ngay từ khi dịch bệnh Covid-19 xuất hiện tại Việt Nam, công tác chỉ đạo, định hướng và bảo đảm cung cấp thông tin cho cơ quan báo chí đã đuợc Bộ Y tế, Bộ TT&TT cùng các cơ quan tiên quan phối hợp thực hiện bài bản, chuyên nghiệp. ', N'https://vnn-imgs-f.vgcloud.vn/2021/05/24/12/ca-covid-19-moi.jpg', N'Hussin', CAST(N'2021-05-07' AS Date), N'Bộ Y tế yêu cầu chỉ công bố, khuyến cáo các địa điểm đến có nguy cơ về dịch tễ (nơi đã từng có người dương tính với Covid-19 đến) đến người dân từng di chuyển, tiếp xúc tại các khu vực đó thực hiện các biện pháp tự bảo vệ chính mình và những người xung quanh theo hướng dẫn của ngành y tế.')
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (12, N'Công Phượng lập cú đúp, tuyển Việt Nam thắng U22', N'Tối 24/5, tuyển Việt Nam có trận đấu tập nội bộ với U22 Việt Nam. Đây là bài test cuối cùng của HLV Park Hang Seo trước khi rút gọn danh sách tuyển Việt Nam. Ông thầy người Hàn Quốc sẽ loại 10 cầu thủ, mang 27 cầu thủ sang UAE tham dự vòng loại World Cup 2022 khu vực châu Á.

HLV Park Hang Seo tiếp tục cho 2 đội đấu tập 2 trận để đánh giá được hết năng lực, phong độ các cầu thủ. Những trường hợp bị đau trước đó như Nguyễn Hoàng Đức, Lương Xuân Trường, Nguyễn Tiến Linh, Đỗ Duy Mạnh đều thầy Park tung vào sân.', N'https://vnn-imgs-f.vgcloud.vn/2021/05/18/21/tuyen-viet-nam-4.jpg', N'Dr Rais Hussin', CAST(N'2021-02-01' AS Date), N'Trong ngày 24/5, Chủ tịch VFF Lê Khánh Hải đã tới thăm và động viên tinh thần tuyển Việt Nam, trước khi toàn đội lên đường sang UAE tập huấn và thi đấu 3 trận còn lại trong khuôn khổ vòng loại thứ hai World Cup 2022 khu vực châu Á.')
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (13, N'1 ''chọi'' gần 30 để vào lớp 10 chuyên Anh ở Hà Nội', N'Năm học 2021 - 2022, Trường THPT Chuyên ĐH Sư phạm tuyển 305 chỉ tiêu lớp 10 hệ chuyên gồm các lớp Toán, Tin học, Vật lý, Hóa học, Sinh học, Ngữ văn và Tiếng Anh... Trong đó, khối chuyên Toán là 70 chỉ tiêu, Tiếng Anh 60 chỉ tiêu, các khối chuyên còn lại mỗi khối 35 chỉ tiêu.

Theo thống kê đến hết thời hạn đăng ký, số lượng hồ sơ đăng ký thi vào lớp 10 nộp về Trường THPT Chuyên ĐH Sư phạm năm nay là 5.095, trong đó nhiều nhất là số dự thi khối chuyên tiếng Anh.

Cụ thể, với 1782 hồ sơ đăng ký dự thi, trong khi số chỉ tiêu chỉ là 60, tỷ lệ chọi của khối chuyên Anh lên đến 1/29,7.', N'https://vnn-imgs-f.vgcloud.vn/2021/05/24/18/ty-le-choi-chuyen-su-pham-nam-2021.jpg', N'AAAAAAAA', CAST(N'2021-05-09' AS Date), N'Do diễn biến phức tạp của dịch Covid-19, Trường THPT Chuyên ĐH Sư phạm vừa ra thông báo tạm hoãn tổ chức kỳ thi tuyển sinh vào lớp 10 năm học 2021-2022 (trước đó, trường dự kiến thi vào ngày 2 - 3/6)')
INSERT [dbo].[Digital] ([id], [title], [description], [image], [author], [timePost], [shortDes]) VALUES (14, N'TP Hải Dương không cho tập trung quá 2 người tại nơi công cộng', N'Theo đó, kể từ 0h ngày 25/5, 10 phường ở TP Hải Dương sẽ thực hiện cách ly xã hội theo Chỉ thị 16: Trần Phú, Lê Thanh Nghị, Hải Tân, Nguyễn Trãi, Trần Hưng Đạo, Phạm Ngũ Lão, Quang Trung, Thanh Bình, Tân Bình và Ngọc Châu. 

Trong đó, thành phố yêu cầu nhà cách ly với nhà; không tập trung quá 2 người ngoài phạm vi công sở, trường học, bệnh viện và tại nơi công cộng; yêu cầu người dân ở nhà, chỉ ra ngoài trong trường hợp thật cần thiết; thực hiện nghiêm thông điệp 5K của Bộ Y tế.', N'https://vnn-imgs-f.vgcloud.vn/2021/05/24/15/cong-an-lam-ro-hanh-vi.jpg', N'OUT', CAST(N'2021-05-09' AS Date), N'Thành phố tạm dừng hoạt động các chợ: Bắc Kinh, Con, Chi Lăng và chợ tạm Phú Yên. Các chợ còn lại thực hiện việc phân vùng và phát phiếu đi chợ theo ngày chẵn, lẻ; chỉ cho bán lương thực thực phẩm trong các chợ.')
SET IDENTITY_INSERT [dbo].[Digital] OFF
GO
