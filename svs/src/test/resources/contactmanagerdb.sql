CREATE USER contactmanager@localhost identified BY '1234';
GRANT usage ON *.* TO contactmanager@localhost identified BY '1234';
CREATE DATABASE IF NOT EXISTS contactmanager;
GRANT ALL privileges ON contactmanager.* TO contactmanager@localhost;
USE contactmanager;
CREATE TABLE CONTACTS
  (
     id        INT PRIMARY KEY AUTO_INCREMENT,
     firstname VARCHAR(30),
     lastname  VARCHAR(30),
     telephone VARCHAR(15),
     email     VARCHAR(30),
     created   TIMESTAMP DEFAULT NOW()
  );


CREATE TABLE `WORDS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eng_word` varchar(130) DEFAULT NULL,
  `rus_word` varchar(130) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


DROP TABLE `ARTICLE_REF`;
CREATE TABLE `ARTICLE_REF` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ARTICLE_ID` varchar(20) UNIQUE NOT NULL,
  `NAME` varchar(350) DEFAULT NULL,
  `BLOG_ID` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(5000) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE DATABASECHANGELOG, DATABASECHANGELOGLOCK;