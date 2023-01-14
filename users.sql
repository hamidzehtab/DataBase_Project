CREATE TABLE `users_customusers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(150) DEFAULT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `ssid` varchar(10) DEFAULT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  `level` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
);

