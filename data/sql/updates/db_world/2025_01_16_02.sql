-- DB update 2025_01_16_01 -> 2025_01_16_02
--
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 24138;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 24138) AND (`source_type` = 0) AND (`id` IN (0, 1));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(24138, 0, 0, 0, 0, 0, 100, 0, 4000, 8000, 8000, 16000, 0, 0, 11, 43353, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Tamed Amani Crocolisk - In Combat - Cast \'Infected Bite\''),
(24138, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 15000, 30000, 0, 0, 11, 43352, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Tamed Amani Crocolisk - In Combat - Cast \'Tail Swipe\'');
