 CREATE PROC insertVendorTable
  AS
  BEGIN
    BEGIN TRY
	 INSERT INTO VendorTable VALUES (1, 4,	'MIS'	);
	 INSERT INTO VendorTable VALUES (2, 4,	'ORC'	);
	 INSERT INTO VendorTable VALUES (3, 4, 'SAP'	);
	 INSERT INTO VendorTable VALUES (4, 4,	'HP'	);
	 INSERT INTO VendorTable VALUES (5, 4,	'IBM'	);
	 INSERT INTO VendorTable VALUES (6, 4, 'AMD'	);
	 INSERT INTO VendorTable VALUES (7, 4,	'INT'	);
	 INSERT INTO VendorTable VALUES (8, 4, 'WD'	);
	 INSERT INTO VendorTable VALUES (9, 4,	'EPS'	);
	 INSERT INTO VendorTable VALUES (10, 4,	'CIS'	);

	END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertVendorTable
  select * from VendorTable