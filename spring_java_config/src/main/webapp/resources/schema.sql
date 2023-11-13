//외래키는 나중에 적용예정 참고!!!

create database finalproject;

-- 2023-07-11
create table user(
user_num int auto_increment,
user_email varchar(100) not null,
user_pw varchar(100) not null,
user_name varchar(100) not null,
user_phone varchar(100) not null,
user_reg_date datetime default now(),
user_auth tinyint(1),
primary key(user_num));

create table master(
master_num  int auto_increment,
master_email varchar(100) not null,
master_pw varchar(100) not null,
master_name varchar(100) not null,
master_phone varchar(100) not null,
master_reg_date datetime default now(),
master_auth tinyint(1),
up_category_code varchar(8),
master_category_code varchar(8),
master_purpose varchar(100),
master_progress varchar(100),
master_agegroup varchar(100),
master_gender varchar(50),
master_day varchar(100),
master_time varchar(100),
master_desireregion varchar(100),
master_price varchar(100),
master_intro varchar(300),
master_size varchar(100),
primary key(master_num));



create table estimate(
estimate_num auto_increment int,
estimate_purpose varchar(100),
estimate_progress varchar(100),
estimate_agegroup varchar(50),
estimate_ugender varchar(20),
estimate_mgender varchar(20),
estimate_day varchar(100),
estimate_timevarchar(100),
estimate_desireregion varchar(100),
estimate_user_num int,
estimate_up_category_code varchar(8),
estimate_category_code varchar(8),
primary key(estimate_num));

// 0731 카테고리 데이터 입력
create table upcategory(
up_category_code varchar(8),
up_category_name varchar(100),
primary key(up_category_code));

insert into upcategory(up_category_code, up_category_name) value("A","레슨");
insert into upcategory(up_category_code, up_category_name) value("B","홈/리빙");
insert into upcategory(up_category_code, up_category_name) value("C","이벤트");
insert into upcategory(up_category_code, up_category_name) value("D","비즈니스");
insert into upcategory(up_category_code, up_category_name) value("E","디자인/개발");

create table category(
category_code varchar(8),
category_name varchar(100),
category_upcategory varchar(100),
primary key(category_code));

create table community_board(
community_board_num auto_increment int,
community_board_title varchar(100) not null,
community_board_content varchar(100) not null,
community_board_wrtier varchar(100) not null,
community_board_reg_date datetime default now(),
community_board_read_count int default 0,
primary key(community_board_num));

create table community_comment(
community_comment_num int auto_increment,
community_comment_content varchar(100) not null,
community_comment_writer varchar(100) not null,
community_comment_reg_date datetime default now(),
primary key(community_comment_num));

2023-07-18
alter table user alter column user_auth set default 0;

2023-08-04
//시간관련
Create table timetable (
timetable_code varchar(50),
timtable_name varchar(100),
primary key(timetable_code));

insert into timetable ( timetable_code, timtable_name) value ("A" ,"오전 9시" );
insert into timetable ( timetable_code, timtable_name) value ("B" ,"오전 10시" );
insert into timetable ( timetable_code, timtable_name) value ("C" ,"오전 11시" );
insert into timetable ( timetable_code, timtable_name) value ("D" ,"오후 12시" );
insert into timetable ( timetable_code, timtable_name) value ("E" ,"오후 1시" );
insert into timetable ( timetable_code, timtable_name) value ("F" ,"오후 2시" );
insert into timetable ( timetable_code, timtable_name) value ("G" ,"오후 3시" );
insert into timetable ( timetable_code, timtable_name) value ("H" ,"오후 4시" );
insert into timetable ( timetable_code, timtable_name) value ("I" ,"오후 5시" );
insert into timetable ( timetable_code, timtable_name) value ("J" ,"오후 6시" );
insert into timetable ( timetable_code, timtable_name) value ("K" ,"오후 7시" );
insert into timetable ( timetable_code, timtable_name) value ("L" ,"오후 8시" );
insert into timetable ( timetable_code, timtable_name) value ("M" ,"오후 9시" );
insert into timetable ( timetable_code, timtable_name) value ("N" ,"오후 10시" );
insert into timetable ( timetable_code, timtable_name) value ("O" ,"오후 11시" );
insert into timetable ( timetable_code, timtable_name) value ("P" ,"오전 12시" );

//채팅부분
create table chatroom(
chatroom_roomid varchar(150) not null,
chatroom_sendid int not null,
chatroom_recvid int not null,
chatroom_lastmsg varchar(150),
chatroom_unread_count int,
primary key(chatroom_roomid));

create table chatmessage(
chatmessage_num auto_incremen, int not null,
chatmessage_roomid varchar(100) not null,
chatmessage_writer varchar(100) not null,
chatmessage_send_time varchar(100),
chatmessage_recv_time varchar(100),
chatmessage_read_check int,
chatmessage_message varchar(1000) not null,
chatmessage_send_name varchar(100),
chatmessage_recv_name varchar(100),
primary key(chatmessage_num));

//파일부분
create table file(
file_uuid varchar(100) not null,
file_save_dir long not null,
file_name varchar(100) not null,
file_type int,
file_size long,
file_reg_date datetime default now(),
file_user_num int,
file_master_num int,
primary key(file_uuid));
