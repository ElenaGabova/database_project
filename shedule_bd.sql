-- phpMyAdmin SQL Dump
-- version 4.4.9
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 19 2016 г., 15:43
-- Версия сервера: 5.5.23
-- Версия PHP: 5.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;


--
-- База данных: `shedule_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `lessons`
--

CREATE TABLE IF NOT EXISTS `lessons` (
  `lesson_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `gr_number` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `info` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `lessons`
--

INSERT INTO `lessons` (`lesson_id`, `teacher_id`, `gr_number`, `info`) VALUES
(40, 1, '125', ''),
(41, 5, '143', ''),
(42, 3, '123', ''),
(43, 1, '145', ''),
(44, 2, '125 ', ''),
(45, 4, '119a', ''),
(46, 5, '129', 'по 20.10'),
(47, 5, '129', 'по 20.10'),
(48, 5, '129', 'по 20.10'),
(49, 1, '145', '16.09'),
(50, 0, '', ''),
(51, 0, '', ''),
(52, 1, '145', 'c 26.10'),
(53, 2, '129', ''),
(54, 1, '129', ''),
(55, 3, '145', ''),
(56, 3, '143', ''),
(57, 4, '133', ''),
(58, 4, '145', ''),
(59, 1, '125', ''),
(60, 5, '145', ''),
(61, 1, '120', ''),
(62, 4, '130', ''),
(63, 5, '125', ''),
(64, 5, '110', ''),
(65, 0, '', ''),
(66, 0, '', ''),
(67, 0, '', ''),
(68, 0, '', ''),
(69, 0, '', ''),
(70, 0, '', ''),
(71, 0, '', ''),
(72, 0, '', ''),
(73, 0, '', ''),
(74, 0, '', ''),
(75, 0, '', ''),
(76, 0, '', ''),
(77, 1, '149', ''),
(78, 0, '', ''),
(79, 1, '149', ''),
(80, 0, '', ''),
(81, 3, '110', ''),
(82, 0, '', ''),
(83, 3, '110', ''),
(84, 0, '', ''),
(85, 5, '120', ''),
(86, 0, '', ''),
(87, 5, '120', ''),
(88, 0, '', ''),
(89, 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `shedule`
--

CREATE TABLE IF NOT EXISTS `shedule` (
  `shedule_id` int(11) NOT NULL,
  `hall_number` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `shedule`
--

INSERT INTO `shedule` (`shedule_id`, `hall_number`, `lesson_id`, `date`, `time`) VALUES
(13, 515, 39, 2, 1),
(14, 515, 40, 1, 1),
(15, 518, 41, 5, 1),
(16, 515, 42, 1, 2),
(17, 515, 43, 4, 1),
(18, 515, 44, 4, 2),
(19, 515, 45, 4, 3),
(20, 515, 46, 1, 4),
(21, 515, 47, 4, 5),
(22, 515, 48, 4, 4),
(23, 515, 49, 1, 1),
(24, 516, 52, 1, 3),
(25, 517, 53, 1, 7),
(26, 518, 54, 1, 1),
(27, 515, 55, 1, 1),
(28, 515, 56, 2, 1),
(29, 516, 57, 1, 2),
(30, 516, 58, 2, 3),
(31, 517, 59, 2, 7),
(32, 517, 60, 2, 1),
(33, 516, 61, 3, 1),
(34, 518, 62, 3, 4),
(35, 517, 63, 4, 1),
(36, 515, 64, 5, 2),
(37, 0, 72, 0, 0),
(38, 0, 73, 0, 0),
(39, 0, 74, 0, 0),
(40, 0, 75, 0, 0),
(41, 0, 76, 0, 0),
(42, 515, 77, 6, 1),
(43, 0, 78, 0, 0),
(44, 515, 79, 6, 2),
(45, 0, 80, 0, 0),
(46, 519, 81, 6, 3),
(47, 0, 82, 0, 0),
(48, 516, 83, 6, 3),
(49, 0, 84, 0, 0),
(50, 517, 85, 1, 1),
(51, 0, 86, 0, 0),
(52, 519, 87, 6, 1),
(53, 0, 88, 0, 0),
(54, 0, 89, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `teacher_name`) VALUES
(1, 'Головатая'),
(2, 'Матвеева'),
(3, 'Ермоленко'),
(4, 'Макаров'),
(5, 'Довжко'),
(6, 'Попова');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Индексы таблицы `shedule`
--
ALTER TABLE `shedule`
  ADD PRIMARY KEY (`shedule_id`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `lessons`
--
ALTER TABLE `lessons`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT для таблицы `shedule`
--
ALTER TABLE `shedule`
  MODIFY `shedule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
