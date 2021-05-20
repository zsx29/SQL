# 날짜 : 2021-05-17
# 이름 : 박재형
# 내용 : 2.테이블 설정

# 실습하기 2 - 1
CREATE TABLE `USER2` (
	`uid` VARCHAR(10) PRIMARY key,
	`name` VARCHAR(10),
	`hp` CHAR(13),
	`age` TINYINT	
);

INSERT INTO `USER2` VALUES ('A104','개똥산','010-9214-8036', 27);
INSERT INTO `USER2` VALUES ('A105','박재형','010-1234-4567', 23);
INSERT INTO `USER2` VALUES ('A106','장보고','010-1111-2222', 23);

# 실습하기 2 - 2
CREATE TABLE `USER3` (
	`uid` VARCHAR(10) PRIMARY key,
	`name` VARCHAR(10),
	`hp` CHAR(13) UNIQUE,
	`age` TINYINT	
);

INSERT INTO `USER3` VALUES ('A104','개똥산','010-4650-1586', 27);
INSERT INTO `USER3` VALUES ('A105','박재형','010-1234-6969', 23);
INSERT INTO `USER3` VALUES ('A106','장보고','010-1111-0011', 23);
INSERT INTO `USER3` (`uid`,`age`) VALUES ("A107", 21);
INSERT INTO `USER3` (`uid`,`age`) VALUES ("A108", 31);

# 실습하기 2 - 3
CREATE TABLE `USER4` (
	`uid` VARCHAR(10) PRIMARY key,
	`name` VARCHAR(10) NOT NULL,
	`hp` CHAR(13) UNIQUE,
	`age` TINYINT DEFAULT 10    	
);

INSERT INTO `USER4` VALUES ('A104','개똥산','010-4650-1586', 27);
INSERT INTO `USER4` VALUES ('A105','박재형','010-1234-6969', 23);
INSERT INTO `USER4` VALUES ('A106','장보고','010-1111-0011', 23);
INSERT INTO `USER4` (`uid`,`age`) VALUES ("A107", 21);
INSERT INTO `USER4` (`uid`,`age`) VALUES ("A108", 31);
INSERT INTO `USER4` (`uid`,`name`,`age`) VALUES ("A109","박재형", 31);
INSERT INTO `USER4` (`uid`,`name`,`hp`) VALUES ("A110","박재형", "010-1111-1111");

# 실습하기 2 - 4 (시퀀스 칼럼 설정)
CREATE TABLE `USER5` (
	`seq` INT AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(10),
	`gender` TINYINT,
	`age` INT,
	`addr` VARCHAR(225)
);

INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('박재형', '1', 27, '부산시 서구');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('김유신', '1', 22, '부산시 중구');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('장보고', '2', 24, '부산시 북구');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('김춘추', '1', 52, '부산시 남구');
INSERT INTO `USER5` (`name`,`gender`,`age`,`addr`) VALUES ('이순신', '2', 11, '부산시 진구');

# 실습하기 2 - 5
CREATE TABLE `USER6` SELECT * FROM `USER5`;
SELECT * FROM `USER6`;

# 실습하기 2 - 6 (테이블의 칼럼구조만 복사)
CREATE TABLE `USER7` LIKE `USER5`;

# 실습하기 2 - 7 (테이블의 데이터만 복사)
INSERT INTO `USER7` SELECT * FROM `USER5`;
INSERT INTO `USER7` (`name`,`gender`,`age`,`addr`);

