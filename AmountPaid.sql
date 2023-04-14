CREATE DEFINER=`root`@`localhost` PROCEDURE `insertAmtPaid`()
BEGIN
	update hotelmanagement.payment
    set payment.AmountPaid = payment.TotalAmount - payment.AmountRemaining
	where payment.TotalAmount - payment.AmountRemaining != 0;
    SELECT * from hotelmanagement.payment;
END