/*UPDATE `wD_Misc` SET `value` = '155' WHERE `name` = 'Version'; */

CREATE TABLE `wD_GameInvites` (
  `gameID` mediumint(8) unsigned NOT NULL,
  `userID` mediumint(8) unsigned NOT NULL,
  `inviteCode` VARCHAR( 150 ) NOT NULL
);
