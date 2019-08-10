CREATE USER 'cranki'@'%'
  IDENTIFIED BY 'abcd1234';
GRANT ALL
  ON *.*
  TO 'cranki'@'%'
  WITH GRANT OPTION;

CREATE DATABASE mimoza;

USE mimoza;

CREATE TABLE user (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id),
    name VARCHAR(20) NOT NULL,
    CONSTRAINT uc_name UNIQUE (name),
    email VARCHAR(50) NOT NULL,
    CONSTRAINT uc_email UNIQUE (email),
    password VARCHAR(255) NOT NULL,
    avatar VARCHAR(255) NOT NULL,
    created BIGINT UNSIGNED NOT NULL,
    last_login BIGINT UNSIGNED NOT NULL
);
