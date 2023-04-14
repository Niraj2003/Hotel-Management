CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `guest_list` AS
    SELECT 
        `guest`.`Name` AS `GuestList`
    FROM
        `guest`