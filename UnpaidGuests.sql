CREATE DEFINER=`root`@`localhost` PROCEDURE `unpaidGuests`()
BEGIN
 SELECT * FROM hotelmanagement.payment
 WHERE payment.amountremaining > 0;
END