USE [SAMPLE]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-----------------------------------------------------
-- Creating Users Table
-----------------------------------------------------

CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Skills] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__Users_Userid] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, 
IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

-----------------------------------------------------
-- Creating Skills Table
-----------------------------------------------------

CREATE TABLE [dbo].[tblSkill](
	[Id] [int] NOT NULL,
	[Skill] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Skills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC ,[Skill]
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-----------------------------------------------
----INSERTS SOME TEST DATA
-----------------------------------------------

INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User1','C#,ASP.NET')
INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User2','C#,JAVA,SQL,ORACLE')
INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User3','C#,SQL,JAVA')
INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User4','C#,SQL')
INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User5','C#,ASP.NET')
INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User6','C#,JAVA')
INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User7','C#,PHP')
INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User8','C#')
INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User8','C#,XML')
INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User9','C#,JQUERY,BOOTSTRAP')
INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User10','C#,LINQ')
INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User12','C#,VB.NET')
INSERT INTO [dbo].[Users]   ([FirstName] ,[LastName] ,[Skills])      VALUES('Test','User1','C#')

GO

INSERT INTO [dbo].[tblSkill]  ([Id],[Skill]) VALUES ('1','SQL')
INSERT INTO [dbo].[tblSkill]  ([Id],[Skill]) VALUES ('2','C#')
INSERT INTO [dbo].[tblSkill]  ([Id],[Skill]) VALUES ('3','JAVA')
INSERT INTO [dbo].[tblSkill]  ([Id],[Skill]) VALUES ('4','ORACLE')
INSERT INTO [dbo].[tblSkill]  ([Id],[Skill]) VALUES ('5','XML')
INSERT INTO [dbo].[tblSkill]  ([Id],[Skill]) VALUES ('6','LINQ')
INSERT INTO [dbo].[tblSkill]  ([Id],[Skill]) VALUES ('7','VB.NET')
INSERT INTO [dbo].[tblSkill]  ([Id],[Skill]) VALUES ('8','BOOTSTRAP')
INSERT INTO [dbo].[tblSkill]  ([Id],[Skill]) VALUES ('9','JQUERY')
INSERT INTO [dbo].[tblSkill]  ([Id],[Skill]) VALUES ('10','ASP.NET')
