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

Select room, weekDay, environment, timeStarts, timeEnds from buildings.west26 order by room;