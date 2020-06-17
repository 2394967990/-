/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/6/15 20:27:51                           */
/*==============================================================*/


drop table if exists administrator;

drop table if exists paper;

drop table if exists student;

drop table if exists teacher;

/*==============================================================*/
/* Table: administrator                                         */
/*==============================================================*/
create table administrator
(
   aid                  char(10) not null,
   aname                varchar(10),
   asex                 char(10),
   password             varchar(20),
   primary key (aid)
);

/*==============================================================*/
/* Table: paper                                                 */
/*==============================================================*/
create table paper
(
   pid                  char(10) not null,
   tid                  char(10),
   pname                varchar(10),
   ptitile              varchar(10),
   primary key (pid)
);

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student
(
   sid                  char(10) not null,
   tid                  char(10),
   sname                varchar(10),
   grade                varchar(10),
   ssex                 char(10),
   stitle               varchar(10),
   primary key (sid)
);

/*==============================================================*/
/* Table: teacher                                               */
/*==============================================================*/
create table teacher
(
   tid                  char(10) not null,
   aid                  char(10),
   tname                varchar(10),
   xibie                varchar(10),
   primary key (tid)
);

alter table paper add constraint FK_manage3 foreign key (tid)
      references teacher (tid) on delete restrict on update restrict;

alter table student add constraint FK_manage2 foreign key (tid)
      references teacher (tid) on delete restrict on update restrict;

alter table teacher add constraint FK_manege1 foreign key (aid)
      references administrator (aid) on delete restrict on update restrict;

