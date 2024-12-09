-- OLD: 69968
-- DELETE FROM `spell_proc_event` WHERE `entry`=16164;
-- INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `procPhase`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES (16164, 0, 11, 2416967875, 266240, 0, 69968, 2097154, 0, 0, 0, 0);

DELETE FROM `spell_proc_event` WHERE `entry`=16164;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `procPhase`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES (16164, 0, 11, 2416967875, 266240, 0, 87376, 2097154, 0, 0, 0, 0);
