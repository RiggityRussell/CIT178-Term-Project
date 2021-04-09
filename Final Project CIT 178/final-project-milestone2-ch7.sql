/*
USE killTeamList;

INSERT INTO Commanders VALUES('1', 'Lieutenant in Phobos Armor')
INSERT INTO Commanders VALUES('2', 'Ethereal')
INSERT INTO Commanders VALUES('3', 'Dahyak Grekh')
INSERT INTO Commanders VALUES('4', 'Tech-Priest Dominus')
INSERT INTO Commanders VALUES('5', 'Commisar')
INSERT INTO Commanders VALUES('6', NULL)
INSERT INTO Commanders VALUES('7', 'Big Mek')
INSERT INTO Commanders VALUES('8', 'Shield Captain')
INSERT INTO Commanders VALUES('9', 'Autarch')
INSERT INTO Commanders VALUES('10', 'Exalted Champion')
INSERT INTO Commanders VALUES('11', 'Haemonculus')
INSERT INTO Commanders VALUES('12', 'Overlord')
INSERT INTO Commanders VALUES('13', 'Bloodletter')
INSERT INTO Commanders VALUES('14', 'Janis Draik')

INSERT INTO Factions VALUES('1', 'Imperium')
INSERT INTO Factions VALUES('2', 'Tau Empire')
INSERT INTO Factions VALUES('3', 'Tyranids')
INSERT INTO Factions VALUES('4', 'Orks')
INSERT INTO Factions VALUES('5', 'Aeldari')
INSERT INTO Factions VALUES('6', 'Chaos')
INSERT INTO Factions VALUES('7', 'Necrons')

INSERT INTO Players VALUES('1', 'Alex', 'Blue and Red')
INSERT INTO Players VALUES('2', 'Kate', 'Green')
INSERT INTO Players VALUES('3', 'Jonny', 'Red and Blue')
INSERT INTO Players VALUES('4', 'Stefen', 'Red and Cream')
INSERT INTO Players VALUES('5', 'Justin', 'Orange')
INSERT INTO Players VALUES('6', 'Russell', 'Green and Black')

INSERT INTO SpecialistAbilities VALUES('1', 'Combat')
INSERT INTO SpecialistAbilities VALUES('2', 'Demolitions')
INSERT INTO SpecialistAbilities VALUES('3', 'Heavy')
INSERT INTO SpecialistAbilities VALUES('4', 'Scout')
INSERT INTO SpecialistAbilities VALUES('5', 'Sniper')
INSERT INTO SpecialistAbilities VALUES('6', 'Stealth')
INSERT INTO SpecialistAbilities VALUES('7', 'Veteran')
INSERT INTO SpecialistAbilities VALUES('8', 'Zealot')

SELECT * FROM Commanders;
SELECT * FROM Factions;
SELECT * FROM Players;
SELECT * FROM SpecialistAbilities;

USE killTeamList;

INSERT INTO Leaders VALUES('1', 'Intercessor Sargeant', '1')
INSERT INTO Leaders VALUES('2', 'XV25 Stealth Battlesuit Shasvre', '2')
INSERT INTO Leaders VALUES('3', 'Kroot Carnivore', '3')
INSERT INTO Leaders VALUES('4', 'Skitarii Ranger Alpha', '4')
INSERT INTO Leaders VALUES('5', 'Sergeant', '5')
INSERT INTO Leaders VALUES('6', 'Lichtor', '6')
INSERT INTO Leaders VALUES('7', 'Painboy', '7')
INSERT INTO Leaders VALUES('8', 'Allarus Custodian', '8')
INSERT INTO Leaders VALUES('9', 'Illic Nightspear', '9')
INSERT INTO Leaders VALUES('10', 'Dark Apostle', '10')
INSERT INTO Leaders VALUES('11', 'Incubus', '11')
INSERT INTO Leaders VALUES('12', 'Triarch Praetorian', '12')
INSERT INTO Leaders VALUES('13', 'Daemonette', '13')
INSERT INTO Leaders VALUES('14', 'UR-025', '14')

INSERT INTO NarrativeCampaign VALUES('1', '6', 'W', 'Yes', 'No')
INSERT INTO NarrativeCampaign VALUES('2', '6', 'L', 'Yes', 'No')
INSERT INTO NarrativeCampaign VALUES('3', '6', 'W', 'No', 'Yes')
INSERT INTO NarrativeCampaign VALUES('4', '6', 'L', 'No', 'No')
INSERT INTO NarrativeCampaign VALUES('5', '6', 'L', 'Yes', 'No')
INSERT INTO NarrativeCampaign VALUES('6', '6', 'L', 'No', 'Yes')
INSERT INTO NarrativeCampaign VALUES('1', '1', 'W', 'Yes', 'No')
INSERT INTO NarrativeCampaign VALUES('2', '4', 'L', 'Yes', 'No')
INSERT INTO NarrativeCampaign VALUES('3', '3', 'W', 'No', 'No')
INSERT INTO NarrativeCampaign VALUES('4', '5', 'L', 'Yes', 'No')
INSERT INTO NarrativeCampaign VALUES('5', '2', 'L', 'Yes', 'No')
INSERT INTO NarrativeCampaign VALUES('6', '1', 'L', 'No', 'No')

INSERT INTO Troops VALUES('1', 'Intercessor Gunner', '1', 'Intercessor')
INSERT INTO Troops VALUES('2', 'XV25 Stealth Battlesuit Shasvre', '3', 'Fire Warrior Shasui')
INSERT INTO Troops VALUES('3', 'Kroot Carnivore', '8', 'Kroot Carnivore')
INSERT INTO Troops VALUES('4', 'Skitarii Ranger Gunner', '5', 'Skitarii Ranger')
INSERT INTO Troops VALUES('5', 'Special Weapons Guardsman', '4', 'Guardsman')
INSERT INTO Troops VALUES('6', 'Lichtor', NULL, 'Hormagaunt')
INSERT INTO Troops VALUES('7', 'Kommando', '5', 'Ork Boy')
INSERT INTO Troops VALUES('8', 'Custodian Guard', '2', 'Custodian')
INSERT INTO Troops VALUES('9', 'Storm Guardian', '3', 'Ranger')
INSERT INTO Troops VALUES('10', 'Chaos Space Marine', '1', 'Chaos Cultist')
INSERT INTO Troops VALUES('11', 'Wych', '3', 'Kabalite Warrior')
INSERT INTO Troops VALUES('12', 'Deathmark', '7', 'Immortal')
INSERT INTO Troops VALUES('13', 'Horrors', '6', 'Plaguebearer')
INSERT INTO Troops VALUES('14', 'Amallyn Shadowguide', '6', 'Neyam Shai Murad');  

SELECT * FROM Leaders;
SELECT * FROM NarrativeCampaign;
SELECT * FROM Troops;

USE killTeamList;

INSERT INTO Armies VALUES('1', 'Space Marines', '1', '1', '1', '4')
INSERT INTO Armies VALUES('2', 'Tau', '2', '2', '2', '6')
INSERT INTO Armies VALUES('3', 'Kroot', '2', '3', '3', '6')
INSERT INTO Armies VALUES('4', 'Mechanicus', '1', '4', '4', '6')
INSERT INTO Armies VALUES('5', 'Imperial Guard', '1', '5', '5', '2')
INSERT INTO Armies VALUES('6', 'Tyranids', '3', '6', '6', '6')
INSERT INTO Armies VALUES('7', 'Orks', '4', '7', '7', '5')
INSERT INTO Armies VALUES('8', 'Custodians', '1', '8', '8', '1')
INSERT INTO Armies VALUES('9', 'Eldar', '5', '9', '9', '3')
INSERT INTO Armies VALUES('10', 'Deathwatch', '1', NULL, NULL, NULL)
INSERT INTO Armies VALUES('11', 'Grey Knights', '1', NULL, NULL, NULL)
INSERT INTO Armies VALUES('12', 'Chaos Space Marines', '6', '10', '10', '1')
INSERT INTO Armies VALUES('13', 'Death Guard', '6', NULL, NULL, NULL)
INSERT INTO Armies VALUES('14', 'Thousand Sons', '6', NULL, NULL, NULL)
INSERT INTO Armies VALUES('15', 'Dark Eldar', '5', '11', '11', '3')
INSERT INTO Armies VALUES('16', 'Harlequins', '5', NULL, NULL, NULL)
INSERT INTO Armies VALUES('17', 'Necron', '7', '12', '12', '6')
INSERT INTO Armies VALUES('18', 'Genestealer', '3', NULL, NULL, NULL)
INSERT INTO Armies VALUES('19', 'Sisters of Battle', '1', NULL, NULL, NULL)
INSERT INTO Armies VALUES('20', 'Chaos Daemons', '6', '13', '13', '1')
INSERT INTO Armies VALUES('21', 'Blackstone Explorers', '1', '14', '14', '6')
INSERT INTO Armies VALUES('22', 'Elucidian Starstriders', '1', NULL, NULL, NULL);

USE killTeamList;

SELECT * FROM Armies;*/