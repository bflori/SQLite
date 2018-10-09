CREATE TABLE adatok(helyezes INTEGER PRIMARY KEY, nev TEXT, vagyon
REAL, ev INTEGER, ceg TEXT, orszag TEXT);
INSERT INTO adatok VALUES(1,'Carlos Slim Helu',73,1940,'telecom','Mexikó');
INSERT INTO adatok VALUES(2,'Bill Gates',67,1956,'Microsoft','USA');
INSERT INTO adatok VALUES(3,'Amancio Ortega',57,1936,'Zara','Spanyolország');
INSERT INTO adatok VALUES(4,'Warren Buffett',53.5,1931,'Berkshire Hathaway','USA');
INSERT INTO adatok VALUES(5,'Larry Ellison',43,1945,'Oracle','USA');
SELECT nev, 2013-ev AS Kor FROM adatok WHERE ev BETWEEN 1934 AND 1943 ORDER BY nev;
SELECT helyezes AS Helyezés, nev AS Név,vagyon*280 AS Vagyon FROM adatok WHERE orszag='USA';
SELECT avg(vagyon) AS Átlag FROM adatok WHERE ev <=1950;
SELECT COUNT (nev) AS Darab , orszag FROM adatok GROUP BY orszag ORDER BY Darab DESC;