/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/10/9 10:10:53                           */
/*==============================================================*/


drop table if exists article;

drop table if exists home_config;

drop table if exists pro_resource;

drop table if exists pro_role_resource;

drop table if exists user;

/*==============================================================*/
/* User: xrj_edu                                                */
/*==============================================================*/
create user xrj_edu;

/*==============================================================*/
/* Table: article                                               */
/*==============================================================*/
create table article
(
   ID                   varchar(24) not null comment '��ʶ',
   TITLE                varchar(100) not null comment '����',
   CONTENT              text not null comment '����',
   ATTACH               varchar(500) comment '����',
   STATUS               varchar(10) not null comment '״̬',
   OPERATOR_ID          varchar(24) comment '�����˱�ʶ',
   OPERATOR_TYPE        varchar(10) comment '����Ա�����û�',
   SHOW_WAY             varchar(10) comment '�Ű���ʾ��ʽ�����¡�����',
   RES_ID               varchar(24) comment '��Ŀid',
   CREATE_TIME          datetime comment '����ʱ��',
   UPDATE_TIME          datetime comment '����ʱ��',
   primary key (ID)
);
alter table article comment '���±�';

/*==============================================================*/
/* Table: home_config                                           */
/*==============================================================*/
create table home_config
(
   ID                   varchar(24) not null,
   SCHOOL_ID            varchar(24) comment 'ѧУ��ʶ',
   IMAGE                varchar(100) not null comment 'ͼƬ',
   image_location       varchar(10) not null comment 'ͼƬλ��',
   url                  varchar(255) comment '��ַ',
   STATUS               varchar(10) not null comment '״̬',
   CREATE_TIME          datetime not null comment '����ʱ��',
   UPDATE_TIME          datetime comment '����ʱ��',
   primary key (ID)
);

alter table home_config comment '��ҳ����';

/*==============================================================*/
/* Table: pro_resource                                          */
/*==============================================================*/
create table pro_resource
(
   ID                   varchar(24) not null comment '��Դ��ʶ',
   RES_NAME             varchar(50) not null comment '��Դ����',
   RES_TYPE             varchar(32) not null comment '��Դ���Ϳ��ܲ˵������ܵ�',
   RES_IMG              varchar(256) default NULL comment '��Դͼ��',
   SEQ                  int(11) default NULL comment '����',
   URI                  varchar(256) default NULL comment '��Դ����',
   METHOD_NAME          varchar(64) default NULL comment '���÷���',
   CREATOR              varchar(24) default NULL comment '������',
   EDIT_TIME            datetime default NULL comment '�޸�����',
   EDITOR               varchar(24) default NULL comment '�޸���',
   REMARK               varchar(512) default NULL comment '����˵��',
   RES_CODE             varchar(100) default NULL comment '��Դ����',
   STATUS               varchar(1) default NULL comment '״̬',
   RES_CSS              varchar(50) default NULL comment '��Դ��ʽ',
   ROOT_ID              varchar(24) default NULL comment '������Դ��ʶ',
   CREATE_TIME          datetime comment '����ʱ��',
   UPDATE_TIME          datetime comment '����ʱ��',
   Column_18            char(10),
   primary key (ID),
   key AK_Key_1 (ID)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='��Դ��';

/*==============================================================*/
/* Table: pro_role_resource                                     */
/*==============================================================*/
create table pro_role_resource
(
   ID                   varchar(24) not null comment 'ID',
   ROLE_TEMPLATE_ID     varchar(24) comment '��ɫ_id',
   USER_ID              varchar(24) comment '�û�id',
   RES_ID               varchar(24) comment '��Դid',
   DEPARTMENT_ID        varchar(24) comment '����id',
   TYPE                 varchar(24) not null comment '����',
   UPDATE_TIME          datetime comment '����ʱ��',
   CREATE_TIME          datetime comment '����ʱ��',
   primary key (ID)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='��ɫ��Դ����';

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   ID                   varchar(24) not null comment 'ID',
   CUSTOMER_ID          varchar(24) not null comment 'ѧУid',
   USER_NAME            varchar(50) comment '�û�����',
   PASSWORD             varchar(50) comment '�����Ϊ��',
   USER_TYPE            varchar(50) comment '����',
   REMARKS              varchar(50) comment '����',
   CREATE_DATE          datetime comment '����ʱ��',
   CREATER              varchar(50) comment '������',
   EDITOR               varchar(50) comment '�޸���',
   MOBILE               varchar(50) not null comment '�ֻ�����',
   STATUS               varchar(50) not null comment '״̬',
   TOKEN                varchar(50) not null,
   AVATAR               varchar(255) comment 'ͷ��',
   REAL_NAME            varchar(50) comment '��ʵ����',
   SEX                  varchar(2) comment '�Ա�',
   primary key (ID)
);

