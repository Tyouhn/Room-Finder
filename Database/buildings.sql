drop schema if exists buildings;
CREATE SCHEMA `buildings`;
use buildings;

create table buildings.west26 (
	room int not null primary key,
    floor varchar(50) not null,
    weekDay varchar(50) not null,
    environment varchar(50) not null,
	startTime TIME(0) not null,
    endTime TIME(0) not null,
    
    timeStarts VARCHAR(10) AS (TIME_FORMAT(startTime, '%k:%i')) VIRTUAL,
    timeEnds VARCHAR(10) AS (TIME_FORMAT(endTime, '%k:%i')) VIRTUAL
);

insert into buildings.west26 (room, floor, weekDay, environment, startTime, endTime)
values 
#4th Floor 
(406, '4th', 'Tuesday', 'quiet', '9:15', '10:30'), 
(409, '4th', 'Monday', 'quiet', '12:25', '14:50'),
(422, '4th', 'Monday', 'chaotic', '12:25', '14:50'),
(421, '4th', 'Friday', 'noisy', '11:35', '14:50'),
(404, '4th', 'Wednesday', 'noisy', '17:45', '20:50'),

#1st Floor
(103, '1st', 'Friday', 'noisy', '9:30', '12:45'), 
(109, '1st', 'Tuesday', 'quiet', '11:45', '13:50'),
(105, '1st', 'Thursday', 'noisy', '21:40', '22:50'),
(121, '1st', 'Wednesday', 'chaotic', '10:10', '11:25'),
(118, '1st', 'Friday', 'noisy', '20:05', '22:30'),

#2nd Floor
(204, '2nd', 'Thursday', 'noisy', '10:45', '11:40'), 
(224, '2nd', 'Wendnesday', 'noisy', '14:50', '15:55'),
(206, '2nd', 'Monday', 'quiet', '12:10', '12:50'),
(209, '2nd', 'Monday', 'chaotic', '14:05', '16:15'),
(218, '2nd', 'Tuesday', 'quiet', '18:45', '20:40'),

#3rd Floor
(322, '3rd', 'Monday', 'nosiy', '22:05', '23:30'), 
(310, '3rd', 'Thursday', 'chaotic', '9:00', '10:30'),
(321, '3rd', 'Friday', 'chaotic', '18:55', '22:05'),
(318, '3rd', 'Tuesday', 'quiet', '16:30', '17:00'),
(305, '3rd', 'Tuesday', 'chaotic', '12:05', '13:35'),

#5th Floor
(506, '5th', 'Tuesday', 'quiet', '9:15', '10:30'), 
(510, '5th', 'Monday', 'quiet', '14:25', '15:45'), 
(512, '5th', 'Friday', 'nosiy', '16:15', '18:50'), 
(515, '5th', 'Tuesday', 'quiet', '10:20', '11:45'), 
(520, '5th', 'Thursday', 'chaotic', '19:45', '22:15'), 

#6th Floor
(603, '6th', 'Wednesdy', 'quiet', '11:25', '17:55'),
(613, '6th', 'Friday', 'chaotic', '10:35', '12:35'),
(630, '6th', 'Monday', 'nosiy', '22:20', '23:15'),
(621, '6th', 'Monday', 'nosiey', '21:55', '22:50'),
(612, '6th', 'Tuesday', 'Quiet', '20:00', '21:45'),

#7th Floor
(721, '7th', 'Wednesday', 'chaotic', '10:05', '10:30'), 
(724, '7th', 'Thursday', 'quiet', '22:05', '22:45'),
(722, '7th', 'Friday', 'quiet', '17:35', '18:30'),
(711, '7th', 'Monday', 'nosiy', '11:35', '15:40'),
(715, '7th', 'Tuesday', 'chaotic', '19:45', '20:45'),

#8th Floor
(822, '8th', 'Monday', 'quiet', '18:00', '18:45'), 
(820, '8th', 'Tuesday', 'nosiy', '14:05', '17:55'), 
(816, '8th', 'Tuesday', 'chaotic', '20:00', '21:05'), 
(821, '8th', 'Friday', 'quiet', '12:40', '14:05'), 
(819, '8th', 'Monday', 'quiet', '17:55', '19:25'); 


CREATE TABLE buildings.west16 (
  `room` int(11) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `weekDay` varchar(50) NOT NULL,
  `environment` varchar(50) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `timeStarts` varchar(10) GENERATED ALWAYS AS (time_format(`startTime`,'%k:%i')) VIRTUAL,
  `timeEnds` varchar(10) GENERATED ALWAYS AS (time_format(`endTime`,'%k:%i')) VIRTUAL
);

