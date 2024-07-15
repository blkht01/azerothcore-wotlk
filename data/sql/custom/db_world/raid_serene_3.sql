DELETE FROM `reference_loot_template` WHERE (`Entry` = 600004);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600004, 21929, 0, 100, 0, 1, 1, 1, 1, 'Classic Plus - AOD - Elite Trash Regeants'),
(600004, 23077, 0, 100, 0, 1, 1, 1, 1, ''),
(600004, 23112, 0, 100, 0, 1, 1, 1, 1, ''),
(600004, 23107, 0, 100, 0, 1, 1, 1, 1, ''),
(600004, 23079, 0, 100, 0, 1, 1, 1, 1, ''),
(600004, 23117, 0, 100, 0, 1, 1, 1, 1, ''),
(600004, 7910, 0, 85, 0, 1, 0, 1, 1, ''),
(600004, 11382, 0, 50, 0, 1, 0, 1, 1, ''),
(600004, 24479, 0, 5, 0, 1, 0, 1, 1, ''),
(600004, 12803, 0, 10, 0, 1, 0, 1, 1, ''),
(600004, 12800, 0, 6, 0, 1, 0, 1, 1, ''),
(600004, 18335, 0, 4, 0, 1, 0, 1, 1, ''),
(600004, 11754, 0, 12, 0, 1, 0, 1, 1, ''),
(600004, 12364, 0, 19, 0, 1, 0, 1, 1, ''),
(600004, 12799, 0, 13, 0, 1, 0, 1, 1, ''),
(600004, 7909, 0, 35, 0, 1, 0, 1, 1, ''),
(600004, 7077, 0, 2, 0, 1, 0, 1, 1, ''),
(600004, 7081, 0, 2, 0, 1, 0, 1, 1, ''),
(600004, 7971, 0, 9, 0, 1, 0, 1, 1, '');

DELETE FROM `reference_loot_template` WHERE (`Entry` = 600004) AND (`Item` IN (7909, 7910, 11382, 11754, 12364));
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600004, 7909, 0, 43, 0, 1, 0, 1, 1, ''),
(600004, 7910, 0, 27, 0, 1, 0, 1, 1, ''),
(600004, 11382, 0, 14, 0, 1, 0, 1, 1, ''),
(600004, 11754, 0, 8, 0, 1, 0, 1, 1, ''),
(600004, 12364, 0, 11, 0, 1, 0, 1, 1, '');

DELETE FROM `reference_loot_template` WHERE (`Entry` = 600004) AND (`Item` IN (7909, 7910, 7971, 11382, 12364, 12799, 12800));
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(600004, 7909, 0, 43, 0, 1, 3, 1, 1, ''),
(600004, 7910, 0, 27, 0, 1, 3, 1, 1, ''),
(600004, 7971, 0, 2, 0, 1, 3, 1, 1, ''),
(600004, 11382, 0, 14, 0, 1, 3, 1, 1, ''),
(600004, 12364, 0, 11, 0, 1, 2, 1, 1, ''),
(600004, 12799, 0, 13, 0, 1, 2, 1, 1, ''),
(600004, 12800, 0, 6, 0, 1, 2, 1, 1, '');


DELETE FROM `creature_loot_template` WHERE (`Entry` = 100013) AND (`Item` IN (600003, 600004));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(100013, 600004, 600004, 75, 0, 1, 0, 1, 1, '');

DELETE FROM `item_loot_template` WHERE (`Entry` = 100164) AND (`Item` IN (600004, 23112, 23077, 23079, 23107, 23117, 12799, 12364, 7910, 12800, 7909));
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(100164, 600004, 600004, 100, 0, 1, 0, 1, 1, ''),
(100164, 23112, 0, 39, 0, 1, 0, 1, 6, ''),
(100164, 23077, 0, 30, 0, 1, 0, 1, 6, ''),
(100164, 23079, 0, 35, 0, 1, 0, 1, 6, ''),
(100164, 23107, 0, 29, 0, 1, 0, 1, 4, ''),
(100164, 23117, 0, 33, 0, 1, 0, 1, 4, ''),
(100164, 12799, 0, 15, 0, 1, 0, 1, 2, ''),
(100164, 12364, 0, 12, 0, 1, 0, 1, 3, ''),
(100164, 7910, 0, 14, 0, 1, 0, 1, 2, ''),
(100164, 12800, 0, 9, 0, 1, 0, 1, 1, ''),
(100164, 7909, 0, 69, 0, 1, 0, 2, 5, '');

