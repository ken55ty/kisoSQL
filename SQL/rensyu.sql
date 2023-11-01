Q16
SELECT 地域,COUNT(*)
FROM 輸出先
GROUP BY 地方
HAVING COUNT(*) >= 3;

Q17
SELECT *
FROM 売上明細
WHERE 商品コード IN
(SELECT 商品コード
FROM 商品
WHERE 単価 >= 300
);

Q18
SELECT *
FROM 売上明細 U
WHERE 個数 <
(SELECT AVG(個数)
FROM 売上明細
WHERE U.商品コード
);

Q19
INSERT INTO 輸出先(輸出先コード,輸出先名,人口,地域)
VALUE (12,'ミナンミ王国',100,'南洋');
INSERT INTO 輸出先(輸出先コード,輸出先名,人口,地域)
VALUE (15,'バローヌ王国',200,'中部');
INSERT INTO 輸出先(輸出先コード,輸出先名,人口,地域)
VALUE (22,'トカンタ王国',160,'北洋');
INSERT INTO 輸出先(輸出先コード,輸出先名,人口,地域)
VALUE (23,'アルファ王国',120,'北洋');

Q20
CREATE VIEW 北洋国(輸出先コード,輸出先,人口)
AS SELECT 輸出先コード,輸出先,人口
FROM 輸出先コード
WHERE 地域='北洋';

Q21
UPDATE 輸出先
SET 人口=150
WHERE 輸出先名='トカンタ国';

Q22
DELETE FROM 輸出先
WHERE 輸出先名='バローヌ国';