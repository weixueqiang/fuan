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
   ID                   varchar(24) not null comment '标识',
   TITLE                varchar(100) not null comment '标题',
   CONTENT              text not null comment '内容',
   ATTACH               varchar(500) comment '附件',
   STATUS               varchar(10) not null comment '状态',
   OPERATOR_ID          varchar(24) comment '操作人标识',
   OPERATOR_TYPE        varchar(10) comment '管理员还是用户',
   SHOW_WAY             varchar(10) comment '排版显示方式，上下、左右',
   RES_ID               varchar(24) comment '栏目id',
   CREATE_TIME          datetime comment '创建时间',
   UPDATE_TIME          datetime comment '更新时间',
   primary key (ID)
);
alter table article comment '文章表';

/*==============================================================*/
/* Table: home_config                                           */
/*==============================================================*/
create table home_config
(
   ID                   varchar(24) not null,
   SCHOOL_ID            varchar(24) comment '学校标识',
   IMAGE                varchar(100) not null comment '图片',
   image_location       varchar(10) not null comment '图片位置',
   url                  varchar(255) comment '地址',
   STATUS               varchar(10) not null comment '状态',
   CREATE_TIME          datetime not null comment '创建时间',
   UPDATE_TIME          datetime comment '更新时间',
   primary key (ID)
);

alter table home_config comment '首页配置';

/*==============================================================*/
/* Table: pro_resource                                          */
/*==============================================================*/
create table pro_resource
(
   ID                   varchar(24) not null comment '资源标识',
   RES_NAME             varchar(50) not null comment '资源名称',
   RES_TYPE             varchar(32) not null comment '资源类型可能菜单、功能等',
   RES_IMG              varchar(256) default NULL comment '资源图标',
   SEQ                  int(11) default NULL comment '排序',
   URI                  varchar(256) default NULL comment '资源链接',
   METHOD_NAME          varchar(64) default NULL comment '调用方法',
   CREATOR              varchar(24) default NULL comment '创建者',
   EDIT_TIME            datetime default NULL comment '修改日期',
   EDITOR               varchar(24) default NULL comment '修改者',
   REMARK               varchar(512) default NULL comment '描述说明',
   RES_CODE             varchar(100) default NULL comment '资源编码',
   STATUS               varchar(1) default NULL comment '状态',
   RES_CSS              varchar(50) default NULL comment '资源样式',
   ROOT_ID              varchar(24) default NULL comment '顶级资源标识',
   CREATE_TIME          datetime comment '创建时间',
   UPDATE_TIME          datetime comment '更新时间',
   Column_18            char(10),
   primary key (ID),
   key AK_Key_1 (ID)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='资源表';

/*==============================================================*/
/* Table: pro_role_resource                                     */
/*==============================================================*/
create table pro_role_resource
(
   ID                   varchar(24) not null comment 'ID',
   ROLE_TEMPLATE_ID     varchar(24) comment '角色_id',
   USER_ID              varchar(24) comment '用户id',
   RES_ID               varchar(24) comment '资源id',
   DEPARTMENT_ID        varchar(24) comment '部门id',
   TYPE                 varchar(24) not null comment '类型',
   UPDATE_TIME          datetime comment '更新时间',
   CREATE_TIME          datetime comment '创建时间',
   primary key (ID)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色资源关联';

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   ID                   varchar(24) not null comment 'ID',
   CUSTOMER_ID          varchar(24) not null comment '学校id',
   USER_NAME            varchar(50) comment '用户姓名',
   PASSWORD             varchar(50) comment '密码可为空',
   USER_TYPE            varchar(50) comment '类型',
   REMARKS              varchar(50) comment '描述',
   CREATE_DATE          datetime comment '创建时间',
   CREATER              varchar(50) comment '创建人',
   EDITOR               varchar(50) comment '修改者',
   MOBILE               varchar(50) not null comment '手机号码',
   STATUS               varchar(50) not null comment '状态',
   TOKEN                varchar(50) not null,
   AVATAR               varchar(255) comment '头像',
   REAL_NAME            varchar(50) comment '真实姓名',
   SEX                  varchar(2) comment '性别',
   primary key (ID)
);

