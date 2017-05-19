 CREATE PROC insertVendor
  AS
  BEGIN
    BEGIN TRY
	INSERT INTO Vendor VALUES (	'MIS', 'Microsoft'	,	50	);
	INSERT INTO Vendor VALUES (	'ORC', 'Oracle'	,	89	);
	INSERT INTO Vendor VALUES (	'SAP', 'SAP'	,	5	);
	INSERT INTO Vendor VALUES (	'HP', 'HP'	,	123	);
	INSERT INTO Vendor VALUES (	'IBM', 'IBM'	,	69	);
	INSERT INTO Vendor VALUES (	'AMD', 'AMD'	,	96	);
	INSERT INTO Vendor VALUES (	'INT', 'Intel'	,	111	);
	INSERT INTO Vendor VALUES (	'WD','Western Digital'	,	209	);
	INSERT INTO Vendor VALUES (	'EPS', 'Epson'	,	145	);
	INSERT INTO Vendor VALUES (	'CIS', 'CISCO'	,	33	);


	END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertVendor
  select * from Vendor