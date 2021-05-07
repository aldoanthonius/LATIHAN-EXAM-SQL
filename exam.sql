CREATE DATABASE Exam

use Exam

create table Users(
	UserId char(5) primary key,
	FirstName varchar(255) NOT NULL,
	LastName varchar(255),
	School varchar(255) NOT NULL ,
	Addresses varchar(255) NOT NULL,
	Email varchar(255) NOT NULL ,
	PhoneNumber int NOT NULL ,
	Locations varchar(255) NOT NULL,
	dob varchar(255) NOT NULL,
	gender char(1) NOT NULL
	CHECK (gender like 'M'  or gender like 'F')
)

create table Pages(
	PageId char (3) primary key,
	PageName varchar(255) NOT NULL,
	PageContent varchar(255) NOT NULL
)

create table Posts(
	PostId char(5) primary key,
	UserId char(5) foreign key references Users(UserId),
	PostDate varchar(30) NOT NULL,
	PostContent varchar(255) NOT NULL
)

create table Friends(
	FriendId char(5) primary key,
	UserId char(5) foreign key references Users(UserId)
)

create table PageLikes(
	PageId char(3) foreign key references Pages(PageId),
	UserId char(5) foreign key references Users(UserId) 
)

create table PostLikes(
	UserId char(5) foreign key references Users(UserId),
	PostId char(5) foreign key references Posts(PostId) 
)

create table Photos(
	ImageContent varchar(255) NOT NULL,
	PhotoId char(5) primary key ,
	PostId char(5) foreign key references Posts(PostId) 
)

create table Shares(
	PostId char(5) foreign key references Posts(PostId) ,
	UserId char(5) foreign key references Users(UserId) 
)

create table Comments(
	CommentId char(5) primary key ,
	UserId char(5) foreign key references Users(UserId) ,
	PostId char(5) foreign key references Posts(PostId),
	CommentContent varchar(255) NOT NULL, 
	CommentDate varchar(30) NOT NULL,
)

create table CommentLikes (
	CommentId char(5) foreign key references Comments(CommentId) ,
	UserId char(5) foreign key references Users(UserId)
)

select * from CommentLikes
select * from Comments
select * from Shares
select * from Photos
select * from PostLikes
select * from PageLikes
select * from Friends
select * from Posts
select * from Pages
select * from Users


