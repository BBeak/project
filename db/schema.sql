#DB 생성
DROP DATABASE IF EXISTS porject;
CREATE DATABASE project;
USE project;

#Create article table

CREATE TABLE article(
id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
regDate DATETIME NOT NULL,
updateDate DATETIME NOT NULL, 
title CHAR(100),
`body` TEXT NOT NULL
);
# 게시물, 테스트 데이터 생성
INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목1',
`body` = '내용1';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목2',
`body` = '내용2';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = '제목3',
`body` = '내용3';

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
    
    INSERT INTO `member`
    SET regDate = NOW(),
    updateDate = NOW(),
    loginId = "bgh3441@gmail.com",
    loginPw = "7412du"
    `name` = "user",
    email = "bgh3441@gmail.com";