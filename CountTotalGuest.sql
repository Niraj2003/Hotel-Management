CREATE DEFINER=`root`@`localhost` FUNCTION `getGuest`( n varchar (10) ) RETURNS int
    DETERMINISTIC
begin
    declare a integer ;
    set a = 0;
    select count(*) into a from guest 
    where guest.HomeTown = n;
    return a;
end