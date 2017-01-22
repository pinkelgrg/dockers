DROP DATABASE IF EXISTS 5140Manilla;
CREATE DATABASE IF NOT EXISTS 5140Manilla;
USE 5140Manilla;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  username varchar(50) NOT NULL,
  password varchar(150) NOT NULL,
  created_timestamp timestamp NOT NULL, 
  modified_timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY username (username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO users (username, password,created_timestamp) VALUES ('pinkelgrg','changeMe', NOW());

use mysql;
CREATE USER IF NOT EXISTS 'appuser'@'%' IDENTIFIED BY '5140Manilla';
GRANT SELECT, INSERT, UPDATE on 5140Manilla.* TO 'appuser'@'%';
FLUSH PRIVILEGES;
