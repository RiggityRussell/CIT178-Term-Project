/* 2. Final Project Procedures 

-- 3. Retrieves and displays data


USE killTeamList;
GO
CREATE PROC spPlayers
AS
SELECT * FROM Players
ORDER BY PlayerName;
GO

EXEC spPlayers;		

-- 4. Create a stored procedure that takes 1 or more input parameters and retrieves results based on the value  (3 points)

USE killTeamList;
GO
CREATE PROC spGetFactionID
	@FactionID int
AS
BEGIN
	SELECT * FROM Factions
	WHERE FactionID = @FactionID;
END
GO
EXEC spGetFactionID 1 


           

-- Takes one input parameter and returns three output parameters
USE Test_AP;
GO
CREATE PROC spCustomerContact1
	@CustomerID int,
	@FirstName nvarchar(30) OUTPUT,
	@LastName nvarchar(50) OUTPUT,
	@PhoneNumber nvarchar(30) OUTPUT,
	@Address nvarchar(60) OUTPUT
AS
SELECT @FirstName = FirstName, @LastName = LastName, @PhoneNumber = Phone, @Address = Addr
FROM Customers 
WHERE ID = @CustomerID;
GO
-- Run the procedure
DECLARE @FirstName nvarchar(30);
DECLARE @LastName nvarchar(50);
DECLARE @Phone nvarchar(30);
DECLARE @Address nvarchar(60);
EXEC spCustomerContact1 3, @FirstName OUTPUT, @LastName OUTPUT, @Phone OUTPUT, @Address;
SELECT @FirstName AS 'First Name', @LastName AS 'Last Name', @Phone AS 'Phone Number', @Address AS 'Where they live';

-- Stored procedure that has a return value 


USE killTeamList;
GO
CREATE PROC spFactionCountTime
AS
DECLARE @FactionCount int;
SELECT @FactionCount = COUNT(*)
FROM Factions 
RETURN @FactionCount;
GO

DECLARE @FactionCount int;
EXEC @FactionCount = spFactionCountTime;
PRINT 'There are ' + CONVERT(varchar, @FactionCount) + ' factions in the 40k Universe';
GO   */

/* Final Project User Defined Functions       

-- creates the function
USE pubs;
GO
CREATE FUNCTION fnFindState
    (@States nvarchar(50) = '%')
    RETURNS int
BEGIN
    RETURN (SELECT 'state' FROM publishers WHERE 'state' Like @States);
END;          

-- uses the function
GO
SELECT 'state', city, country, pub_name FROM publishers 
WHERE 'state' = dbo.fnFindState('A%');

USE pubs;
GO
CREATE FUNCTION fnPubs
	(@States nvarchar(50) = '%')
	RETURNS table
RETURN
	(SELECT * FROM publishers WHERE 'state' LIKE @States);
GO
SELECT * FROM dbo.fnPubs('%A%');  */

/* Final Project Triggers


 USE killTeamList;
 GO
 SELECT * INTO ArmyTime
 FROM Armies
 WHERE 1=0;


 ALTER TABLE ArmyTime
 ADD NewNames varchar(50);
 GO


 CREATE TRIGGER ArmyTime_INSERT ON Armies
    AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @KillTeamID int
	DECLARE @ArmyName nvarchar(50)
	DECLARE @FactionID int
	DECLARE @CommanderID int
	DECLARE @TroopID int
	DECLARE @PlayerID int
	DECLARE @NewNames nvarchar(50)
SELECT @KillTeamID =INSERTED.KillTeamID, @ArmyName = INSERTED.ArmyName, @FactionID = INSERTED.FactionID,
	@CommanderID = INSERTED.CommanderID, @TroopID = INSERTED.TroopID, @PlayerID = INSERTED.PlayerID 
	FROM INSERTED

    INSERT INTO ArmyTime VALUES(@KillTeamID,@ArmyName, @FactionID, @CommanderID, @TroopID, @PlayerID, 'Inserted' )
END
GO

INSERT INTO ArmyTime VALUES(30,'Catmen','30','30','30','30','NULL');
GO 

SELECT * FROM ArmyTime;
GO  

 CREATE TRIGGER NewNames_Delete ON ArmyTime
    AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
	DECLARE @KillTeamID int
	DECLARE @ArmyName nvarchar(50)
	DECLARE @FactionID int
	DECLARE @CommanderID int
	DECLARE @TroopID int
	DECLARE @PlayerID int
	DECLARE @NewNames nvarchar(50)

    SELECT @KillTeamID =DELETED.KillTeamID, @ArmyName = DELETED.ArmyName, @FactionID = DELETED.FactionID,
	@CommanderID = DELETED.CommanderID, @TroopID = DELETED.TroopID, @PlayerID = DELETED.PlayerID
	FROM DELETED

    INSERT INTO ArmyTime VALUES(@KillTeamID,@ArmyName, @FactionID, @CommanderID, @TroopID, @PlayerID, 'Deleted' )
END
GO


DELETE FROM Armies WHERE KillTeamID = 1;
GO  

SELECT * FROM ArmyTime; 

CREATE TRIGGER ArmyTime_Update ON Armies
    AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
 	DECLARE @KillTeamID int
	DECLARE @ArmyName nvarchar(50)
	DECLARE @FactionID int
	DECLARE @CommanderID int
	DECLARE @TroopID int
	DECLARE @PlayerID int
	DECLARE @NewNames nvarchar(50)

	  SELECT @KillTeamID =INSERTED.KillTeamID, @ArmyName = INSERTED.ArmyName, @FactionID = INSERTED.FactionID,
	@CommanderID = INSERTED.CommanderID, @TroopID = INSERTED.TroopID, @PlayerID = INSERTED.PlayerID
	FROM INSERTED
INSERT INTO ArmyTime VALUES(@KillTeamID,@ArmyName, @FactionID, @CommanderID, @TroopID, @PlayerID, 'Updated' )
END
GO 


INSERT INTO ArmyTime VALUES(40,'Ham Sandwichers',40,40,40,40,'Daniel Craig');
GO
UPDATE ArmyTime 
SET NewNames = 'Zippy the Human Frog'
WHERE PlayerID = 40;
GO */   

SELECT * FROM ArmyTime;
    


