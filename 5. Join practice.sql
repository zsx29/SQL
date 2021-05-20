# 날짜 : 2021-05-18
# 이름 : 박재형
# 내용 : join practice

# (1)
SELECT * FROM `SALE`
JOIN `MEMBER` ON `SALE`.uid = `MEMBER`.uid;

# (2)
SELECT a.`seq`, a.`year`, a.`sales`, b.`hp`, b.`pos`
FROM `SALE` AS a, `MEMBER` AS b
WHERE a.uid = b.uid;

# (3) = (4) = (5)
SELECT a.`seq`, a.`uid`, `sales`, `name`, `pos`
FROM `SALE` AS a
JOIN `MEMBER` AS b
ON a.`uid` = b.`uid`;

# (3) = (4) = (5)
SELECT a.`seq`, a.`uid`, `sales`, `name`, `pos`
FROM `SALE` AS a, `MEMBER` AS b
WHERE a.`uid` = b.`uid`;

# (3) = (4) = (5)
SELECT a.`seq`, a.`uid`, `sales`, `name`, `pos`
FROM `SALE` AS a
JOIN `MEMBER` AS b
USING(uid)
WHERE `sales` >= 100000


# (6)
SELECT a.`seq`, a.`uid`, b.`name`, b.`pos`, `year`, SUM(sales) AS '합계'
FROM `SALE` AS a
JOIN `MEMBER` AS b
ON a.`uid` = b.`uid`
GROUP BY a.`uid`, a.`year`
HAVING `합계` >= 100000
ORDER BY a.`year` ASC, `합계` DESC;

# (7)
SELECT * FROM `SALE` AS a
JOIN `MEMBER` AS b ON a.uid = b.uid
JOIN `DEPART` AS c ON b.dep = c.depNo;

# (8)
SELECT a.seq, a.uid, a.sales, b.name, b.pos, c.name
FROM `SALE` AS a
right JOIN `MEMBER` AS b USING(uid)
left JOIN `DEPART` AS c ON b.dep = c.depNo
WHERE `sales` > 100000
ORDER BY `sales` DESC;

# (9)
