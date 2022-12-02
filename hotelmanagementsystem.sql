CREATE TABLE `guest` (
  `GuestNo` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Hometown` varchar(15) DEFAULT NULL,
  `MobileNo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`GuestNo`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `manage` (
  `StaffID` varchar(5) DEFAULT NULL,
  `RoomID` varchar(6) DEFAULT NULL,
  KEY `staff_id__idx` (`StaffID`),
  KEY `room_id__idx` (`RoomID`),
  CONSTRAINT `room_id_` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`),
  CONSTRAINT `staff_id_` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `payment` (
  `PayId` varchar(7) NOT NULL,
  `TotalAmount` int NOT NULL,
  `AmountRemaining` int NOT NULL DEFAULT '0',
  `PaymentMethod` varchar(6) NOT NULL,
  `AmountPaid` int NOT NULL,
  PRIMARY KEY (`PayId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `reserves` (
  `GuestID` int DEFAULT NULL,
  `RoomID` varchar(6) NOT NULL,
  `CheckIn` datetime NOT NULL,
  `CheckOut` datetime NOT NULL,
  PRIMARY KEY (`RoomID`),
  KEY `g_id__idx` (`GuestID`),
  KEY `r_id__idx` (`RoomID`),
  CONSTRAINT `g_id_` FOREIGN KEY (`GuestID`) REFERENCES `guest` (`GuestNo`),
  CONSTRAINT `r_id_` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `room` (
  `RoomID` varchar(6) NOT NULL,
  `Price` int NOT NULL,
  `BookingStatus` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '0',
  PRIMARY KEY (`RoomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `staff` (
  `StaffId` varchar(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Designation` varchar(30) NOT NULL,
  `WorkShift` varchar(10) NOT NULL,
  `PhoneNo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`StaffId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
