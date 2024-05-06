-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 06 Μάη 2024 στις 12:30:36
-- Έκδοση διακομιστή: 10.4.28-MariaDB
-- Έκδοση PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `phpchatapp_db`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` varchar(255) DEFAULT NULL,
  `outgoing_msg_id` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(48, '768986660', '933725800', 'Πώς μου χαράζεις το κορμί λες και με ξέρεις λες και με ξέρεις λες και μ έψαξες για μια στιγμή πιο πέρα απ’ το φιλί για να με νιώσεις για να με σώσεις Λες και με νοιάστηκες κι εσύ'),
(54, '933725800', '768986660', 'Και μη μου πεις πως δεν αντέχω εγώ τα βάθη Και μη μου πεις ότι τα εύκολα ζητώ Γιατί άλλοι πνίγηκαν σε δυο σταγόνες δάκρυ κι εγώ κολύμπησα έναν ωκεανό για σένα νίκησα έναν ωκεανό'),
(55, '933725800', '768986660', 'gia'),
(56, '768986660', '933725800', 'hello'),
(57, '933725800', '768986660', 'giasoy'),
(58, '768986660', '933725800', 'mia xarq a'),
(59, '933725800', '768986660', 'για σου φιλε μου'),
(60, '768986660', '933725800', 'τι κανιες'),
(61, '933725800', '768986660', 'καλά ειμαι'),
(62, '768986660', '933725800', 'ολα καλα'),
(63, '768986660', '933725800', 'ναι θελω να σου πω ενα μυστικ ο'),
(64, '933725800', '768986660', 'για πες'),
(65, '768986660', '933725800', 'πολυ καλο αυτο που εχεις κανει'),
(66, '933725800', '768986660', 'gia soy niko'),
(67, '768986660', '933725800', 'gia sou giorgo'),
(68, '768986660', '933725800', 'gia soy file moy'),
(69, '933725800', '768986660', 'ti kaneis');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT 'Offline now, Online '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(5, '1578600996', 'dgssd', 'fdgdf', 'df@yahoo.gr', '202cb962ac59075b964b07152d234b70', '1703094148Gideon mark.jpg', 'Online'),
(6, '323459059', 'dsf', 'cvx', 'l@yahoo.gr', '202cb962ac59075b964b07152d234b70', '1703158003Blacksteel.png', 'Offline now'),
(8, '1568576491', 'raftest', 'o', 'q@yahoo.gr', '202cb962ac59075b964b07152d234b70', '1703247123Gideon_Ironforge.jpg', 'Offline now'),
(9, '768986660', 'Γιώργος', 'Σαμπάνης', 'sampanis@yahoo.gr', '202cb962ac59075b964b07152d234b70', '1703253948sampanis_soula_xr.jpg', 'Online'),
(10, '933725800', 'Νίκος ', 'Οικονομόπουλος', 'oikon@yahoo.gr', '202cb962ac59075b964b07152d234b70', '1703254004oiko.jpg', 'Online'),
(11, '729940700', 'sabaton ', 'band ', 'sabaton@yahoo.gr', '202cb962ac59075b964b07152d234b70', '1703254110sabaton.jpg', 'Offline now'),
(12, '157941464', 'nightwish ', 'band', 'nightwish@yahoo.gr', '202cb962ac59075b964b07152d234b70', '1703254148Nightwish-2022.jpg', 'Offline now');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
