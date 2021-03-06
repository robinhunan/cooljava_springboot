USE [cooljava]
GO
/****** Object:  Table [dbo].[code_test]    Script Date: 2019/9/17 11:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[code_test](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[value] [varchar](100) NULL,
	[label] [varchar](100) NULL,
	[type] [varchar](100) NULL,
	[description] [varchar](100) NULL,
	[sort] [int] NULL,
	[status] [char](1) NULL,
	[test_value] [varchar](100) NULL,
	[test_data] [date] NULL,
	[test_test] [text] NULL,
 CONSTRAINT [PK_code_test] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_dict]    Script Date: 2019/9/17 11:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_dict](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[value] [varchar](100) NULL,
	[label] [varchar](100) NULL,
	[type] [varchar](100) NULL,
	[description] [varchar](100) NULL,
	[sort] [int] NULL,
	[status] [char](1) NULL,
 CONSTRAINT [PK_sys_dict] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_menu]    Script Date: 2019/9/17 11:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_menu](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[pid] [int] NOT NULL,
	[title] [varchar](255) NULL,
	[icon] [varchar](255) NULL,
	[href] [varchar](255) NULL,
	[spread] [char](1) NULL,
	[sort] [int] NULL,
	[is_top] [varchar](1) NULL,
	[del_flag] [char](1) NULL,
	[levels] [int] NULL,
	[type] [varchar](20) NULL,
	[permission] [varchar](200) NULL,
 CONSTRAINT [PK_sys_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_org]    Script Date: 2019/9/17 11:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_org](
	[id] [int] NOT NULL,
	[pid] [int] NULL,
	[name] [varchar](100) NULL,
	[sort] [decimal](10, 0) NULL,
	[type] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_quarz]    Script Date: 2019/9/17 11:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_quarz](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[JOB_NAME] [varchar](50) NULL,
	[JOB_GROUP] [varchar](50) NULL,
	[CLASS_PATH] [varchar](50) NULL,
	[CRON_STR] [varchar](50) NULL,
	[STATE] [varchar](1) NULL,
	[MARK] [varchar](100) NULL,
 CONSTRAINT [PK_sys_quarz] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role]    Script Date: 2019/9/17 11:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[useable] [varchar](64) NULL,
 CONSTRAINT [PK_sys_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role_menu]    Script Date: 2019/9/17 11:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role_menu](
	[role_id] [varchar](255) NOT NULL,
	[menu_id] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_user]    Script Date: 2019/9/17 11:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login_name] [varchar](255) NULL,
	[pwd] [varchar](255) NULL,
	[img] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[sex] [varchar](2) NULL,
	[mobile] [varchar](255) NULL,
	[status] [varchar](1) NULL,
	[name] [varchar](255) NULL,
	[role_id] [int] NULL,
	[org_id] [int] NULL,
 CONSTRAINT [PK_sys_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[web_flink]    Script Date: 2019/9/17 11:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[web_flink](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[webname] [varchar](255) NULL,
	[alink] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[addtime] [datetime] NULL,
	[dispos] [varchar](255) NULL,
	[content] [varchar](4000) NULL,
 CONSTRAINT [PK_web_flink] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[sys_dict] ON 

INSERT [dbo].[sys_dict] ([id], [value], [label], [type], [description], [sort], [status]) VALUES (4, N'java', N'1', N'lang', N'1', 0, N'0')
INSERT [dbo].[sys_dict] ([id], [value], [label], [type], [description], [sort], [status]) VALUES (5, N'python', N'python编程语言', N'lang', N'系统语言', 0, N'0')
INSERT [dbo].[sys_dict] ([id], [value], [label], [type], [description], [sort], [status]) VALUES (6, N'php', N'php', N'lang', N'系统语言', 5, N'0')
SET IDENTITY_INSERT [dbo].[sys_dict] OFF
SET IDENTITY_INSERT [dbo].[sys_menu] ON 

INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (1, 75, N'系统管理', N'fa-desktop', N'', N'0', 1, N'1', N'0', 1, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (3, 1, N'我的面板', N'fa-television', N'', N'0', 2, N'0', N'0', 2, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (4, 3, N'个人信息', N'fa-vcard-o', N'/user/personInfo.do', N'0', 1, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (5, 3, N'修改密码', N'fa-gear', N'/user/pwd.do', N'0', 2, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (6, 1, N'系统设置', N'fa-cogs', NULL, N'0', 3, N'0', N'0', 2, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (7, 6, N'用户管理', N'fa-user-o', N'/user/list.do', N'0', 1, N'0', N'0', 3, NULL, N'')
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (8, 6, N'角色管理', N'fa-user-circle', N'/role/list.do', N'0', 2, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (9, 6, N'菜单管理', N'fa-window-restore', N'/menu/list.do', N'0', 3, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (24, 75, N'内容管理', N'fa-file-word-o', N'', N'0', 2, N'1', N'0', 1, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (25, 24, N'网站管理', N'fa-window-maximize', NULL, N'0', 1, N'0', N'0', 2, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (75, 0, N'CoolJava后台管理系统', N'&#xe75c;', N'', N'1', 1, N'0', N'0', 0, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (76, 25, N'友链管理', N'fa-link', N'/friendLink/list.do', N'0', 7, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (80, 1, N'系统监控', N'fa-eye', N'', N'0', 3, N'0', N'0', 2, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (81, 80, N'连接池监视', N'fa-chain-broken', N'/druid/index.html', N'0', 2, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (84, 6, N'文件管理', N'fa-file-word-o', N'/res/ckfinder/_samples/standalone_v1.html', N'0', 5, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (85, 25, N'会员管理', N'fa-users', N'/user/list.do', N'0', 2, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (87, 6, N'字典管理', N'fa-file-o', N'/dict/list.do', N'0', 6, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (88, 1, N'系统工具', N'fa-steam-square', N'', N'0', 4, N'0', N'0', 2, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (89, 88, N'代码生成', N'fa-cc', N'/codeGenerator/form.do', N'0', 0, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (90, 88, N'生成测试', N'fa-hand-peace-o', N'/test/list.do', N'0', 2, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (91, 88, N'定时任务', N'fa-hourglass-half', N'/quarz/list.do', N'0', 3, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (92, 88, N'Cron生成器', N'fa-file-excel-o', N'/res/cron/index.htm', N'0', 4, N'0', N'0', 3, NULL, NULL)
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (93, 76, N'新增', N'', N'', N'0', 0, N'0', N'0', 4, N'1', N'flink:add')
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (94, 76, N'删除', N'', N'', N'0', 5, N'0', N'0', 4, N'1', N'flink:delete')
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (95, 76, N'修改', N'', N'', N'0', 0, N'0', N'0', 4, N'1', N'flink:update')
INSERT [dbo].[sys_menu] ([id], [pid], [title], [icon], [href], [spread], [sort], [is_top], [del_flag], [levels], [type], [permission]) VALUES (96, 6, N'机构管理', N'fa-university', N'/org/list.do', N'0', 4, N'0', N'0', 3, N'0', N'')
SET IDENTITY_INSERT [dbo].[sys_menu] OFF
INSERT [dbo].[sys_org] ([id], [pid], [name], [sort], [type]) VALUES (1, -1, N'北京诚科技有限公司', CAST(1 AS Decimal(10, 0)), N'0')
INSERT [dbo].[sys_org] ([id], [pid], [name], [sort], [type]) VALUES (2, 1, N'开发部', CAST(1 AS Decimal(10, 0)), N'1')
INSERT [dbo].[sys_org] ([id], [pid], [name], [sort], [type]) VALUES (3, 1, N'法务部', CAST(2 AS Decimal(10, 0)), N'1')
INSERT [dbo].[sys_org] ([id], [pid], [name], [sort], [type]) VALUES (4, 1, N'行政部', CAST(3 AS Decimal(10, 0)), N'1')
INSERT [dbo].[sys_org] ([id], [pid], [name], [sort], [type]) VALUES (5, 2, N'前端开发组', CAST(1 AS Decimal(10, 0)), N'1')
INSERT [dbo].[sys_org] ([id], [pid], [name], [sort], [type]) VALUES (6, 2, N'后台开发组', CAST(1 AS Decimal(10, 0)), N'1')
SET IDENTITY_INSERT [dbo].[sys_quarz] ON 

INSERT [dbo].[sys_quarz] ([ID], [JOB_NAME], [JOB_GROUP], [CLASS_PATH], [CRON_STR], [STATE], [MARK]) VALUES (1, N'测试定时器', N'第一组', N'com.quartz.TestQuartz', N'0/5 * * * * ?', N'1', N'每隔5分运行一次')
SET IDENTITY_INSERT [dbo].[sys_quarz] OFF
SET IDENTITY_INSERT [dbo].[sys_role] ON 

INSERT [dbo].[sys_role] ([id], [name], [useable]) VALUES (4, N'部门管理员', N'0')
INSERT [dbo].[sys_role] ([id], [name], [useable]) VALUES (5, N'超级管理员', N'0')
INSERT [dbo].[sys_role] ([id], [name], [useable]) VALUES (7, N'系统管理员', N'0')
SET IDENTITY_INSERT [dbo].[sys_role] OFF
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'4', N'24')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'4', N'25')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'4', N'76')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'4', N'85')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'3')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'1')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'9', N'6')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'9', N'7')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'3')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'4')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'5')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'6')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'7')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'9', N'80')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'8')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'81')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'84')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'87')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'88')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'89')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'9')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'90')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'91')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'92')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'9', N'9')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'9', N'84')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'96')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'97')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'7', N'7')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'7', N'8')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'7', N'9')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'7', N'5')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'7', N'6')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'7', N'1')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'7', N'3')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'7', N'4')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'8', N'24')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'8', N'25')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'8', N'76')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'8', N'85')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'9', N'1')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'9', N'3')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'9', N'4')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'9', N'5')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'24')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'25')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'9', N'8')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'76')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'9', N'81')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'95')
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'5', N'94')
SET IDENTITY_INSERT [dbo].[sys_user] ON 

INSERT [dbo].[sys_user] ([id], [login_name], [pwd], [img], [email], [sex], [mobile], [status], [name], [role_id], [org_id]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'/upload/image/test.JPG', N'bd@mooche.com', NULL, N'15751123456', N'0', N'A先生', 5, 2)
INSERT [dbo].[sys_user] ([id], [login_name], [pwd], [img], [email], [sex], [mobile], [status], [name], [role_id], [org_id]) VALUES (6, N'test', N'e10adc3949ba59abbe56e057f20f883e', NULL, N'bd@mooche.com', NULL, N'15751123456', N'0', N'test', 7, 0)
SET IDENTITY_INSERT [dbo].[sys_user] OFF
SET IDENTITY_INSERT [dbo].[web_flink] ON 

INSERT [dbo].[web_flink] ([id], [webname], [alink], [email], [addtime], [dispos], [content]) VALUES (7, N'北京科技有限公司', N'http://www.sina.cn', N'bd@mooche.com', CAST(N'2017-12-19T14:47:21.000' AS DateTime), N'首页', N'测试测试')
SET IDENTITY_INSERT [dbo].[web_flink] OFF
ALTER TABLE [dbo].[sys_menu] ADD  CONSTRAINT [DF_sys_menu_spread]  DEFAULT ((0)) FOR [spread]
GO
ALTER TABLE [dbo].[sys_role] ADD  CONSTRAINT [DF_sys_role_useable]  DEFAULT ((0)) FOR [useable]
GO
ALTER TABLE [dbo].[sys_user] ADD  CONSTRAINT [DF_sys_user_status]  DEFAULT ((0)) FOR [status]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代码生成测试' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'code_test', @level2type=N'COLUMN',@level2name=N'test_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict', @level2type=N'COLUMN',@level2name=N'value'
GO
