
DECLARE @JSON VARCHAR(MAX)

SELECT @JSON = BulkColumn
FROM OPENROWSET 
(BULK 'C:\Users\Xian\Desktop\ct.json', SINGLE_CLOB) 
AS j

SELECT * FROM OPENJSON (@JSON)
WITH (state VARCHAR(7), 
	  postcode VARCHAR(7),
		street VARCHAR(100),
		location  geometry) -- new column name
;
