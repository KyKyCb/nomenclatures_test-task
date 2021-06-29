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
-- Структура таблицы `nomenclatures_table_1`
--

CREATE TABLE `nomenclatures_table_1` (
  `ID` int(11) NOT NULL COMMENT '#',
  `NAME` varchar(32) NOT NULL COMMENT 'Тип сигнала'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Типы сигналов' ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `nomenclatures_table_1`
--

INSERT INTO `nomenclatures_table_1` (`ID`, `NAME`) VALUES
(1, 'Напряжение'),
(2, 'Термопара'),
(3, 'Термометр сопротивления'),
(4, 'Ток'),
(5, 'Сопротивление'),
(6, 'СКЗ напряжения переменного тока'),
(7, 'Двуполярное напряжение'),
(8, 'СКЗ силы переменного тока'),
(9, 'Двуполярная сила тока'),
(10, 'Частота'),
(11, 'Tenso'),
(12, 'Уровень лог.1'),
(13, 'Твердотельное реле'),
(14, 'Эм.реле'),
(15, 'DryCon (Сухой контакт)'),
(18, '1-Wire'),
(19, 'Потенциометр'),
(20, 'Освещенность');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `nomenclatures_table_1`
--
ALTER TABLE `nomenclatures_table_1`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `nomenclatures_table_1`
--
ALTER TABLE `nomenclatures_table_1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '#', AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
