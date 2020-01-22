SELECT `lg`.`name` AS `Language`, `fw`.`name` AS `Framework`
FROM `languagess` AS `lg` LEFT JOIN `frameworks` AS `fw` ON `lg`.`id` = `fw`.`languagesId`;
SELECT `lg`.`name` AS `Language`, `fw`.`name` AS `Framework`
FROM `languagess` AS `lg` INNER JOIN `frameworks` AS `fw` ON `lg`.`id` = `fw`.`languagesId`;
SELECT `lg`.`name` AS `Language`, COUNT(`fw`.`languagesId`) AS `NumberOfFramework`
FROM `languagess` AS `lg` LEFT JOIN `frameworks` AS `fw` ON `lg`.`id` = `fw`.`languagesId`
GROUP BY `lg`.`name`;
SELECT `lg`.`name` AS `Language`, COUNT(`fw`.`languagesId`) AS `NumberOfFramework`
FROM `languagess` AS `lg` LEFT JOIN `frameworks` AS `fw` ON `lg`.`id` = `fw`.`languagesId`
GROUP BY `lg`.`name`
HAVING COUNT(`fw`.`languagesId`) > 3;