DELETE FROM `item_template` WHERE (`entry` = 100164);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES
(100164, 15, 0, -1, 'Sack of Gems', 4056, 3, 4100, 0, 1, 19095, 411, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'A jewelcrafter would be interested in this', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340);

DELETE FROM `item_template` WHERE (`entry` = 100165);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES
(100165, 15, 0, -1, 'Satchel of Leathers', 20342, 3, 4100, 0, 1, 19095, 411, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'A leatherworker should find this useful..', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340);

DELETE FROM `item_loot_template` WHERE (`Entry` = 100165) AND (`Item` IN (4304, 8153, 8172, 8154, 7971, 8170, 8165, 8167, 4234, 4236, 10285, 8169, 8150, 5498));
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(100165, 4304, 0, 71, 0, 1, 0, 5, 15, ''),
(100165, 8153, 0, 55, 0, 1, 0, 1, 3, ''),
(100165, 8172, 0, 35, 0, 1, 0, 2, 6, ''),
(100165, 8154, 0, 29, 0, 1, 0, 3, 8, ''),
(100165, 7971, 0, 17, 0, 1, 0, 1, 2, ''),
(100165, 8170, 0, 39, 0, 1, 0, 5, 12, ''),
(100165, 8165, 0, 32, 0, 1, 0, 2, 10, ''),
(100165, 8167, 0, 32, 0, 1, 0, 2, 8, ''),
(100165, 4234, 0, 80, 0, 1, 0, 5, 15, ''),
(100165, 4236, 0, 21, 0, 1, 0, 2, 5, ''),
(100165, 10285, 0, 42, 0, 1, 0, 5, 10, ''),
(100165, 8169, 0, 61, 0, 1, 0, 5, 7, ''),
(100165, 8150, 0, 22, 0, 1, 0, 1, 5, ''),
(100165, 5498, 0, 9, 0, 1, 0, 2, 3, '');

DELETE FROM `item_loot_template` WHERE (`Entry` = 100164) AND (`Item` IN (7909, 7910, 12364, 12799, 12800, 23077, 23079, 23107, 23112, 23117));
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(100164, 7909, 0, 69, 0, 1, 0, 2, 6, ''),
(100164, 7910, 0, 14, 0, 1, 0, 2, 3, ''),
(100164, 12364, 0, 12, 0, 1, 0, 1, 4, ''),
(100164, 12799, 0, 15, 0, 1, 0, 1, 3, ''),
(100164, 12800, 0, 9, 0, 1, 0, 1, 3, ''),
(100164, 23077, 0, 30, 0, 1, 0, 2, 6, ''),
(100164, 23079, 0, 35, 0, 1, 0, 2, 6, ''),
(100164, 23107, 0, 29, 0, 1, 0, 2, 4, ''),
(100164, 23112, 0, 39, 0, 1, 0, 2, 6, ''),
(100164, 23117, 0, 33, 0, 1, 0, 2, 4, '');

DELETE FROM `item_template` WHERE (`entry` = 100166);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES
(100166, 15, 0, -1, 'Box for the Smith', 41449, 3, 4100, 0, 1, 19095, 411, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'A blacksmith should find this useful', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340);

