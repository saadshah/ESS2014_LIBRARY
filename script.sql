USE [library_system]
GO
/****** Object:  Table [dbo].[STUDENT_INFO]    Script Date: 05/06/2014 10:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT_INFO](
	[STUDENT_ID] [nvarchar](10) NOT NULL,
	[FIRST_NAME] [nvarchar](150) NULL,
	[LAST_NAME] [nvarchar](150) NULL,
	[CLASS_NO] [nvarchar](10) NULL,
	[D_O_B] [datetime] NULL,
	[ADDRESS] [nvarchar](150) NULL,
	[MOB_NO] [nvarchar](20) NULL,
	[E_MAIL] [nvarchar](200) NULL,
	[STUDENT_LEVEL] [nvarchar](50) NULL,
 CONSTRAINT [PK_STUDENTInfo_1] PRIMARY KEY CLUSTERED 
(
	[STUDENT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGIN_INFO]    Script Date: 05/06/2014 10:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGIN_INFO](
	[LOGIN_ID] [nvarchar](10) NOT NULL,
	[STUDENT_ID] [nvarchar](10) NULL,
	[PASSWORD] [nvarchar](15) NULL,
	[Password_hint] [nvarchar](50) NOT NULL,
	[Last_Login] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[LOGIN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAN]    Script Date: 05/06/2014 10:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAN](
	[LOAN_ID] [nvarchar](10) NOT NULL,
	[Book_ID] [nvarchar](10) NOT NULL,
	[STUDENT_ID] [nvarchar](10) NOT NULL,
	[EMAIL] [nvarchar](200) NULL,
	[RETURNING_DATE] [datetime] NULL,
	[REMARKS] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOKS]    Script Date: 05/06/2014 10:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKS](
	[BOOK_ID] [int] NOT NULL,
	[AUTHOR_ID] [int] NULL,
	[TITLE] [nvarchar](150) NULL,
	[CHAPETRS] [nvarchar](150) NULL,
	[PAGES] [nvarchar](150) NULL,
	[EDITION] [nvarchar](150) NULL,
	[PUBLISHER_ID] [nvarchar](150) NULL,
	[SHELF_NO] [nvarchar](150) NULL,
	[LANGUAGE] [nvarchar](150) NULL,
	[QUANTITY] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AUTHOR_PUBLISHER_INFORMATION]    Script Date: 05/06/2014 10:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUTHOR_PUBLISHER_INFORMATION](
	[PUBLISHER_ID] [nvarchar](10) NOT NULL,
	[ADDRESS] [nvarchar](150) NULL,
	[PHONE] [nvarchar](20) NULL,
	[EMAIL] [nvarchar](200) NULL,
	[AUTHOR_NAME] [nvarchar](200) NULL,
	[CONTACT_NO] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Default [DF__BOOKS__TITLE__286302EC]    Script Date: 05/06/2014 10:45:02 ******/
ALTER TABLE [dbo].[BOOKS] ADD  DEFAULT ('') FOR [TITLE]
GO
/****** Object:  Default [DF__BOOKS__CHAPETRS__29572725]    Script Date: 05/06/2014 10:45:02 ******/
ALTER TABLE [dbo].[BOOKS] ADD  DEFAULT ('') FOR [CHAPETRS]
GO
/****** Object:  Default [DF__BOOKS__PAGES__2A4B4B5E]    Script Date: 05/06/2014 10:45:02 ******/
ALTER TABLE [dbo].[BOOKS] ADD  DEFAULT ('') FOR [PAGES]
GO
/****** Object:  Default [DF__BOOKS__EDITION__2B3F6F97]    Script Date: 05/06/2014 10:45:02 ******/
ALTER TABLE [dbo].[BOOKS] ADD  DEFAULT ('') FOR [EDITION]
GO
/****** Object:  Default [DF__BOOKS__PUBLISHER__2C3393D0]    Script Date: 05/06/2014 10:45:02 ******/
ALTER TABLE [dbo].[BOOKS] ADD  DEFAULT ('') FOR [PUBLISHER_ID]
GO
/****** Object:  Default [DF__BOOKS__SHELF_NO__2D27B809]    Script Date: 05/06/2014 10:45:02 ******/
ALTER TABLE [dbo].[BOOKS] ADD  DEFAULT ('') FOR [SHELF_NO]
GO
/****** Object:  Default [DF__BOOKS__LANGUAGE__2E1BDC42]    Script Date: 05/06/2014 10:45:02 ******/
ALTER TABLE [dbo].[BOOKS] ADD  DEFAULT ('') FOR [LANGUAGE]
GO
/****** Object:  Default [DF__BOOKS__QUANTITY__2F10007B]    Script Date: 05/06/2014 10:45:02 ******/
ALTER TABLE [dbo].[BOOKS] ADD  DEFAULT ((0)) FOR [QUANTITY]
GO
/****** Object:  Default [DF_Users_Last_Login]    Script Date: 05/06/2014 10:45:02 ******/
ALTER TABLE [dbo].[LOGIN_INFO] ADD  CONSTRAINT [DF_Users_Last_Login]  DEFAULT (getdate()) FOR [Last_Login]
GO