INSERT INTO buildings.west16 (room, floor, weekDay, environment, startTime, endTime) 
VALUES
(101, '1st', 'Tuesday', 'noisy', '10:45:00', '12:30:00'),
(103, '1st', 'Monday', 'quiet', '11:30:00', '14:45:00'),
(112, '1st', 'Tuesday', 'noisy', '17:40:00', '19:50:00'),
(118, '1st', 'Friday', 'noisy', '18:05:00', '19:30:00'),
(121, '1st', 'Wednesday', 'quiet', '14:10:00', '17:25:00'),
(124, '1st', 'Thursday', 'chaotic', '19:05:00', '21:45:00'),
(202, '2nd', 'Thursday', 'quiet', '09:45:00', '11:45:00'),
(203, '2nd', 'Friday', 'noisy', '15:40:00', '17:25:00'),
(207, '2nd', 'Monday', 'chaotic', '12:10:00', '13:45:00'),
(217, '2nd', 'Wednesday', 'noisy', '11:45:00', '13:40:00'),
(221, '2nd', 'Wednesday', 'chaotic', '15:15:00', '18:55:00'),
(224, '2nd', 'Monday', 'quiet', '19:45:00', '21:10:00'),
(306, '3rd', 'Thursday', 'chaotic', '09:30:00', '12:45:00'),
(308, '3rd', 'Friday', 'noisy', '17:55:00', '19:05:00'),
(312, '3rd', 'Monday', 'quiet', '10:05:00', '12:30:00'),
(317, '3rd', 'Friday', 'quiet', '13:10:00', '17:15:00'),
(321, '3rd', 'Wednesday', 'chaotic', '14:05:00', '16:35:00'),
(324, '3rd', 'Tuesday', 'quiet', '12:15:00', '14:55:00'),
(402, '4th', 'Monday', 'noisy', '10:15:00', '12:30:00'),
(403, '4th', 'Monday', 'noisy', '08:25:00', '11:50:00'),
(408, '4th', 'Thursday', 'quiet', '17:30:00', '19:50:00'),
(412, '4th', 'Wednesday', 'quiet', '14:35:00', '16:50:00'),
(421, '4th', 'Friday', 'quiet', '16:45:00', '20:50:00'),
(424, '4th', 'Tuesday', 'chaotic', '09:25:00', '13:50:00'),
(501, '5th', 'Thursday', 'quiet', '09:15:00', '12:35:00'),
(503, '5th', 'Tuesday', 'quiet', '11:25:00', '13:55:00'),
(514, '5th', 'Wednesday', 'chaotic', '15:15:00', '18:30:00'),
(517, '5th', 'Friday', 'noisy', '13:20:00', '15:45:00'),
(523, '5th', 'Thursday', 'quiet', '16:45:00', '19:15:00'),
(524, '5th', 'Monday', 'noisy', '12:55:00', '14:35:00'),
(609, '6th', 'Friday', 'chaotic', '11:15:00', '13:45:00'),
(612, '6th', 'Tuesday', 'chaotic', '14:25:00', '16:45:00'),
(618, '6th', 'Wednesday', 'noisy', '10:00:00', '12:45:00'),
(619, '6th', 'Tuesday', 'noisy', '13:10:00', '15:45:00'),
(621, '6th', 'Friday', 'quiet', '19:20:00', '21:35:00'),
(624, '6th', 'Monday', 'quiet', '09:55:00', '12:50:00'),
(705, '7th', 'Friday', 'noisy', '17:10:00', '19:25:00'),
(707, '7th', 'Monday', 'noisy', '09:45:00', '12:50:00'),
(711, '7th', 'Tuesday', 'chaotic', '14:05:00', '16:40:00'),
(721, '7th', 'Monday', 'nosiy', '10:15:00', '12:40:00'),
(722, '7th', 'Thursday', 'chaotic', '13:15:00', '15:35:00'),
(724, '7th', 'Wednesday', 'quiet', '15:45:00', '17:45:00'),
(801, '8th', 'Monday', 'quiet', '16:30:00', '17:50:00'),
(802, '8th', 'Tuesday', 'quiet', '11:05:00', '13:45:00'),
(803, '8th', 'Wednesday', 'chaotic', '19:10:00', '21:25:00'),
(811, '8th', 'Thursday', 'noisy', '09:45:00', '13:15:00'),
(821, '8th', 'Friday', 'quiet', '10:55:00', '12:30:00'),
(824, '8th', 'Monday', 'chaotic', '13:15:00', '15:45:00');