DELETE FROM `item_loot_template` WHERE (`Entry` = 100166) AND (`Item` IN (3860, 3864, 3859, 3577, 7909, 6037, 7075, 1529, 4304, 7077, 1705, 7910, 7971, 12365, 12361, 8153, 12803, 7069, 7068, 7070, 2842, 5500, 0));
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(100166, 3860, 0, 49, 0, 1, 0, 5, 15, ''),
(100166, 3864, 0, 42, 0, 1, 0, 2, 5, ''),
(100166, 3859, 0, 60, 0, 1, 0, 5, 9, ''),
(100166, 3577, 0, 39, 0, 1, 0, 4, 8, ''),
(100166, 7909, 0, 32, 0, 1, 0, 2, 8, ''),
(100166, 6037, 0, 32, 0, 1, 0, 4, 9, ''),
(100166, 7075, 0, 19, 0, 1, 0, 2, 3, ''),
(100166, 1529, 0, 37, 0, 1, 0, 1, 4, ''),
(100166, 4304, 0, 12, 0, 1, 0, 1, 6, ''),
(100166, 7077, 0, 19, 0, 1, 0, 1, 3, ''),
(100166, 1705, 0, 51, 0, 1, 0, 2, 4, ''),
(100166, 7910, 0, 34, 0, 1, 0, 2, 3, ''),
(100166, 7971, 0, 9, 0, 1, 0, 1, 2, ''),
(100166, 12365, 0, 90, 0, 1, 0, 5, 9, ''),
(100166, 12361, 0, 18, 0, 1, 0, 2, 5, ''),
(100166, 8153, 0, 11, 0, 1, 0, 2, 5, ''),
(100166, 12803, 0, 24, 0, 1, 0, 1, 2, ''),
(100166, 7069, 0, 30, 0, 1, 0, 1, 3, ''),
(100166, 7068, 0, 30, 0, 1, 0, 1, 3, ''),
(100166, 7070, 0, 30, 0, 1, 0, 1, 2, ''),
(100166, 2842, 0, 17, 0, 1, 0, 5, 12, ''),
(100166, 5500, 0, 14, 0, 1, 0, 1, 3, ''),
(100166, 0, 0, 100, 0, 1, 0, 1, 1, '');

DELETE FROM `item_template` WHERE (`entry` = 100167);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES
(100167, 15, 0, -1, 'Basket of Herbs', 57516, 3, 4100, 0, 1, 19095, 411, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'An alchemist would value this', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340);

DELETE FROM `item_loot_template` WHERE (`Entry` = 100167);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(100167, 8838, 0, 29, 0, 1, 0, 5, 11, ''),
(100167, 3358, 0, 34, 0, 1, 0, 2, 6, ''),
(100167, 3821, 0, 24, 0, 1, 0, 4, 14, ''),
(100167, 3858, 0, 12, 0, 1, 0, 2, 8, ''),
(100167, 7067, 0, 11, 0, 1, 0, 1, 6, ''),
(100167, 8831, 0, 31, 0, 1, 0, 4, 6, ''),
(100167, 8153, 0, 32, 0, 1, 0, 2, 9, ''),
(100167, 7972, 0, 22, 0, 1, 0, 3, 7, ''),
(100167, 4625, 0, 26, 0, 1, 0, 5, 18, ''),
(100167, 9262, 0, 32, 0, 1, 0, 2, 5, ''),
(100167, 8839, 0, 26, 0, 1, 0, 3, 16, ''),
(100167, 8836, 0, 18, 0, 1, 0, 6, 21, ''),
(100167, 8845, 0, 22, 0, 1, 0, 4, 9, ''),
(100167, 8846, 0, 45, 0, 1, 0, 4, 8, ''),
(100167, 3818, 0, 38, 0, 1, 0, 5, 11, ''),
(100167, 3819, 0, 21, 0, 1, 0, 4, 8, ''),
(100167, 3355, 0, 52, 0, 1, 0, 4, 13, ''),
(100167, 3820, 0, 43, 0, 1, 0, 3, 9, ''),
(100167, 3357, 0, 26, 0, 1, 0, 3, 6, ''),
(100167, 2452, 0, 47, 0, 1, 0, 3, 5, ''),
(100167, 785, 0, 56, 0, 1, 0, 3, 8, '');

