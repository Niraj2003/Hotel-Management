CREATE DEFINER=`root`@`localhost` TRIGGER `t1` AFTER INSERT ON `staff` FOR EACH ROW begin
	if ( new.Designation = "RoomServices"  )
	then insert into serviceboy values (new.StaffId);
end if ;
	if (new.Designation = "Receiptionist" )
	then insert into receptionist values ( new.StaffId) ;
end if ;
end