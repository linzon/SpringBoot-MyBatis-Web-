CREATE TABLE testdb.sys_user (
  id decimal(20, 0) NOT NULL COMMENT '主键id',
  code varchar(50) DEFAULT NULL COMMENT '登录账户',
  passwd varchar(50) DEFAULT NULL COMMENT '登录密码',
  name varchar(255) DEFAULT NULL COMMENT '昵称',
  sex varchar(10) DEFAULT NULL COMMENT '性别',
  age int(11) DEFAULT NULL COMMENT '年龄',
  email varchar(100) DEFAULT NULL COMMENT '邮箱',
  qq bigint(20) DEFAULT NULL COMMENT 'qq号码',
  phone varchar(50) DEFAULT NULL COMMENT '电话号码',
  create_time datetime DEFAULT NULL COMMENT '创建时间',
  is_effective int(11) DEFAULT NULL COMMENT '是否有效',
  is_admin int(11) DEFAULT NULL COMMENT '是否管理员',
  PRIMARY KEY (id)
)
ENGINE = INNODB
AVG_ROW_LENGTH = 16384
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;

--------------------------------------------------------------------------------------
CREATE TABLE testdb.sys_user_login (
  id bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'user主键',
  lastlogin_time datetime DEFAULT NULL COMMENT '最后一次登陆时间',
  is_login int(11) DEFAULT NULL COMMENT '是否登录状态',
  PRIMARY KEY (id)
)
ENGINE = INNODB
AUTO_INCREMENT = 1
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;