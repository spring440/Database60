  CREATE PROC insertRaffle
  AS
  BEGIN
    BEGIN TRY
	
 INSERT INTO Raffle VALUES	(4	,	1	,	1	)	;
INSERT INTO Raffle VALUES	(4	,	10	,	1	)	;
INSERT INTO Raffle VALUES	(4	,	15	,	4	)	;
INSERT INTO Raffle VALUES	(4	,	20	,	5	)	;
INSERT INTO Raffle VALUES	(4	,	11	,	6	)	;
	END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertRaffle
  select * from Raffle