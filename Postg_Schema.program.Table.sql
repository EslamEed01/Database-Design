USE [Postgrad]
GO
/****** Object:  Table [Postg_Schema].[program]    Script Date: 08/05/2024 11:43:21 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Postg_Schema].[program](
	[id] [int] NOT NULL,
	[pre_code] [int] NOT NULL,
	[CreditPoint] [int] NOT NULL,
	[S_id] [int] NULL,
	[name] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Postg_Schema].[program]  WITH CHECK ADD  CONSTRAINT [FK_ProStu] FOREIGN KEY([S_id])
REFERENCES [Postg_Schema].[Student] ([id])
GO
ALTER TABLE [Postg_Schema].[program] CHECK CONSTRAINT [FK_ProStu]
GO