CREATE TABLE buildings.main (
  `room` int(11) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `weekDay` varchar(50) NOT NULL,
  `environment` varchar(50) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `timeStarts` varchar(10) GENERATED ALWAYS AS (time_format(`startTime`,'%k:%i')) VIRTUAL,
  `timeEnds` varchar(10) GENERATED ALWAYS AS (time_format(`endTime`,'%k:%i')) VIRTUAL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO buildings.main (`room`, `floor`, `weekDay`, `environment`, `startTime`, `endTime`) 
VALUES
(101, '1st', 'Friday', 'chaotic', '10:10:00', '11:25:00'),
(103, '1st', 'Thursday', 'quiet', '12:45:00', '20:05:00'),
(105, '1st', 'Tuesday', 'noisy', '11:45:00', '22:50:00'),
(108, '1st', 'Wednesday', 'chaotic', '09:30:00', '22:30:00'),
(109, '1st', 'Monday', 'quiet', '13:50:00', '21:40:00'),
(204, '2nd', 'Tuesday', 'noisy', '10:45:00', '11:40:00'),
(206, '2nd', 'Thursday', 'quiet', '12:10:00', '12:50:00'),
(208, '2nd', 'Wednesday', 'quiet', '18:45:00', '20:40:00'),
(209, '2nd', 'Friday', 'chaotic', '14:05:00', '16:15:00'),
(224, '2nd', 'Monday', 'noisy', '14:50:00', '15:55:00'),
(301, '3rd', 'Wednesday', 'chaotic', '18:55:00', '22:05:00'),
(302, '3rd', 'Monday', 'chaotic', '17:00:00', '16:30:00'),
(305, '3rd', 'Thursday', 'noisy', '10:30:00', '12:05:00'),
(308, '3rd', 'Friday', 'quiet', '22:05:00', '23:30:00'),
(310, '3rd', 'Tuesday', 'quiet', '09:00:00', '13:35:00'),
(401, '4th', 'Wednesday', 'noisy', '17:45:00', '12:25:00'),
(402, '4th', 'Thursday', 'chaotic', '12:25:00', '20:50:00'),
(403, '4th', 'Tuesday', 'quiet', '10:30:00', '14:50:00'),
(404, '4th', 'Friday', 'quiet', '09:15:00', '14:50:00'),
(405, '4th', 'Monday', 'chaotic', '11:35:00', '14:50:00'),
(500, '5th', 'Tuesday', 'noisy', '09:15:00', '11:45:00'),
(502, '5th', 'Monday', 'chaotic', '18:50:00', '19:45:00'),
(505, '5th', 'Thursdat', 'noisy', '10:20:00', '14:25:00'),
(506, '5th', 'Friday', 'noisy', '10:30:00', '15:45:00'),
(507, '5th', 'Wednesday', 'quiet', '16:15:00', '22:15:00'),
(601, '6th', 'Monday', 'quiet', '21:55:00', '22:20:00'),
(602, '6th', 'Tuesday', 'noisy', '12:50:00', '15:25:00'),
(603, '6th', 'Friday', 'noisy', '10:35:00', '11:25:00'),
(604, '6th', 'Wednesday', 'chaotic', '22:50:00', '23:15:00'),
(607, '6th', 'Thursday', 'quiet', '12:35:00', '17:55:00'),
(701, '7th', 'Thursday', 'quiet', '12:45:00', '20:10:00'),
(702, '7th', 'Wednesday', 'noisy', '10:35:00', '12:30:00'),
(704, '7th', 'Tuesday', 'noisy', '12:05:00', '13:45:00'),
(705, '7th', 'Friday', 'quiet', '17:45:00', '20:25:00'),
(707, '7th', 'Monday', 'chaotic', '09:35:00', '10:40:00'),
(801, '8th', 'Friday', 'chaotic', '11:05:00', '13:55:00'),
(802, '8th', 'Thursday', 'noisy', '10:00:00', '12:45:00'),
(803, '8th', 'Monday', 'noisy', '15:55:00', '17:25:00'),
(806, '8th', 'Wednesday', 'quiet', '02:00:00', '22:05:00'),
(809, '8th', 'Tuesday', 'noisy', '10:40:00', '20:05:00');


Select room, weekDay, environment, timeStarts, timeEnds from buildings.west26 order by room;
Select room, weekDay, environment, timeStarts, timeEnds from buildings.west16 order by room;
Select room, weekDay, environment, timeStarts, timeEnds from buildings.main order by room;