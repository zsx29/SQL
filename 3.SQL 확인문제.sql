# 날짜 : 2021-05-17
# 이름 : 박재형
# 내용 : 3.SQL 확인문제

CREATE TABLE `tbl_member` (
	`memberID` CHAR(8) PRIMARY key NOT NULL,
	`memberName` CHAR(5) NOT NULL,
	`memverAddress` CHAR(20)
);

INSERT INTO `tbl_member` VALUES ("jang","장보고","완도군");
INSERT INTO `tbl_member` VALUES ("kang","강감찬","서울시");
INSERT INTO `tbl_member` (`memberID`,`memberName`) VALUES ("kim","김유신");
INSERT INTO `tbl_member` VALUES ("lee","이순신","서울시");

CREATE TABLE `tbl_product` (
	`productName` CHAR(4) NOT NULL PRIMARY KEY,
	`cost` INT NOT NULL,
	`makeDate` DATE NOT NULL,
	`company` CHAR(5),
	`amount` INT NOT null
);

INSERT INTO `tbl_product` VALUES ("냉장고",800,20210517,"LG",1);
INSERT INTO `tbl_product` VALUES ("노트북",1500,20210517,"삼성",5);
INSERT INTO `tbl_product` VALUES ("컴퓨터",1000,20210517,"LG",10);

SELECT * FROM `tbl_member` WHERE `memverAddress`="서울시";