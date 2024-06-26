USE [Postgrad]
GO
/****** Object:  Table [Postg_Schema].[Student_Phone]    Script Date: 08/05/2024 11:43:21 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Postg_Schema].[Student_Phone](
	[S_id] [int] NOT NULL,
	[Phone] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[S_id] ASC,
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Postg_Schema].[Student_Phone]  WITH CHECK ADD  CONSTRAINT [FK_CourDEp] FOREIGN KEY([S_id])
REFERENCES [Postg_Schema].[Student] ([id])
GO
ALTER TABLE [Postg_Schema].[Student_Phone] CHECK CONSTRAINT [FK_CourDEp]
GO
