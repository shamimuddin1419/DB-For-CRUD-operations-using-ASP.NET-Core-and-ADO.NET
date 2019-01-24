USE [StudentManagement]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/24/2019 3:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[Mobile] [varchar](20) NOT NULL,
	[Address] [varchar](220) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spAddStudent]    Script Date: 1/24/2019 3:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spAddStudent]        
(        
    @FirstName VARCHAR(50),         
    @LastName VARCHAR(50),        
    @Email VARCHAR(30),        
    @Mobile VARCHAR(20),
	@Address VARCHAR(220)        
)        
as         
Begin         
    Insert into Student (FirstName,LastName,Email, Mobile,Address)         
    Values (@FirstName,@LastName,@Email, @Mobile,@Address)         
End
GO
/****** Object:  StoredProcedure [dbo].[spDeleteStudent]    Script Date: 1/24/2019 3:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spDeleteStudent]         
(          
   @Id int          
)          
as           
begin          
   Delete from Student where Id=@Id          
End
GO
/****** Object:  StoredProcedure [dbo].[spGetAllStudent]    Script Date: 1/24/2019 3:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spGetAllStudent]      
as      
Begin      
    select *      
    from Student   
    order by Id 
End
GO
/****** Object:  StoredProcedure [dbo].[spUpdateStudent]    Script Date: 1/24/2019 3:23:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[spUpdateStudent]          
(          
    @Id INTEGER ,        
    @FirstName VARCHAR(50),         
    @LastName VARCHAR(50),        
    @Email VARCHAR(30),        
    @Mobile VARCHAR(20),
	@Address VARCHAR(220)          
)          
as          
begin          
   Update Student           
   set FirstName=@FirstName,          
   LastName=@LastName,          
   Email=@Email,        
   Mobile=@Mobile, 
   Address=@Address          
   where Id=@Id          
End
GO
