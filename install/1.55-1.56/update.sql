/*UPDATE `wD_Misc` SET `value` = '155' WHERE `name` = 'Version'; */
UPDATE `wD_Misc` SET `value` = '156' WHERE `name` = 'Version';

CREATE TABLE `wD_GameInvites` (
  `gameID` mediumint(8) unsigned NOT NULL,
  `userID` mediumint(8) unsigned NOT NULL,
  `inviteCode` VARCHAR( 150 ) NOT NULL
);

ALTER TABLE `wD_MissedTurns` ADD `liveGame` BOOLEAN DEFAULT 0;  

update wD_MissedTurns m inner join wD_Games g on g.id = m.gameID set m.liveGame = 1 where g.phaseMinutes < 61 and g.id is not null;
