-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: akon00.mysql.ukraine.com.ua
-- Время создания: Июн 25 2021 г., 15:58
-- Версия сервера: 5.7.33-36-log
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `akon00_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `nomenclaturesTest`
--

CREATE TABLE `nomenclaturesTest` (
  `ID` int(11) NOT NULL COMMENT '#',
  `DEVICE_NAME_ID` varchar(255) NOT NULL COMMENT 'названия устройства',
  `CHANNELS` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `nomenclaturesTest`
--

INSERT INTO `nomenclaturesTest` (`ID`, `DEVICE_NAME_ID`, `CHANNELS`) VALUES
(1, 'WAD-2A-MAX', '2,3,3'),
(2, 'WAD-2A-MAX', '2,4,4'),
(3, 'WAD-2A-MAX', '10,3,5'),
(4, 'WAD-2A-MAX', '14,15,4'),
(5, 'WAD-2A-MAX', '14,3,4'),
(6, 'WAD-2A-MAX', '14,4,4'),
(9, 'WAD-2A-MAX', '17,3,4'),
(10, 'WAD-2A-MAX', '10,18,4'),
(11, 'WAD-2A-MAX', '12,13,13'),
(12, 'WAD-2A-MAX', '14,3,3'),
(13, 'WAD-A-MAX', '13,2'),
(14, 'WAD-A-MAX', '12,3'),
(15, 'WAD-A-MAX', '1,13'),
(16, 'WAD-A-MAX', '20,3'),
(17, 'WAD-A-MAX', '10,20'),
(18, 'WAD-A-MAX', '19,4'),
(19, 'WAD-A-MAX', '15,20'),
(20, 'WAD-A-MAX', '21,3'),
(21, 'WAD-A-MAX', '21,49'),
(22, 'WAD-A-MAX', '15,22'),
(23, 'WAD-A-MAX', '22,3'),
(24, 'WAD-A-MAX', '22,49'),
(25, 'WAD-A-MAX', '23,4');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `nomenclaturesTest`
--
ALTER TABLE `nomenclaturesTest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DEVICE_NAME_ID` (`DEVICE_NAME_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `nomenclaturesTest`
--
ALTER TABLE `nomenclaturesTest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '#', AUTO_INCREMENT=513;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
