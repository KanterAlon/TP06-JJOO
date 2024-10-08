USE [JJOO]
GO
/****** Object:  User [alumno]    Script Date: 15/8/2024 16:39:19 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Deportes]    Script Date: 15/8/2024 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportes](
	[IdDeporte] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
	[Foto] [text] NULL,
 CONSTRAINT [PK__Deportes__B5FFCC7D9B818B55] PRIMARY KEY CLUSTERED 
(
	[IdDeporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deportistas]    Script Date: 15/8/2024 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportistas](
	[IdDeportista] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](200) NULL,
	[Nombre] [varchar](200) NULL,
	[FechaNacimiento] [date] NULL,
	[Foto] [text] NULL,
	[IdPais] [int] NULL,
	[IdDeporte] [int] NULL,
 CONSTRAINT [PK__Deportis__9212E9412967A63B] PRIMARY KEY CLUSTERED 
(
	[IdDeportista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 15/8/2024 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NULL,
	[Bandera] [text] NULL,
	[FechaFundacion] [date] NULL,
 CONSTRAINT [PK__Paises__FC850A7B4A42BB67] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Deportes] ON 

INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (1, N'Atletismo', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (2, N'Natación', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (3, N'Fútbol', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (4, N'Baloncesto', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (5, N'Tenis', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (6, N'Ciclismo', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (7, N'Voleibol', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (8, N'Gimnasia', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (9, N'Boxeo', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (10, N'Esgrima', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (11, N'Halterofilia', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (12, N'Golf', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (13, N'Rugby', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (14, N'Bádminton', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (15, N'Tiro con Arco', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (16, N'Hockey sobre Hielo', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (17, N'Triatlón', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (18, N'Taekwondo', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (19, N'Karate', NULL)
INSERT [dbo].[Deportes] ([IdDeporte], [Nombre], [Foto]) VALUES (20, N'Remo', NULL)
SET IDENTITY_INSERT [dbo].[Deportes] OFF
GO
SET IDENTITY_INSERT [dbo].[Deportistas] ON 

INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (3, N'Messi', N'Lionel', CAST(N'1987-06-24' AS Date), NULL, 1, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (5, N'Nadal', N'Rafael', CAST(N'1986-06-03' AS Date), NULL, 4, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (6, N'Froome', N'Chris', CAST(N'1985-05-20' AS Date), NULL, 10, 6)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (7, N'Zaytsev', N'Ivan', CAST(N'1988-10-02' AS Date), NULL, 6, 7)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (8, N'Biles', N'Simone', CAST(N'1997-03-14' AS Date), NULL, 2, 8)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (9, N'Ali', N'Muhammad', CAST(N'1942-01-17' AS Date), NULL, 2, 9)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (10, N'Vezzali', N'Valentina', CAST(N'1974-02-14' AS Date), NULL, 6, 10)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (11, N'Carlos', N'Roberto', CAST(N'2024-08-15' AS Date), N'algo', 3, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (12, N'Di Maria', N'Ángel', CAST(N'1980-01-01' AS Date), N'dfdfsdf', 1, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (13, N'Serena', N'Williams', CAST(N'1981-09-26' AS Date), NULL, 2, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (14, N'LeBron', N'James', CAST(N'1984-12-30' AS Date), NULL, 2, 4)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (15, N'Federer', N'Roger', CAST(N'1981-08-08' AS Date), NULL, 5, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (16, N'Bolt', N'Usain', CAST(N'1986-08-21' AS Date), NULL, 7, 1)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (17, N'Phelps', N'Michael', CAST(N'1985-06-30' AS Date), NULL, 2, 2)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (18, N'Woods', N'Tiger', CAST(N'1975-12-30' AS Date), NULL, 2, 12)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (19, N'Tokarczuk', N'Olga', CAST(N'1991-01-18' AS Date), NULL, 9, 17)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (20, N'Brady', N'Tom', CAST(N'1977-08-03' AS Date), NULL, 2, 4)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (21, N'Ronaldo', N'Cristiano', CAST(N'1985-02-05' AS Date), NULL, 3, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (22, N'Jordan', N'Michael', CAST(N'1963-02-17' AS Date), NULL, 2, 4)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (23, N'Borg', N'Bjorn', CAST(N'1956-06-06' AS Date), NULL, 4, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (24, N'Armstrong', N'Lance', CAST(N'1971-09-18' AS Date), NULL, 2, 6)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (25, N'Bryant', N'Kobe', CAST(N'1978-08-23' AS Date), NULL, 2, 4)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (26, N'Gretzky', N'Wayne', CAST(N'1961-01-26' AS Date), NULL, 12, 16)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (27, N'Williams', N'Venus', CAST(N'1980-06-17' AS Date), NULL, 2, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (28, N'Neymar', N'Junior', CAST(N'1992-02-05' AS Date), NULL, 3, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (29, N'Gasol', N'Pau', CAST(N'1980-07-06' AS Date), NULL, 4, 4)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (30, N'Schumacher', N'Michael', CAST(N'1969-01-03' AS Date), NULL, 9, 6)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (31, N'Murray', N'Andy', CAST(N'1987-05-15' AS Date), NULL, 10, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (32, N'Torres', N'Fernando', CAST(N'1984-03-20' AS Date), NULL, 4, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (33, N'Zidane', N'Zinedine', CAST(N'1972-06-23' AS Date), NULL, 5, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (34, N'Kipchoge', N'Eliud', CAST(N'1984-11-05' AS Date), NULL, 7, 1)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (35, N'Lochte', N'Ryan', CAST(N'1984-08-03' AS Date), NULL, 2, 2)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (36, N'McGregor', N'Conor', CAST(N'1988-07-14' AS Date), NULL, 10, 9)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (37, N'Hamilton', N'Lewis', CAST(N'1985-01-07' AS Date), NULL, 10, 6)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (38, N'Ozil', N'Mesut', CAST(N'1988-10-15' AS Date), NULL, 9, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (39, N'Iniesta', N'Andrés', CAST(N'1984-05-11' AS Date), NULL, 4, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (40, N'Gasol', N'Marc', CAST(N'1985-01-29' AS Date), NULL, 4, 4)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (41, N'Pogba', N'Paul', CAST(N'1993-03-15' AS Date), NULL, 5, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (42, N'Mbappe', N'Kylian', CAST(N'1998-12-20' AS Date), NULL, 5, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (43, N'Kante', N'Golo', CAST(N'1991-03-29' AS Date), NULL, 5, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (44, N'Lewandowski', N'Robert', CAST(N'1988-08-21' AS Date), NULL, 9, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (45, N'Haaland', N'Erling', CAST(N'2000-07-21' AS Date), NULL, 9, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (46, N'Salah', N'Mohamed', CAST(N'1992-06-15' AS Date), NULL, 7, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (47, N'Rooney', N'Wayne', CAST(N'1985-10-24' AS Date), NULL, 10, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (48, N'Figo', N'Luis', CAST(N'1972-11-04' AS Date), NULL, 3, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (49, N'Beckham', N'David', CAST(N'1975-05-02' AS Date), NULL, 10, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (50, N'Cassius Clay', N'Jr.', CAST(N'1942-01-17' AS Date), NULL, 2, 9)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (51, N'Thorpe', N'Ian', CAST(N'1982-10-13' AS Date), NULL, 11, 2)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (52, N'Ledecky', N'Katie', CAST(N'1997-03-17' AS Date), NULL, 2, 2)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (53, N'Bubka', N'Sergei', CAST(N'1963-12-04' AS Date), NULL, 13, 1)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (54, N'Djokovic', N'Novak', CAST(N'1987-05-22' AS Date), NULL, 9, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (55, N'Hingis', N'Martina', CAST(N'1980-09-30' AS Date), NULL, 9, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (56, N'Raducanu', N'Emma', CAST(N'2002-11-13' AS Date), NULL, 10, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (57, N'Agassi', N'Andre', CAST(N'1970-04-29' AS Date), NULL, 2, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (58, N'Lendl', N'Ivan', CAST(N'1960-03-07' AS Date), NULL, 9, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (59, N'Steffi', N'Graf', CAST(N'1969-06-14' AS Date), NULL, 9, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (60, N'Navratilova', N'Martina', CAST(N'1956-10-18' AS Date), NULL, 9, 5)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (61, N'Ruth', N'Babe', CAST(N'1895-02-06' AS Date), NULL, 2, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (62, N'Mantle', N'Mickey', CAST(N'1931-10-20' AS Date), NULL, 2, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (63, N'Gibson', N'Josh', CAST(N'1911-12-21' AS Date), NULL, 2, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (64, N'Seaver', N'Tom', CAST(N'1944-11-17' AS Date), NULL, 2, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (65, N'Rivera', N'Mariano', CAST(N'1969-11-29' AS Date), NULL, 3, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (66, N'Gowdy', N'Curt', CAST(N'1919-07-31' AS Date), NULL, 2, 3)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (67, N'Nicklaus', N'Jack', CAST(N'1940-01-21' AS Date), NULL, 2, 12)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (68, N'Spieth', N'Jordan', CAST(N'1993-07-27' AS Date), NULL, 2, 12)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (69, N'Palmer', N'Arnold', CAST(N'1929-09-10' AS Date), NULL, 2, 12)
INSERT [dbo].[Deportistas] ([IdDeportista], [Apellido], [Nombre], [FechaNacimiento], [Foto], [IdPais], [IdDeporte]) VALUES (70, N'Rousey', N'Ronda', CAST(N'1987-02-01' AS Date), NULL, 2, 9)
SET IDENTITY_INSERT [dbo].[Deportistas] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (1, N'Argentina', N'Bandera_Argentina.png', CAST(N'1816-07-09' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (2, N'Estados Unidos', N'Bandera_EEUU.png', CAST(N'1776-07-04' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (3, N'Brasil', N'Bandera_Brasil.png', CAST(N'1822-09-07' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (4, N'España', N'Bandera_Espana.png', CAST(N'1492-10-12' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (5, N'Francia', N'Bandera_Francia.png', CAST(N'1789-07-14' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (6, N'Italia', N'Bandera_Italia.png', CAST(N'1861-03-17' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (7, N'China', N'Bandera_China.png', CAST(N'1949-10-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (8, N'Japón', N'Bandera_Japon.png', CAST(N'0660-01-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (9, N'Alemania', N'Bandera_Alemania.png', CAST(N'1871-01-18' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (10, N'Reino Unido', N'Bandera_UK.png', CAST(N'1707-05-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (11, N'Australia', N'Bandera_Australia.png', CAST(N'1901-01-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (12, N'Canadá', N'Bandera_Canada.png', CAST(N'1867-07-01' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (13, N'Rusia', N'Bandera_Rusia.png', CAST(N'1991-12-25' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (14, N'Corea del Sur', N'Bandera_CoreaDelSur.png', CAST(N'1948-08-15' AS Date))
INSERT [dbo].[Paises] ([IdPais], [Nombre], [Bandera], [FechaFundacion]) VALUES (15, N'India', N'Bandera_India.png', CAST(N'1947-08-15' AS Date))
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
ALTER TABLE [dbo].[Deportistas]  WITH CHECK ADD  CONSTRAINT [FK__Deportist__IdDep__3B75D760] FOREIGN KEY([IdDeporte])
REFERENCES [dbo].[Deportes] ([IdDeporte])
GO
ALTER TABLE [dbo].[Deportistas] CHECK CONSTRAINT [FK__Deportist__IdDep__3B75D760]
GO
ALTER TABLE [dbo].[Deportistas]  WITH CHECK ADD  CONSTRAINT [FK__Deportist__IdPai__3A81B327] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Paises] ([IdPais])
GO
ALTER TABLE [dbo].[Deportistas] CHECK CONSTRAINT [FK__Deportist__IdPai__3A81B327]
GO
/****** Object:  StoredProcedure [dbo].[spAgregarDeportista]    Script Date: 15/8/2024 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAgregarDeportista]
    @Apellido NVARCHAR(50),
    @Nombre NVARCHAR(50),
    @FechaNacimiento DATE,
    @Foto NVARCHAR(MAX),
    @IdPais INT,
    @IdDeporte INT
AS
BEGIN
    INSERT INTO Deportistas (Apellido, Nombre, FechaNacimiento, Foto, IdPais, IdDeporte)
    VALUES (@Apellido, @Nombre, @FechaNacimiento, @Foto, @IdPais, @IdDeporte);
END
GO
/****** Object:  StoredProcedure [dbo].[spEliminarDeportista]    Script Date: 15/8/2024 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarDeportista]
    @IdDeportista INT
AS
BEGIN
    DELETE FROM Deportistas WHERE IdDeportista = @IdDeportista;
END
GO
/****** Object:  StoredProcedure [dbo].[spListarDeportistasPorDeporte]    Script Date: 15/8/2024 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarDeportistasPorDeporte]
    @IdDeporte INT
AS
BEGIN
    SELECT * FROM Deportistas WHERE IdDeporte = @IdDeporte;
END
GO
/****** Object:  StoredProcedure [dbo].[spListarDeportistasPorPais]    Script Date: 15/8/2024 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarDeportistasPorPais]
    @IdPais INT
AS
BEGIN
    SELECT * FROM Deportistas WHERE IdPais = @IdPais
END
GO
/****** Object:  StoredProcedure [dbo].[spVerInfoDeporte]    Script Date: 15/8/2024 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spVerInfoDeporte]
    @IdDeporte INT
AS
BEGIN
    SELECT * FROM Deportes WHERE IdDeporte = @IdDeporte;
END
GO
/****** Object:  StoredProcedure [dbo].[spVerInfoDeportista]    Script Date: 15/8/2024 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spVerInfoDeportista]
    @IdDeportista INT
AS
BEGIN
    SELECT * FROM Deportistas WHERE IdDeportista = @IdDeportista;
END
GO
/****** Object:  StoredProcedure [dbo].[spVerInfoPais]    Script Date: 15/8/2024 16:39:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spVerInfoPais]
    @IdPais INT
AS
BEGIN
    SELECT * FROM Paises WHERE IdPais = @IdPais;
END
GO
