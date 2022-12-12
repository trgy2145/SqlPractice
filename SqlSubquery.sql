SELECT 
( SELECT CITY FROM CITIES CT WHERE CT.ID = C.CITYID),

* FROM CUSTOMERS AS C

WHERE ( SELECT CITY FROM CITIES CT WHERE CT.ID = C.CITYID)='�STANBUL'

-- METHOD 2



--SELECT * FROM CUSTOMERS AS C WHERE C.CITYID = 34  
-- �STEK� KOMUT YER�NE BUNU KULLANAB�L�RS�N..
SELECT * FROM CUSTOMERS AS C 
WHERE C.CITYID
IN (SELECT ID FROM CITIES WHERE CITY IN ( '�STANBUL','ANKARA'))

-- �LLERDE M��TER� SAYISI
SELECT CITYID ,COUNT(CITYID) AS TOPLAM FROM CUSTOMERS WHERE CITYID =34 GROUP BY CITYID

SELECT CT.CITY,COUNT(C.ID) AS CUSTOMERSCOUNT FROM CUSTOMERS C 
INNER JOIN CITIES CT  ON CT.ID = C.CITYID WHERE CT.CITY ='�STANBUL'
GROUP BY CT.CITY


SELECT *,
(SELECT COUNT(*) FROM CUSTOMERS WHERE CITYID = CT.ID) AS CUSTOMERCOUNT
FROM CITIES CT 
ORDER BY 3
