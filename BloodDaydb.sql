USE [BloodDay]
GO
/****** Object:  Table [dbo].[blood_donors]    Script Date: 8/7/2022 10:59:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blood_donors](
	[donor_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[ic] [nvarchar](50) NOT NULL,
	[gender] [tinyint] NOT NULL,
	[phone_no] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[blood_type] [nvarchar](50) NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_blood_donors] PRIMARY KEY CLUSTERED 
(
	[donor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[blood_donors] ON 

INSERT [dbo].[blood_donors] ([donor_id], [name], [ic], [gender], [phone_no], [email], [blood_type], [date]) VALUES (1, N'Yiaw Yep Shou', N'630202-VF-3338', 1, N'+604-047 6348', N'victor.zakuan@lim.com', N'O', CAST(N'2022-07-04' AS Date))
INSERT [dbo].[blood_donors] ([donor_id], [name], [ic], [gender], [phone_no], [email], [blood_type], [date]) VALUES (2, N'Wan Er Hee', N'610613-NT-3251', 0, N'+6013-291 7790', N'hiew.pooitan@gmail.com', N'A', CAST(N'2022-07-18' AS Date))
INSERT [dbo].[blood_donors] ([donor_id], [name], [ic], [gender], [phone_no], [email], [blood_type], [date]) VALUES (3, N'V. T. Kathiripillai', N'770407-UG-1730', 1, N'+6015-567 0355', N'janaky77@hotmail.com', N'AB', CAST(N'2022-07-18' AS Date))
INSERT [dbo].[blood_donors] ([donor_id], [name], [ic], [gender], [phone_no], [email], [blood_type], [date]) VALUES (4, N'Ahmad', N'001234567890', 0, N'+606-247 4177', N'Ahmad@gmail.com', N'AB', CAST(N'2022-08-15' AS Date))
INSERT [dbo].[blood_donors] ([donor_id], [name], [ic], [gender], [phone_no], [email], [blood_type], [date]) VALUES (5, N'Ali', N'001122334455', 0, N'+605-821 7099', N'kfazil@yahoo.com', N'B', CAST(N'2022-07-17' AS Date))
INSERT [dbo].[blood_donors] ([donor_id], [name], [ic], [gender], [phone_no], [email], [blood_type], [date]) VALUES (6, N'Abu', N'112233445566', 1, N'+6014-656 4828', N'uyeow@shum.com', N'O', CAST(N'2022-08-02' AS Date))
INSERT [dbo].[blood_donors] ([donor_id], [name], [ic], [gender], [phone_no], [email], [blood_type], [date]) VALUES (7, N'Ahkau', N'223344556677', 0, N'+6014-057 6349', N'Ahkau@gmail.com', N'AB', CAST(N'2022-07-20' AS Date))
INSERT [dbo].[blood_donors] ([donor_id], [name], [ic], [gender], [phone_no], [email], [blood_type], [date]) VALUES (8, N'AhChoo', N'334455667788', 1, N'+6016-257 4177', N'AhChoo@gmail.com', N'B', CAST(N'2022-08-22' AS Date))
INSERT [dbo].[blood_donors] ([donor_id], [name], [ic], [gender], [phone_no], [email], [blood_type], [date]) VALUES (9, N'AhChoo', N'334455667788', 1, N'+6016-257 4177', N'AhChoo@gmail.com', N'B', CAST(N'2022-08-22' AS Date))
INSERT [dbo].[blood_donors] ([donor_id], [name], [ic], [gender], [phone_no], [email], [blood_type], [date]) VALUES (10, N'AhChoo', N'334455667788', 1, N'+6016-257 4177', N'AhChoo@gmail.com', N'B', CAST(N'2022-08-22' AS Date))
INSERT [dbo].[blood_donors] ([donor_id], [name], [ic], [gender], [phone_no], [email], [blood_type], [date]) VALUES (11, N'AhMau', N'44556677889900', 1, N'+6016-567 0355', N'AhMau@yahoo.com', N'O', CAST(N'2022-07-19' AS Date))
INSERT [dbo].[blood_donors] ([donor_id], [name], [ic], [gender], [phone_no], [email], [blood_type], [date]) VALUES (15, N'Dr Shaidah', N'112233445566', 1, N'+6013-291 7790', N'SWEXMU.edu.my', N'A', NULL)
SET IDENTITY_INSERT [dbo].[blood_donors] OFF
GO
