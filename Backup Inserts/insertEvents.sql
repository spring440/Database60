ALTER PROC insertEvents
  AS
  BEGIN
    BEGIN TRY
	INSERT INTO Event VALUES ('SQLSaturday #626 - Budapest 2017'	, '6-May-17', 76	);
	INSERT INTO Event VALUES ('SQLSaturday #615 - Baltimore 2017', '6-May-17', 1	);
	INSERT INTO Event VALUES ('SQLSaturday #608 - Bogota 2017'	, '13-May-17', 77	);
	INSERT INTO Event VALUES ('SQLSaturday #616 - Kyiv 2017'	, '20-May-17', 78	);
	INSERT INTO Event VALUES ('SQLSaturday #588 - New York City 2017'	, '20-May-17', 74	);
	INSERT INTO Event VALUES ('SQLSaturday #630 - Brisbane 2017'	, '27-May-17', 79	);
	INSERT INTO Event VALUES ('SQLSaturday #599 - Plovdiv 2017'	, '27-May-17', 80	);
	INSERT INTO Event VALUES ('SQLSaturday #638 - Philadelphia 2017'	, '3-Jun-17', 75	);

	END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertEvents
  select * from Event

