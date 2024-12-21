-- BuddyJump script DB link
DELETE FROM `spell_script_names` WHERE `spell_id`=-100097 AND `ScriptName`='spell_buddy_jump';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (-100097, 'spell_buddy_jump');
