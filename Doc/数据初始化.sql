USE DDD
GO

--��ʼ����������Ա
SET IDENTITY_INSERT dbo.SystemAdmin ON
INSERT INTO [SystemAdmin]
           ([SAID]
           ,[SAName]
           ,[SAPwd]
           ,[SANickName]
           ,[SASex]
           ,[SAMobileNo]
           ,[RegTime]
           ,[IsEnable]
           ,[LastIP]
           ,[LastTime]
           ,[CurrentIP]
           ,[CurrentTime]
           ,[Email]
           ,[LoginTimes])
     VALUES
           (1
           ,'admin'
           ,'E10ADC3949BA59ABBE56E057F20F883E'
           ,'��������Ա'
           ,1
           ,'18236520508'
           ,GETDATE()
           ,1
           ,'::1'
           ,GETDATE()
           ,'::1'
           ,GETDATE()
           ,'1@1.com'
           ,0)
GO
SET IDENTITY_INSERT dbo.SystemAdmin OFF


--��ʼ����������Ա��ɫ
SET IDENTITY_INSERT dbo.AdminRole ON
INSERT INTO [AdminRole]([ARID],[ARName],[Description])VALUES(1,'��������Ա',NULL)
GO
SET IDENTITY_INSERT dbo.AdminRole OFF


--��ʼ������Ա����ɫ������
INSERT INTO [Admin_Role] ([SAID],[ARID]) VALUES (1,1)
GO

--��ʼ�����ܲ˵�������
SET IDENTITY_INSERT [dbo].[AdminModule] ON
INSERT [dbo].[AdminModule] ([AMID], [ModuleName], [PageUrl], [FID], [FormRoleName], [SortFlag], [CSSStyle], [Icon], [IsEnable]) VALUES (1, N'����Ա', NULL, 0, N'admin', CAST(0x0000A5940115FA7F AS DateTime), NULL, NULL, 1)
INSERT [dbo].[AdminModule] ([AMID], [ModuleName], [PageUrl], [FID], [FormRoleName], [SortFlag], [CSSStyle], [Icon], [IsEnable]) VALUES (2, N'����Ա�˻�', N'/SystemAdmin/SystemAdmin/', 1, N'admin', CAST(0x00009F4A00B37888 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[AdminModule] ([AMID], [ModuleName], [PageUrl], [FID], [FormRoleName], [SortFlag], [CSSStyle], [Icon], [IsEnable]) VALUES (3, N'ϵͳ���', NULL, 0, N'system', CAST(0x00009F4A00B7B22C AS DateTime), NULL, NULL, 1)
INSERT [dbo].[AdminModule] ([AMID], [ModuleName], [PageUrl], [FID], [FormRoleName], [SortFlag], [CSSStyle], [Icon], [IsEnable]) VALUES (4, N'����ģ������', N'/SystemAdmin/AdminModule/', 3, N'system', CAST(0x0000A594011643F0 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[AdminModule] ([AMID], [ModuleName], [PageUrl], [FID], [FormRoleName], [SortFlag], [CSSStyle], [Icon], [IsEnable]) VALUES (6, N'����Ա��ɫ', N'/SystemAdmin/AdminRole/', 1, N'admin', CAST(0x0000A59500A901A0 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[AdminModule] ([AMID], [ModuleName], [PageUrl], [FID], [FormRoleName], [SortFlag], [CSSStyle], [Icon], [IsEnable]) VALUES (7, N'����Ա������־', N'/SystemAdmin/AdminLog/', 1, N'admin', CAST(0x0000A59500EA4DC3 AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[AdminModule] OFF


--��ʼ����ɫ�����ܲ˵�������
INSERT [dbo].[AdminRole_Module] ([ARID], [AMID], [Weights]) VALUES (1, 1, 0)
INSERT [dbo].[AdminRole_Module] ([ARID], [AMID], [Weights]) VALUES (1, 2, 0)
INSERT [dbo].[AdminRole_Module] ([ARID], [AMID], [Weights]) VALUES (1, 3, 0)
INSERT [dbo].[AdminRole_Module] ([ARID], [AMID], [Weights]) VALUES (1, 4, 1)
INSERT [dbo].[AdminRole_Module] ([ARID], [AMID], [Weights]) VALUES (1, 6, 0)
INSERT [dbo].[AdminRole_Module] ([ARID], [AMID], [Weights]) VALUES (1, 7, 0)