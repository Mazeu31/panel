SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET SQL_MODE = "ALLOW_INVALID_DATES";
SET time_zone = "+08:00";

CREATE TABLE IF NOT EXISTS `server` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `servername` varchar(255) NOT NULL DEFAULT 'VPNServer',
  `server_owner` varchar(255) NOT NULL DEFAULT 'Anonymous',
  `country` varchar(30) NOT NULL DEFAULT 'Unknown',
  `host` varchar(255) NOT NULL DEFAULT '0.0.0.0',
  `openssh` varchar(255) NOT NULL DEFAULT '22',
  `dropbear` varchar(255) NOT NULL DEFAULT '550',
  `stunnel` varchar(255) NOT NULL DEFAULT '443',
  `proxy` varchar(255) NOT NULL DEFAULT '8080',
  `openvpn_port` varchar(255) NOT NULL DEFAULT '110',
  `openvpn_link` varchar(255) NOT NULL DEFAULT 'none',
  `limitacc` varchar(255) NOT NULL DEFAULT '0',
  `expday` int(5) NOT NULL DEFAULT '7',
  `torrent` varchar(20) NOT NULL DEFAULT 'No',  
  `price` int(10) NOT NULL DEFAULT '0',
  `root_pass` varchar(500) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT 'none',
  `firstname` varchar(255) NOT NULL DEFAULT 'none',
  `lastname` varchar(255) NOT NULL DEFAULT 'none',
  `username` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `saldo` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '2',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;