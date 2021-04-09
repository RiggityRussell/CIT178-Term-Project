/* Final Project Views

Create four views.  One of the views must be updatable and the other three can be anything you want.  Each view is worth 3 points.

Use the updatable view to modify data in at least one column. Updating data using the view is worth 3 points. 


SELECT ArmyName, FactionsNames, PlayerName
FROM Armies
JOIN Factions ON Armies.FactionID = Factions.FactionID
JOIN Players ON Armies.PlayerID = Players.PlayerID;

USE killTeamList;
GO
CREATE VIEW VI_view
AS
SELECT ArmyName, FactionsNames, PlayerName
FROM Armies
JOIN Factions ON Armies.FactionID = Factions.FactionID
JOIN Players ON Armies.PlayerID = Players.PlayerID;
GO
CREATE VIEW VI_limited_view
AS
SELECT ArmyName, FactionsNames, PlayerName
FROM Armies
JOIN Factions ON Armies.FactionID = Factions.FactionID
JOIN Players ON Armies.PlayerID = Players.PlayerID; 

SELECT * FROM VI_limited_view;

SELECT * FROM VI_view;

USE killTeamList;
GO
CREATE VIEW VI_limited_view1
AS
SELECT ArmyName, FactionsNames, PlayerName, Commander, Leader, Specialists, NonSpecialists,
Abilities, WinOrLoss, HomeArmyDestroyed, EnemyArmyDestroyed
FROM Armies
JOIN Factions ON Armies.FactionID = Factions.FactionID
JOIN Players ON Armies.PlayerID = Players.PlayerID
JOIN Commanders ON Armies.CommanderID = Commanders.ID
JOIN Leaders ON Commanders.ID = Leaders.CommandID
JOIN NarrativeCampaign ON Players.PlayerID = NarrativeCampaign.PlayersID
JOIN Troops ON Armies.TroopID = Troops.TroopID
JOIN SpecialistAbilities ON Troops.AbilityID = SpecialistAbilities.ID; 

USE killTeamList;
GO
CREATE VIEW VI_limited_view2
AS
SELECT DISTINCT ArmyName
FROM Armies;

UPDATE VI_view
SET PlayerName='Ol Russy'
WHERE PlayerName='Russell'       */

/* I realize that VI_view was probably Vendor Invoice View. I don't know why that didn't click until halfway through the assignment.*/