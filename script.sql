USE [remainder]
GO
/****** Object:  Table [dbo].[tbl_newevent]    Script Date: 09/17/2018 19:09:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_newevent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ename] [varchar](max) NOT NULL,
	[edate] [varchar](max) NOT NULL,
	[starttime] [varchar](max) NOT NULL,
	[endtime] [varchar](max) NOT NULL,
	[elocation] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_newevent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spoperations]    Script Date: 09/17/2018 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE procedure [dbo].[spoperations]
	@flag int='',
	@eid int='',
	@name varchar(max)='',
	@edate varchar(max)='',
	@starttime varchar(max)='',
	@endtime varchar(max)='',
	@loc varchar(max)=''
	
AS
BEGIN
	if(@flag=0)
	begin
	insert into dbo.tbl_newevent values(@name,@edate,@starttime,@endtime,@loc);
	end
	
	if(@flag=1)
	begin
	
	select * from dbo.tbl_newevent order by edate asc;
	end
	
	if(@flag=2)
	begin
	
	delete from dbo.tbl_newevent where id=@eid;
	end
	
	if(@flag=3)
	begin
	
	update dbo.tbl_newevent set ename=@name,edate=@edate,starttime=@starttime,endtime=@endtime,elocation=@loc where id=@eid;
	end
	
	
	if(@flag=4)
	begin
	
	select * from dbo.tbl_newevent where edate=@edate order by edate;
	end
END
GO