DELETE FROM `item_template` WHERE (`entry` = 100168);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES
(100168, 15, 0, -1, 'Container of Shards', 54314, 3, 4100, 0, 1, 19095, 411, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'Enchanters will enjoy this..', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340);

DELETE FROM `item_loot_template` WHERE (`Entry` = 100168) AND (`Item` IN (11177, 7909, 11175, 11176, 11137, 11178, 6037, 11139, 11135, 7971, 7068, 11082, 14343, 7078, 11084, 11083, 5500));
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(100168, 11177, 0, 21, 0, 1, 0, 2, 5, ''),
(100168, 7909, 0, 32, 0, 1, 0, 3, 6, ''),
(100168, 11175, 0, 31, 0, 1, 0, 2, 6, ''),
(100168, 11176, 0, 43, 0, 1, 0, 4, 12, ''),
(100168, 11137, 0, 38, 0, 1, 0, 6, 15, ''),
(100168, 11178, 0, 16, 0, 1, 0, 3, 7, ''),
(100168, 6037, 0, 21, 0, 1, 0, 2, 5, ''),
(100168, 11139, 0, 26, 0, 1, 0, 3, 8, ''),
(100168, 11135, 0, 36, 0, 1, 0, 2, 5, ''),
(100168, 7971, 0, 11, 0, 1, 0, 1, 3, ''),
(100168, 7068, 0, 13, 0, 1, 0, 2, 5, ''),
(100168, 11082, 0, 43, 0, 1, 0, 2, 5, ''),
(100168, 14343, 0, 29, 0, 1, 0, 2, 5, ''),
(100168, 7078, 0, 20, 0, 1, 0, 2, 8, ''),
(100168, 11084, 0, 23, 0, 1, 0, 3, 5, ''),
(100168, 11083, 0, 52, 0, 1, 0, 5, 10, ''),
(100168, 5500, 0, 36, 0, 1, 0, 2, 3, '');

DELETE FROM `item_template` WHERE (`entry` = 100169);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES
(100169, 15, 0, -1, 'Stack of Cloth', 35299, 3, 4100, 0, 1, 19095, 411, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'Tailors would find this useful..', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340);

DELETE FROM `item_loot_template` WHERE (`Entry` = 100169);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(100169, 4339, 0, 52, 0, 1, 0, 4, 30, ''),
(100169, 10285, 0, 39, 0, 1, 0, 4, 9, ''),
(100169, 4589, 0, 34, 0, 1, 0, 5, 12, ''),
(100169, 2604, 0, 28, 0, 1, 0, 4, 8, ''),
(100169, 8153, 0, 19, 0, 1, 0, 2, 8, ''),
(100169, 10286, 0, 21, 0, 1, 0, 3, 9, ''),
(100169, 7077, 0, 32, 0, 1, 0, 2, 3, ''),
(100169, 3827, 0, 16, 0, 1, 0, 3, 6, ''),
(100169, 3864, 0, 32, 0, 1, 0, 3, 5, ''),
(100169, 7071, 0, 36, 0, 1, 0, 2, 6, ''),
(100169, 4234, 0, 36, 0, 1, 0, 1, 9, ''),
(100169, 4305, 0, 55, 0, 1, 0, 6, 20, ''),
(100169, 5500, 0, 32, 0, 1, 0, 1, 3, ''),
(100169, 3182, 0, 38, 0, 1, 0, 5, 12, '');

DELETE FROM `item_template` WHERE (`entry` = 100170);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES
(100170, 15, 0, -1, 'Box of Tinker', 14006, 3, 4100, 0, 1, 19095, 411, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'An engineer\'s dream', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340);

