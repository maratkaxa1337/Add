CREATE DATABASE [dbcomputer]

USE [dbcomputer]

GO

CREATE TABLE [Role] (

[RoleID]	NCHAR(1)		NOT NULL,
[Title]		NVARCHAR(30)	NOT NULL,
CONSTRAINT PK_Role_RoleID PRIMARY KEY ([RoleID])

)

GO
INSERT [Role] ([RoleID], [Title]) VALUES ('A', 'Администратор')
INSERT [Role] ([RoleID], [Title]) VALUES ('U', 'Пользователь')


CREATE TABLE [SignIn] (

[ID]		INT IDENTITY (0, 1),
[Username]	NVARCHAR(30)		NOT NULL,
[Password]	NVARCHAR(30)		NOT NULL,
[IDRole]	NCHAR(1) CONSTRAINT FK_SignIn_IDRole_Role_RoleID FOREIGN KEY REFERENCES [Role] ([RoleID])
)

GO
INSERT [SignIn] ([Username], [Password], [IDRole]) VALUES ('marat','1234','A')
INSERT [SignIn] ([Username], [Password], [IDRole]) VALUES ('kaxa','1234','U')

--------------------------------------------------------------------------------------------

CREATE TABLE [Person] (

[ID]			INT IDENTITY (0, 1),
[SurName]		NVARCHAR(30)		NOT NULL,
[FirstName]		NVARCHAR(30)		NOT NULL,
[Patronymic]	NVARCHAR(30)		NOT NULL,
[Phone]			NVARCHAR(11)		NOT NULL,
[Email]			NVARCHAR(30)		NOT NULL,
CONSTRAINT PK_Person_ID PRIMARY KEY ([ID])


)

GO



CREATE TABLE [Country] (

[CountryID]		NCHAR(3)		NOT NULL,
[CountryName]	NVARCHAR(30)	NOT NULL,
CONSTRAINT PK_Country_CountryID_Car_IDCountry PRIMARY KEY (CountryID)

)

GO


CREATE TABLE [Car] (

[ID]			INT IDENTITY(0, 1),
[Name]			NVARCHAR(30) NOT NULL,
[Mark]			NVARCHAR(30) NOT NULL,	
[Pic]			IMAGE		 NOT NULL,
[IDOwner]		INT				CONSTRAINT FK_Car_IDOwner_Person_ID FOREIGN KEY REFERENCES [Person] ([ID]),
[IDCountry]		NCHAR(3)		CONSTRAINT FK_Car_IDCountry_Country FOREIGN KEY REFERENCES	[Country] ([CountryID]),
CONSTRAINT PK_Car_ID PRIMARY KEY ([ID])

)

GO
INSERT  [Car] ([Name],[Mark],[Pic],[IDOwner],[IDCountry]) VALUES ('S222','Mersedes',CONVERT(varchar(max),'C:\Users\Администратор\Pictures\Picter/S222.jpg'), 1, 'GER')
SELECT * FROM Country
SELECT * FROM Car

--ALTER TABLE [Car] 
--ADD [IDOwner] CONSTRAINT FK_Car_IDOwner_Person_ID FOREIGN KEY REFERENCES [Car] ([ID])







