CREATE PROC insertSponsor
  AS
  BEGIN
    BEGIN TRY
 INSERT INTO Sponsor VALUES ( '	VMWare	 '	,	4	,	4	);
 INSERT INTO Sponsor VALUES ( '	Verizon Digital Media Services	 '	,	4	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	Microsoft Corporation (GAP) (GAP Sponsor)	 '	,	4	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	Tintri	 '	,	4	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	Amazon Web Services, LLC	 '	,	3	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	Pyramid Analytics (GAP Sponsor)	 '	,	3	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	Pure Storage	 '	,	3	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	Profisee	 '	,	3	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	NetLib Security	 '	,	2	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	Melissa Data Corp.	 '	,	2	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	Red Gate Software	 '	,	2	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	SentryOne	 '	,	2	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	Hush Hush	 '	,	1	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	COZYROC	 '	,	1	,	4	)	;
 INSERT INTO Sponsor VALUES ( '	SQLDocKit by Acceleratio Ltd.	 '	,	1	,	4	)	;
 
 EXEC insertSponsor
 select * from Sponsor