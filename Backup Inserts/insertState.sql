CREATE PROC insertState
  AS
  BEGIN
    BEGIN TRY
		INSERT INTO State VALUES (	'AL'	,	'Alberta'	,	'CA'	);
		INSERT INTO State VALUES (	'BC'	,	'British Columbia'	,	'CA'	);
		INSERT INTO State VALUES (	'CA'	,	'California'	,	'US'	);
		INSERT INTO State VALUES (	'ENG'	,	'England'	,	'UK'	);
		INSERT INTO State VALUES (	'MD'	,	'Maryland'	,	'US'	);
		INSERT INTO State VALUES (	'NSW'	,	'New South Wales'	,	'AU'	);
		INSERT INTO State VALUES (	'OH'	,	'Ohio'	,	'US'	);
		INSERT INTO State VALUES (	'OR'	,	'Oregon'	,	'US'	);
		INSERT INTO State VALUES (	'QLD'	,	'Queensland'	,	'AU'	);
		INSERT INTO State VALUES (	'VIC'	,	'Victoria'	,	'AU'	);
		INSERT INTO State VALUES (	'WA'	,	'Washington'	,	'US'	);

		END TRY
    BEGIN CATCH
    END CATCH
  END

  EXEC insertState
  Select * from State