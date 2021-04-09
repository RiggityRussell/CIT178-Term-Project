
USE killTeamList;
GO
CREATE INDEX idx_FactionID ON Armies(FactionID);
GO
CREATE INDEX idx_CommanderID ON Armies(CommanderID);
GO
CREATE INDEX idx_TroopID ON Armies(TroopID);
GO
CREATE INDEX idx_PlayerID ON Armies(PlayerID);
GO
CREATE INDEX idx_AbilityID ON Troops(AbilityID);
GO
CREATE INDEX idx_PlayersID ON NarrativeCampaign(PlayersID);
GO
CREATE INDEX idx_CommandID ON Leaders(CommandID);
GO
