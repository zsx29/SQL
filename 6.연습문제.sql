# 날짜 : 2021-05-20
# 이름 : 박재형
# 내용 : 연습문제

#문제 1
CREATE TABLE `BOOK` (
	`bookid` INT AUTO_INCREMENT PRIMARY KEY,
	`bookname` VARCHAR(10),
	`publisher` VARCHAR(10),
	`price` INT
);

#문제 2
CREATE TABLE `Customer`(
	`custid` INT AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(10),
	`address` VARCHAR(10),
	`phone` CHAR(13) NULL
);

#문제 3
CREATE TABLE `Orders` (
	`orderid` INT AUTO_INCREMENT PRIMARY KEY,
	`custid` TINYINT,
	`bookid` TINYINT,
	`saleprice` INT,
	`orderdate` DATE
);

#문제 4
#문제 5
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('축구의 역사', '굿스포츠', 7000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('축구하는 여자', '나무수', 13000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('축구의 이해', '대한미디어', 22000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('골프 바이플', '대한미디어', 35000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('피겨 교본', '굿스포츠', 8000);

INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('역도 단계별기술', '굿스포츠', 6000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('야구의 추억', '이상미디어', 20000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('야구를 부탁해', '이상미디어', 13000);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('올림픽이야기', '삼성당', 7500);
INSERT INTO `BOOK` (`bookname`,`publisher`,`price`) VALUES ('Olympic Ch', 'Perason', 13000);

INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`, `orderdate`) VALUES (1 , 1, 6000, 20210701);
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`, `orderdate`) VALUES (1 , 3, 21000, 20210703);
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`, `orderdate`) VALUES (2 , 5, 8000, 20210703);
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`, `orderdate`) VALUES (3 , 6, 6000, 20210704);
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`, `orderdate`) VALUES (4 , 7, 20000, 20210705);

INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`, `orderdate`) VALUES (1 , 2, 12000, 20210707);
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`, `orderdate`) VALUES (4 , 8, 13000, 20210707);
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`, `orderdate`) VALUES (3 , 10, 12000, 2021078);
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`, `orderdate`) VALUES (2 , 10, 7000, 20210709);
INSERT INTO `Orders` (`custid`,`bookid`,`saleprice`, `orderdate`) VALUES (3 , 8, 13000, 20210710);

INSERT INTO `Customer` (`name`,`address`,`phone`) VALUES ('박지성', '영국 맨체스터', '010-5000-0001');
INSERT INTO `Customer` (`name`,`address`,`phone`) VALUES ('김연아', '대한민국 서울', '010-5000-0001');
INSERT INTO `Customer` (`name`,`address`,`phone`) VALUES ('장미란', '대한민국 강원도', '010-5000-0001');
INSERT INTO `Customer` (`name`,`address`,`phone`) VALUES ('추신수', '미국 클리브랜드', '010-5000-0001');
INSERT INTO `Customer` (`name`,`address`) VALUES ('박세리', '대한민국 대전');

#문제 6
SELECT DISTINCT `publisher` FROM `BOOK`;

#문제 7
SELECT * FROM `BOOK` WHERE `price` < 20000;

#문제 8
SELECT * FROM `BOOK` WHERE `price` >= 10000 AND `price` <= 20000;

#문제 9
SELECT * FROM `BOOK` WHERE `publisher` = '굿스포츠' OR `publisher` = '대한미디어';

#문제 10
SELECT * FROM `BOOK` WHERE `bookname` = '축구의 역사';

#문제 11
SELECT * FROM `BOOK` WHERE `bookname` LIKE '%축구%';

#문제 12
SELECT * FROM `BOOK` WHERE `bookname` LIKE '_구%';

#문제 13
SELECT * FROM `BOOK` WHERE `bookname` LIKE '축구%' and `price` >= 20000;

#문제 14
SELECT * FROM `BOOK` ORDER BY `bookname` ASC;

#문제 15
SELECT * FROM `BOOK` ORDER BY `price` ASC, `bookname` ASC ;  

#문제 16
SELECT * FROM `BOOK` ORDER BY `price` DESC, `publisher` asc;	

#문제 17
SELECT SUM(saleprice) AS '총판매액' FROM `Orders`;

#문제 18
SELECT SUM(saleprice) AS '총매출' FROM `Orders` WHERE `Custid` = 2;

#문제 19
SELECT 
	SUM(`saleprice`) AS '총판매액',
	AVG(`saleprice`) AS '평균가',
	MIN(`saleprice`) AS '최소값',
	MAX(`saleprice`) AS '최대값'
FROM `Orders`;

#문제 20
SELECT COUNT(*) AS `판매건수` FROM `Orders`;


#문제 21
SELECT `custid`, COUNT(*) AS `수량` FROM `Orders`
WHERE `saleprice` >= 8000
GROUP BY `custid`
HAVING `수량` >= 2;

#문제 22
SELECT * FROM `Customer` AS a
JOIN `Orders` AS b
USING(`custid`);
###### 같음 ######
SELECT * FROM `Customer` AS a, `Orders` AS b
WHERE a.custid = b.custid;

#문제 23
SELECT * FROM `Customer` AS a
JOIN `Orders` AS b
ON a.custid = b.custid
ORDER BY a.custid;	

#문제 24
SELECT `name`, `saleprice` FROM `Customer` AS a
JOIN `Orders` AS b
ON a.custid = b.custid;

#문제 25
SELECT `name`, SUM(`saleprice`) FROM `Customer` AS a
JOIN `Orders` AS b
ON a.custid = b.custid
GROUP BY `name`
ORDER BY `name`;

#문제 26
SELECT `name`, `bookname` FROM `Customer` AS a
JOIN `Orders` AS b on a.custid = b.custid
JOIN `BOOK` AS c ON b.bookid = c.bookid; 

#문제 27
SELECT `name`, `bookname` FROM `Customer` AS a
JOIN `Orders` AS b on a.custid = b.custid
JOIN `BOOK` AS c ON b.bookid = c.bookid
WHERE `price` = 20000;

#문제 28 : 서브쿼리
SELECT `bookname` FROM `BOOK`
WHERE `price` =
	(SELECT MAX(`price`) FROM `BOOK`);

#문제 29
INSERT INTO `BOOK` (`bookname`, `publisher`, `price`) VALUES ('스포츠 의학', '한솔의학서적', 90000);

#문제 30
INSERT INTO `BOOK` (`bookname`, `publisher`) VALUES ('스포츠 의학', '한솔의학서적');

#문제 31
UPDATE `Customer` SET `address` = '대한민국 부산' WHERE `custid` = 5;

#문제 32
DELETE from `Customer` WHERE `custid` = 5;















