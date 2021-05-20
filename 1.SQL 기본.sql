# 날짜: 2021-05-17
# 이름 : 박재형
# 내용 : 1. SQL 기본

# 실습하기 1 - 1 
CREATE DATABASE `TestDB`;
DROP DATABASE `TestDB`;

# 실습하기 1 - 2
CREATE TABLE `USER1` (
	`uid` VARCHAR(10),
	`name` VARCHAR(10),
	`hp` CHAR(13),
	`age` INT
);

DROP TABLE `USER1`;

# 실습하기 1 - 3
INSERT INTO `USER1` VALUES ('A101','김유신','010-9214-8036', 27);
INSERT INTO `USER1` VALUES ('A102','박재형','010-1234-4567', 23);
INSERT INTO `USER1` VALUES ('A103','장보고','010-1111-2222', 23);
INSERT INTO `USER1` (`age`, `name`, `uid`, `hp`) VALUES (45, "강감찬", "A014", "010-2222-3333");
INSERT INTO `USER1` SET
 `name`="이순신",
 `age`=51,
 `hp`="010-9999-9888",
 `uid`="A105";
 
 # 실습하기 1 - 4
 SELECT `uid`,`name`,`age`,`hp` FROM `USER1`;
 SELECT `uid`,`name`,`hp` FROM `USER1`;
 SELECT * FROM `USER1`;
 SELECT * FROM `USER1` WHERE `uid`='A101';
 SELECT * FROM `USER1` WHERE `name`='박재형';
 SELECT * FROM `USER1` WHERE `age` > 30;
 
 # 실습하기 1 - 5
 UPDATE `USER1` SET `hp`="010-7979-7979";
 UPDATE `USER1` SET `uid`="B101", `name`="홍길동";
 UPDATE `USER1` SET `uid`="A101", `name`="김유신" WHERE age = 23;

 # 실습하기 1 -6
 DELETE FROM `USER1` WHERE `uid`="A101";
 DELETE FROM `USER1` WHERE `age`= 51;
 DELETE FROM `USER1` WHERE `age` > 25;
 
 INSERT INTO `USER1` VALUES ('A1303','박재형','010-9214-8036', 27);