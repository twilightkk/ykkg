CREATE TABLE `@cms@@zhubiao@` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(24) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `posid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(64) NOT NULL DEFAULT '',
  `inputtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '点击总数',
  `yesterdayviews` int(11) NOT NULL DEFAULT '0' COMMENT '最日',
  `dayviews` int(10) NOT NULL DEFAULT '0' COMMENT '今日点击数',
  `weekviews` int(10) NOT NULL DEFAULT '0' COMMENT '本周访问数',
  `monthviews` int(10) NOT NULL DEFAULT '0' COMMENT '本月访问',
  `viewsupdatetime` int(10) NOT NULL DEFAULT '0' COMMENT '点击数更新时间',
  PRIMARY KEY  (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`weekviews`,`views`,`dayviews`,`monthviews`,`status`,`id`),
  KEY `thumb` (`thumb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
