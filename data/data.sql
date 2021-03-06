CREATE TABLE `user` (
  `uid` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `isAdmin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `order` (
  `oid` varchar(255) COLLATE utf8_bin NOT NULL,
  `uid` int(255) NOT NULL,
  `isActivated` tinyint(1) unsigned zerofill NOT NULL DEFAULT '0',
  `days` int(255) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `account` (
  `aid` varchar(255) COLLATE utf8_bin NOT NULL,
  `uid` int(11) NOT NULL,
  `activationDate` date DEFAULT NULL,
  `expireDate` date DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `user` VALUES (1, 'admin', 'i@larryzeta.cc', 'password', 1);

