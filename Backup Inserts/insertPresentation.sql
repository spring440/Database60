CREATE PROCEDURE insertPresentation
(
@Speaker nvarchar(75),
@Presentation nvarchar(75)
)
AS
BEGIN TRY
	INSERT INTO Presentation (presentationSpeaker, presentationTitle) VALUES (@Speaker, @Presentation);
END TRY
BEGIN CATCH
	PRINT N 'AN ERROR OCCURRED WITH PROCEDURE insertPresentation. COULD NOT INSERT DATA. SEE ERROR ABOVE';
END CATCH;


DELETE FROM Presentation
go
Execute insertPresentation 'Speaker1', 'Presentation1'
go
Execute insertPresentation 'Speaker1', 'Presentation2'
GO

Select * FROM Presentation
