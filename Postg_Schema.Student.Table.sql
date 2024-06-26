USE [Postgrad]
GO
/****** Object:  Table [Postg_Schema].[Student]    Script Date: 08/05/2024 11:43:21 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Postg_Schema].[Student](
	[id] [int] NOT NULL,
	[Fname] [varchar](20) NOT NULL,
	[Mname] [varchar](20) NOT NULL,
	[Lname] [varchar](20) NOT NULL,
	[birthdate] [date] NOT NULL,
	[GPA] [decimal](3, 2) NOT NULL,
	[email] [varchar](50) NULL,
	[Gender] [varchar](10) NOT NULL,
	[D_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Postg_Schema].[Student]  WITH CHECK ADD  CONSTRAINT [FK_StuDep] FOREIGN KEY([D_id])
REFERENCES [Postg_Schema].[department] ([id])
GO
ALTER TABLE [Postg_Schema].[Student] CHECK CONSTRAINT [FK_StuDep]
GO
