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
-- Структура таблицы `nomenclatures_table_3`
--

CREATE TABLE `nomenclatures_table_3` (
  `id` int(11) NOT NULL,
  `name_ru` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `nomenclatures_table_3`
--

INSERT INTO `nomenclatures_table_3` (`id`, `name_ru`) VALUES
(1, '2-х проводная'),
(2, '3-х проводная'),
(3, '4-х проводная'),
(6, '2-х, 3-х проводная');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `nomenclatures_table_3`
--
ALTER TABLE `nomenclatures_table_3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `nomenclatures_table_3`
--
ALTER TABLE `nomenclatures_table_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
