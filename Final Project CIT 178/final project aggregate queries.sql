/* Final Project Aggregate Queries 

USE killTeamList;

SELECT *
FROM Armies;

SELECT MIN(DISTINCT ArmyName) AS [Organized Armies],
COUNT(FactionID) AS [Counted Factions]
FROM Armies;

SELECT * 
FROM Armies

--COUNT, MAX and MIN in a query-- DONE

SELECT MIN(DISTINCT ArmyName) AS [Big Name],
	   MAX(DISTINCT ArmyName) AS [Small Name],
COUNT(FactionID) AS [Counted Factions]
FROM Armies;

SELECT * 
FROM Armies

--COUNT and AVG in a query-- DONE

SELECT COUNT(FactionID) AS [All Factions Counted],
	   AVG(FactionID) AS [Average Faction],
	   MAX(FactionID) AS [Max Faction],
	   MIN(FactionID) AS [Min Faction]
FROM Armies

SELECT *
FROM Armies

--SUM-- DONE

SELECT SUM(FactionID) AS [Not a Real Query],
       COUNT(DISTINCT PlayerID) AS Players
FROM Armies 

USE killTeamList;

Select * 
FROM Armies, Factions, Players, Troops;

--COUNT-- DONE

SELECT DISTINCT Armyname, PlayerID
FROM Armies
WHERE PlayerID IS NOT NULL;

SELECT COUNT(ArmyName) AS [Army Time], PlayerID
From Armies
GROUP BY PlayerID;*/

