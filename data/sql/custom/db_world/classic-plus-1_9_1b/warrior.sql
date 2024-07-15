DELETE FROM `spell_bonus_data` WHERE `entry`=12294;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (12294, 0, 0, 0.28, 0, 'Warrior - Mortal Strike / Adjusted - Qeme - Original: 0,18');
DELETE FROM `spell_bonus_data` WHERE `entry`=23881;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES (23881, 0, 0, 0.722, 0, 'Warrior - Bloodthirst / Adjusted - Qeme - Original: 0,202');
DELETE FROM `npc_trainer` WHERE `ID`=200002 AND `SpellID`=20658;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES (200002, 20658, 14000, 0, 0, 25, 0);
