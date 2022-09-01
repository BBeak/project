#DB 생성
DROP DATABASE IF EXISTS porject;
CREATE DATABASE project;
USE project;

#Create Member table

CREATE TABLE `member`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    loginId CHAR(20) NOT NULL, 
    loginPw CHAR(20) NOT NULL, 
    `authLevel` SMALLINT(2) UNSIGNED DEFAULT 3 COMMENT 'Authlevel ( 3 = normal, 7 = admin)',
    `name` CHAR(20) NOT NULL,
    email CHAR(50) NOT NULL,
    delStatus TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Is_Withdraw?( 0 = beforWithraw, 1 = withdraw)',
    delDate DATETIME COMMENT 'withdraw date'
    );
    
    INSERT INTO `member`
    SET regDate = NOW(),
    updateDate = NOW(),
    loginId = "bkh3441@gmail.com",
    loginPw = "1q2w3e4r!",
    `name` = "admin",
    email = "bkh3441@gmail.com";