USE [Postgrad]
GO
/****** Object:  Table [Postg_Schema].[Course]    Script Date: 08/05/2024 11:43:21 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Postg_Schema].[Course](
	[id] [int] NOT NULL,
	[pro_code] [int] NOT NULL,
	[CreditPoints] [int] NOT NULL,
	[D_id] [int] NULL,
	[S_id] [int] NULL,
	[P_id] [int] NULL,
	[I_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Postg_Schema].[Course]  WITH CHECK ADD  CONSTRAINT [FK_CourDe] FOREIGN KEY([D_id])
REFERENCES [Postg_Schema].[department] ([id])
GO
ALTER TABLE [Postg_Schema].[Course] CHECK CONSTRAINT [FK_CourDe]
GO
ALTER TABLE [Postg_Schema].[Course]  WITH CHECK ADD  CONSTRAINT [FK_CourIn] FOREIGN KEY([I_id])
REFERENCES [Postg_Schema].[Instructor] ([id])
GO
ALTER TABLE [Postg_Schema].[Course] CHECK CONSTRAINT [FK_CourIn]
GO
ALTER TABLE [Postg_Schema].[Course]  WITH CHECK ADD  CONSTRAINT [FK_ProCou] FOREIGN KEY([P_id])
REFERENCES [Postg_Schema].[program] ([id])
GO
ALTER TABLE [Postg_Schema].[Course] CHECK CONSTRAINT [FK_ProCou]
GO
ALTER TABLE [Postg_Schema].[Course]  WITH CHECK ADD  CONSTRAINT [FK_StuCour] FOREIGN KEY([S_id])
REFERENCES [Postg_Schema].[Student] ([id])
GO
ALTER TABLE [Postg_Schema].[Course] CHECK CONSTRAINT [FK_StuCour]
GO