DELETE FROM `item_loot_template` WHERE (`Entry` = 100170);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(100170, 10561, 0, 28, 0, 1, 0, 3, 8, ''),
(100170, 6037, 0, 19, 0, 1, 0, 1, 6, ''),
(100170, 3860, 0, 18, 0, 1, 0, 1, 6, ''),
(100170, 9060, 0, 22, 0, 1, 0, 4, 6, ''),
(100170, 10558, 0, 26, 0, 1, 0, 3, 7, ''),
(100170, 1529, 0, 16, 0, 1, 0, 2, 5, ''),
(100170, 7910, 0, 18, 0, 1, 0, 1, 3, ''),
(100170, 4304, 0, 15, 0, 1, 0, 2, 8, ''),
(100170, 10560, 0, 30, 0, 1, 0, 3, 8, ''),
(100170, 4339, 0, 20, 0, 1, 0, 1, 9, ''),
(100170, 9061, 0, 43, 0, 1, 0, 4, 8, ''),
(100170, 7909, 0, 35, 0, 1, 0, 1, 5, ''),
(100170, 3864, 0, 12, 0, 1, 0, 1, 5, ''),
(100170, 10559, 0, 44, 0, 1, 0, 3, 6, ''),
(100170, 10285, 0, 28, 0, 1, 0, 4, 6, ''),
(100170, 4337, 0, 17, 0, 1, 0, 2, 5, ''),
(100170, 7067, 0, 22, 0, 1, 0, 2, 6, ''),
(100170, 7068, 0, 23, 0, 1, 0, 1, 5, ''),
(100170, 7191, 0, 32, 0, 1, 0, 3, 5, ''),
(100170, 4389, 0, 18, 0, 1, 0, 2, 6, ''),
(100170, 4377, 0, 33, 0, 1, 0, 2, 6, ''),
(100170, 0, 0, 100, 0, 1, 0, 1, 1, '');

DELETE FROM `item_template` WHERE (`entry` = 100171);
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `SoundOverrideSubclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES
(100171, 15, 0, -1, 'Pigment Hoard', 14006, 3, 4100, 0, 1, 19095, 411, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'Inscriptors would be interested in this..', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 12340);

DELETE FROM `item_loot_template` WHERE (`Entry` = 100171);
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(100171, 43106, 0, 29, 0, 1, 0, 2, 5, ''),
(100171, 39340, 0, 52, 0, 1, 0, 4, 11, ''),
(100171, 43105, 0, 28, 0, 1, 0, 3, 6, ''),
(100171, 39339, 0, 53, 0, 1, 0, 6, 13, ''),
(100171, 43104, 0, 32, 0, 1, 0, 2, 6, ''),
(100171, 39338, 0, 48, 0, 1, 0, 3, 9, ''),
(100171, 43103, 0, 35, 0, 1, 0, 2, 6, ''),
(100171, 39151, 0, 63, 0, 1, 0, 3, 8, ''),
(100171, 39341, 0, 36, 0, 1, 0, 3, 7, ''),
(100171, 43107, 0, 24, 0, 1, 0, 1, 5, '');

DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=19967 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 19967, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=38456 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 38456, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=39473 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 39473, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=42451 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 42451, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100150 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100150, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100151 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100151, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100152 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100152, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100153 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100153, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100154 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100154, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100155 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100155, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100156 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100156, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100157 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100157, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100158 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100158, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100159 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100159, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100160 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100160, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100161 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100161, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100162 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100162, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100163 AND `ExtendedCost`=3027;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100163, 0, 0, 3027, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100164 AND `ExtendedCost`=3023;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100164, 0, 0, 3023, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100165 AND `ExtendedCost`=3023;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100165, 0, 0, 3023, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100166 AND `ExtendedCost`=3023;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100166, 0, 0, 3023, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100167 AND `ExtendedCost`=3023;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100167, 0, 0, 3023, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100168 AND `ExtendedCost`=3023;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100168, 0, 0, 3023, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100169 AND `ExtendedCost`=3023;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100169, 0, 0, 3023, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100170 AND `ExtendedCost`=3023;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100170, 0, 0, 3023, NULL);
DELETE FROM `npc_vendor` WHERE `entry`=400195 AND `item`=100171 AND `ExtendedCost`=3023;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (400195, 0, 100171, 0, 0, 3023, NULL);
