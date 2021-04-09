/*
CREATE DATABASE killTeamList;

GO
USE killTeamList;
CREATE TABLE Armies
(
	KillTeamID int NOT NULL,
	ArmyName varchar(50) NOT NULL,
	FactionID int NOT NULL,
	CommanderID int,
	TroopID int,
	PlayerID int,
	PRIMARY KEY(KillTeamID)
);
GO
CREATE TABLE Troops
(
	TroopID int NOT NULL,
	Specialists varchar(100),
	AbilityID int,
	NonSpecialists varchar(100) NOT NULL,
	PRIMARY KEY(TroopID)
);
CREATE TABLE NarrativeCampaign
(
	CampaignID int NOT NULL,
	PlayerID int NOT NULL,
	WinOrLoss varchar(1),
	HomeArmyDestroyed varchar(3),
	EnemyArmyDestroyed varchar(3),
	PRIMARY KEY(CampaignID, PlayerID)
);
CREATE TABLE Leaders
(
	LeaderID int NOT NULL,
	Leader varchar(50),
	CommandID int NOT NULL,
	PRIMARY KEY(LeaderID)
);
CREATE TABLE SpecialistAbilities
(
	ID int NOT NULL,
	Abilities varchar(30),
	PRIMARY KEY(ID)
);
CREATE TABLE Players
(
	PlayerID int NOT NULL,
	PlayerName varchar(50),
	PaintScheme varchar(100),
	PRIMARY KEY(PlayerID)
);
CREATE TABLE Commanders
(
	ID int NOT NULL,
	Commander varchar(100),
	PRIMARY KEY(ID)
);
CREATE TABLE Factions
(
	FactionID int NOT NULL,
	FactionsNames varchar(50),
	PRIMARY KEY(FactionID)
);*/
