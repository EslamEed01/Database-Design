USE [Postgrad]
GO
/****** Object:  Table [Postg_Schema].[stu_regs]    Script Date: 08/05/2024 11:43:21 م ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Postg_Schema].[stu_regs](
	[Re-id] [int] NOT NULL,
	[S_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Re-id] ASC,
	[S_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Postg_Schema].[stu_regs]  WITH CHECK ADD  CONSTRAINT [FK_rsg] FOREIGN KEY([S_id])
REFERENCES [Postg_Schema].[Student] ([id])
GO
ALTER TABLE [Postg_Schema].[stu_regs] CHECK CONSTRAINT [FK_rsg]
GO
ALTER TABLE [Postg_Schema].[stu_regs]  WITH CHECK ADD  CONSTRAINT [FK_sreg_reg] FOREIGN KEY([Re-id])
REFERENCES [Postg_Schema].[registration] ([id])
GO
ALTER TABLE [Postg_Schema].[stu_regs] CHECK CONSTRAINT [FK_sreg_reg]
GO
