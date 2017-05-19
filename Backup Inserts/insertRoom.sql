 CREATE PROC insertRoom
  AS
  BEGIN
    BEGIN TRY
	 INSERT INTO Room VALUES (	1	,	4	);
	 INSERT INTO Room VALUES (	2	,	4	);
	 INSERT INTO Room VALUES (	3	,	4	);
	 INSERT INTO Room VALUES (	4	,	4	);
	 INSERT INTO Room VALUES (	5	,	4	);
	 INSERT INTO Room VALUES (	6	,	4	);
	 INSERT INTO Room VALUES (	7	,	4	);
	 INSERT INTO Room VALUES (	8	,	4	);
	 INSERT INTO Room VALUES (	9	,	4	);
	 INSERT INTO Room VALUES (	10	,	4	);
	END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertRoom
  select * from Room