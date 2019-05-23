-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 19-05-23 04:58
-- 서버 버전: 10.1.31-MariaDB
-- PHP 버전: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `mvc`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE `board` (
  `idx` int(11) NOT NULL,
  `writer` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`idx`, `writer`, `subject`, `content`, `date`) VALUES
(21, '작성자1', '제목입니다', '컨텐츠입니다컨텐츠입니다', '2018-05-12 00:41:32'),
(22, '작성자2', '제목2입니다', '커엉ㄴ찬태ㅏㅍ넝피ㅐㅏㄴㅇ제목2입니다', '2018-05-12 00:41:32'),
(23, '작성자', '글제목입니다', '글내용 입니다 글작성 테스트', '2018-05-12 02:10:18'),
(24, '작강', '가알ㄴ아', 'dsfksdjfsdlfk;sdmflsdkmfj', '2018-05-12 02:11:22'),
(25, 'as', 'dasd', 'asd', '2018-05-12 02:12:13'),
(26, '테스트', 'asd', 'asd', '2019-05-20 15:12:24'),
(27, '테스트', '123', '123', '2019-05-20 15:13:35'),
(28, '테스트', '123', '123', '2019-05-20 15:13:36'),
(29, '테스트', '123', '123', '2019-05-20 15:13:36'),
(30, '테스트', '123', '123', '2019-05-20 15:13:37'),
(31, '테스트', '123', '123', '2019-05-20 15:13:37'),
(32, '테스트', '123', '123', '2019-05-20 15:13:37'),
(33, '테스트', '123', '123', '2019-05-20 15:13:37'),
(34, 'undefined', 'undefined', 'undefined', '2019-05-20 15:14:02'),
(35, '테스트', '321', '321', '2019-05-20 15:14:15'),
(36, '테스트', '12', '12', '2019-05-20 15:15:28'),
(37, '테스트', '12', '12', '2019-05-20 15:15:28'),
(38, 'undefined', 'undefined', 'undefined', '2019-05-20 15:17:27'),
(39, 'e', 'ㅁㅁ', 'ㅁㅁ', '2019-05-21 19:03:36'),
(40, 'e', 'ㅁㅁ', 'ㅁㅁ', '2019-05-21 19:03:47'),
(41, 'e', 'ㅁㅁ', 'ㅁㅁ', '2019-05-21 19:03:48'),
(42, 'e', 'ㅁㅁ', 'ㅁㅁ', '2019-05-21 19:09:24'),
(43, 'e', 'ㅁㅁ', 'ㅁㅁ', '2019-05-21 19:10:03'),
(44, 'e', 'ㅁㅁ', 'ㅁㅁ', '2019-05-21 19:11:35'),
(45, 'e', 'ㄴㄴ', 'ㄴㄴ', '2019-05-21 19:14:36'),
(46, 'e', 'ㅇㅇ', 'ㅇㅇ', '2019-05-21 19:15:17'),
(47, 'e', '테스트입니다', '테스트입니다', '2019-05-21 19:15:32');

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `idx` int(11) NOT NULL,
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`idx`, `id`, `pw`, `name`) VALUES
(13, 'asd', 'asd', '테스트'),
(14, 'admin', '1234', '관리자'),
(15, 'test', '1234', '테스터'),
(16, 'undefined', 'undefined', 'undefined'),
(17, 'a', 'a', 'a'),
(18, 'b', 'b', 'b'),
(19, 'c', 'c', 'c'),
(20, 'd', 'd', 'd'),
(21, 'e', 'e', 'e'),
(22, 'f', 'f', 'f'),
(23, '1', '1', '1');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`idx`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- 테이블의 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
