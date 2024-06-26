USE [Postgrad]
GO
/****** Object:  Table [Postg_Schema].[department]    Script Date: 08/05/2024 11:43:21 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Postg_Schema].[department](
	[name] [varchar](20) NOT NULL,
	[id] [int] NOT NULL,
	[I_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Postg_Schema].[department]  WITH CHECK ADD  CONSTRAINT [FK_DepIn] FOREIGN KEY([I_id])
REFERENCES [Postg_Schema].[Instructor] ([id])
GO
ALTER TABLE [Postg_Schema].[department] CHECK CONSTRAINT [FK_DepIn]
GO
