CREATE PROC insertSchedule
  AS
  BEGIN
    BEGIN TRY
 INSERT INTO Schedule VALUES	(	4	,	12	,	1	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	49	,	2	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	111	,	3	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	113	,	4	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	114	,	5	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	118	,	6	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	125	,	7	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	130	,	8	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	133	,	9	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	18	,	10	,	11	)	;
 INSERT INTO Schedule VALUES	(	4	,	20	,	1	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	31	,	2	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	32	,	3	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	35	,	4	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	47	,	5	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	53	,	6	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	102	,	7	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	103	,	8	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	104	,	9	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	105	,	10	,	12	)	;
 INSERT INTO Schedule VALUES	(	4	,	108	,	1	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	115	,	2	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	116	,	3	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	117	,	4	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	123	,	5	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	124	,	6	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	131	,	7	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	134	,	8	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	135	,	9	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	136	,	10	,	1	)	;
 INSERT INTO Schedule VALUES	(	4	,	11	,	1	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	21	,	2	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	36	,	3	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	45	,	4	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	48	,	5	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	50	,	6	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	2	,	7	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	3	,	8	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	6	,	9	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	101	,	10	,	2	)	;
 INSERT INTO Schedule VALUES	(	4	,	107	,	1	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	109	,	2	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	112	,	3	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	119	,	4	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	120	,	5	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	121	,	6	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	122	,	7	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	126	,	8	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	127	,	9	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	128	,	10	,	3	)	;
 INSERT INTO Schedule VALUES	(	4	,	129	,	1	,	4	)	;
 INSERT INTO Schedule VALUES	(	4	,	33	,	2	,	4	)	;


 END TRY
    BEGIN CATCH
    END CATCH
  END

EXEC insertSchedule
  select * from Schedule