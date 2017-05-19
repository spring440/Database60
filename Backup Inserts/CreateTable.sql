CREATE PROCEDURE createTable
  AS
  BEGIN

      DROP TABLE Person;
	  DROP TABLE Role;
	  DROP TABLE PersonRole;
	  DROP TABLE Country;
	  DROP TABLE State;
	  DROP TABLE City;
	  DROP TABLE Location;
	  DROP TABLE Event;
	  DROP TABLE Track;
	  DROP TABLE ClassDifficulty;
	  DROP TABLE Class;
	  DROP TABLE Room;
	  DROP TABLE Schedule;
	  DROP TABLE Vendor;
	  DROP TABLE VendorTable;
	  DROP TABLE Raffle;
	  DROP TABLE SponsorLevel;
	  DROP TABLE Sponsor;
	  DROP TABLE ClassAttendee;
	  

CREATE TABLE Person(																			--1
				personId INT IDENTITY				PRIMARY KEY	NOT NULL,		
				personLast NVARCHAR(25)		NOT NULL,
				personFirst NVARCHAR(25)	NOT NULL,
				personEmail	NVARCHAR(50)) ;

CREATE TABLE Role(																				--2
				roleId INT IDENTITY					PRIMARY KEY,									
				roleDescription VARCHAR(50) NOT NULL UNIQUE);

CREATE TABLE PersonRole(																		--3							
				roleId INT NOT NULL FOREIGN KEY REFERENCES Role(roleId),
				personId INT NOT NULL FOREIGN KEY REFERENCES Person(personId));	

CREATE TABLE Country(                                                                            --4                
                countryId NVARCHAR(2) PRIMARY KEY NOT NULL,
                countryName NVARCHAR(25)    NOT NULL
);

CREATE TABLE State(                                                                                --5
                stateId NVARCHAR(3)    PRIMARY KEY NOT NULL,
                stateName NVARCHAR(25) NOT NULL,
                countryId NVARCHAR (2) NOT NULL

    FOREIGN KEY(countryId) REFERENCES Country(countryId)
);

CREATE TABLE City(																				--6
				cityId NVARCHAR(3)				PRIMARY KEY NOT NULL,
				cityName NVARCHAR(25)		NOT NULL);
				/*stateId	NVARCHAR(3)			FOREIGN KEY	(stateId)	REFERENCES State(stateId) NOT NULL)*/
				

CREATE TABLE Location
(
	locationId INT IDENTITY					PRIMARY KEY NOT NULL,
	locationAddress NVARCHAR(60) not null,
	locationZip NVARCHAR(20),
	cityId INT not null,
	stateId NVARCHAR(3) not null FOREIGN KEY(stateId) REFERENCES State(stateId),
	countryId NVARCHAR(2) not null FOREIGN KEY(countryId) REFERENCES Country(countryId)
);
 alter table Location add FOREIGN KEY (countryId) REFERENCES Country(countryId), FOREIGN KEY (stateId) REFERENCES State(stateId);

CREATE TABLE Event(																			--8
			   eventId INT	IDENTITY	NOT NULL			PRIMARY KEY,									
			   eventDescription NVARCHAR(75) NOT NULL,
			   eventDate DATE NOT NULL,
			   locationId INT NOT NULL		FOREIGN KEY (locationId) REFERENCES Location(locationId),
			  );

CREATE TABLE Track(																			--9
			trackId INT IDENTITY PRIMARY KEY,							
			trackDescription VARCHAR(50) NOT NULL UNIQUE);

CREATE TABLE ClassDifficulty(																--10
      classDifficultyId INT IDENTITY PRIMARY KEY,
      difficultyDescription VARCHAR(20) NOT NULL UNIQUE);

CREATE TABLE Class(																			--11
				classId NVARCHAR(10)		PRIMARY KEY NOT NULL,
				eventId INT					FOREIGN KEY	(eventId)		REFERENCES Event(eventId) NOT NULL, 
				classTitle NVARCHAR(25),
				classDescription NVARCHAR(100),
				classDifficultyId INT			FOREIGN KEY	(classDifficultyId) REFERENCES ClassDifficulty(classDifficultyId) NOT NULL,	
				classDuration	INT NOT NULL,
				personId	INT				FOREIGN KEY	(personId) REFERENCES Person(personId) NOT NULL,
				trackId	INT					FOREIGN KEY	(trackId) REFERENCES Track(trackId) NOT NULL);

CREATE TABLE Room(																			--12
      roomId INT IDENTITY PRIMARY KEY,			
      eventId INT,
	  occupancy INT);


CREATE TABLE Schedule(																		--13
      scheduleId INT IDENTITY PRIMARY KEY,
      eventId INT FOREIGN KEY	(eventId)		REFERENCES Event(eventId) NOT NULL, 
	  classId NVARCHAR(10) FOREIGN KEY (classId) REFERENCES Class(classId),
      roomId INT NOT NULL FOREIGN KEY REFERENCES Room(roomId),
      scheduleTime INT NOT NULL,
      UNIQUE(eventId, roomId));

CREATE TABLE Vendor(																		--14
				vendorId NVARCHAR(15)		PRIMARY KEY NOT NULL ,
				vendorDesciption NVARCHAR(50) NOT NULL, 		
				personId INT				FOREIGN KEY	(personId)		REFERENCES Person(personId) NOT NULL);

CREATE TABLE VendorTable(																	--15
				tableId INT 				PRIMARY KEY,
				eventId	INT					FOREIGN KEY	(eventId)		REFERENCES Event(eventId) NOT NULL, 
				vendorId NVARCHAR(15)		FOREIGN KEY	(vendorId)		REFERENCES Vendor(vendorId) NOT NULL);

CREATE TABLE Raffle(																		--16	
				raffleId INT	IDENTITY			PRIMARY KEY NOT NULL, 
				eventId	 INT				FOREIGN KEY	(eventId)		REFERENCES Event(eventId) NOT NULL, 
				personId INT				FOREIGN KEY	(personId)		REFERENCES Person(personId) NOT NULL, 			
				vendorId NVARCHAR(15)		FOREIGN KEY	(vendorId)		REFERENCES Vendor(vendorId) NOT NULL);	
				
CREATE TABLE SponsorLevel(																	--17
      sponsorLevelId INT IDENTITY PRIMARY KEY,
      sponsorLevelDescription VARCHAR(20) NOT NULL UNIQUE);						

CREATE TABLE Sponsor(																		--18
      sponsorId INT IDENTITY PRIMARY KEY NOT NULL,						
      sponsorName VARCHAR(50) NOT NULL,
      sponsorLevelId INT					FOREIGN KEY	(sponsorLevelId)		REFERENCES SponsorLevel(sponsorLevelId) NOT NULL,
	  eventId	INT							FOREIGN KEY	(eventId)				REFERENCES Event(eventId) NOT NULL
	  );

CREATE TABLE ClassAttendee(																										--19
personFirst NVARCHAR(25)		NOT NULL,
personLast NVARCHAR(25)		NOT NULL,													
				classId	NVARCHAR(10)		FOREIGN KEY	(classId)		REFERENCES Class(classId) NOT NULL,													
	personEmail	NVARCHAR(50) NOT NULL);

CREATE TABLE Presentation(
	presentationId INT IDENTITY PRIMARY KEY NOT NULL,	
	presentationTitle NVARCHAR(75)		NOT NULL,	
	presentationSpeaker NVARCHAR(75)		NOT NULL,	
);
  END

  select * from ClassDifficulty

  select * from Presentation