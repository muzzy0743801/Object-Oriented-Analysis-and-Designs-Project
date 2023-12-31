USE [master]
GO
/****** Object:  Database [Student_Management_System]    Script Date: 09/02/2021 12:12:43 am ******/
CREATE DATABASE [Student_Management_System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Student_Management_System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Student_Management_System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Student_Management_System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Student_Management_System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Student_Management_System] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Student_Management_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Student_Management_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Student_Management_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Student_Management_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Student_Management_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Student_Management_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [Student_Management_System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Student_Management_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Student_Management_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Student_Management_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Student_Management_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Student_Management_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Student_Management_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Student_Management_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Student_Management_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Student_Management_System] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Student_Management_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Student_Management_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Student_Management_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Student_Management_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Student_Management_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Student_Management_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Student_Management_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Student_Management_System] SET RECOVERY FULL 
GO
ALTER DATABASE [Student_Management_System] SET  MULTI_USER 
GO
ALTER DATABASE [Student_Management_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Student_Management_System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Student_Management_System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Student_Management_System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Student_Management_System] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Student_Management_System', N'ON'
GO
ALTER DATABASE [Student_Management_System] SET QUERY_STORE = OFF
GO
USE [Student_Management_System]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Student_Management_System]
GO
/****** Object:  Table [dbo].[atat_table]    Script Date: 09/02/2021 12:12:44 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[atat_table](
	[f_id] [nvarchar](50) NOT NULL,
	[datetime] [nvarchar](100) NOT NULL,
	[flag] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[att_table]    Script Date: 09/02/2021 12:12:44 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[att_table](
	[s_id] [nvarchar](50) NOT NULL,
	[c_id] [nvarchar](50) NOT NULL,
	[datetime] [nvarchar](100) NOT NULL,
	[flag] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course_table]    Script Date: 09/02/2021 12:12:44 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course_table](
	[c_id] [int] NOT NULL,
	[c_name] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_table]    Script Date: 09/02/2021 12:12:44 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_table](
	[e_id] [int] NOT NULL,
	[e_pass] [nvarchar](50) NOT NULL,
	[e_name] [text] NOT NULL,
	[e_design] [text] NOT NULL,
	[e_email] [nvarchar](20) NOT NULL,
	[e_num] [int] NOT NULL,
	[e_gender] [text] NOT NULL,
	[e_addr] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employee_table] PRIMARY KEY CLUSTERED 
(
	[e_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login_table]    Script Date: 09/02/2021 12:12:44 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login_table](
	[id] [int] NOT NULL,
	[pw] [nvarchar](50) NOT NULL,
	[type] [text] NOT NULL,
 CONSTRAINT [PK_login_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marks_table]    Script Date: 09/02/2021 12:12:44 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marks_table](
	[c_id] [nvarchar](50) NOT NULL,
	[s_id] [nvarchar](50) NOT NULL,
	[obt_mrk] [nvarchar](50) NOT NULL,
	[tot_mrk] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[offer_courses]    Script Date: 09/02/2021 12:12:44 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[offer_courses](
	[c_id] [nvarchar](50) NOT NULL,
	[c_name] [nvarchar](50) NOT NULL,
	[c_faculty] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[query_table]    Script Date: 09/02/2021 12:12:44 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[query_table](
	[s_id] [nvarchar](50) NOT NULL,
	[s_query] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reg_crs]    Script Date: 09/02/2021 12:12:44 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reg_crs](
	[c_id] [nvarchar](50) NOT NULL,
	[s_id] [nvarchar](50) NOT NULL,
	[reg_crs] [nvarchar](100) NOT NULL,
	[noc] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[remarks]    Script Date: 09/02/2021 12:12:44 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[remarks](
	[c_id] [nvarchar](50) NOT NULL,
	[s_id] [nvarchar](50) NOT NULL,
	[remarks] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sal_table]    Script Date: 09/02/2021 12:12:44 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sal_table](
	[fid] [nvarchar](50) NOT NULL,
	[salary] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_table]    Script Date: 09/02/2021 12:12:44 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_table](
	[s_id] [int] NOT NULL,
	[pw] [nvarchar](20) NOT NULL,
	[s_name] [text] NOT NULL,
	[s_fname] [text] NOT NULL,
	[s_cns] [nvarchar](10) NOT NULL,
	[s_num] [int] NOT NULL,
	[s_gender] [text] NOT NULL,
	[p_id] [int] NOT NULL,
	[p_pass] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Student_table] PRIMARY KEY CLUSTERED 
(
	[s_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Student_Management_System] SET  READ_WRITE 
GO
