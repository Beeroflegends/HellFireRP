-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-05-2020 a las 21:16:41
-- Versión del servidor: 10.3.22-MariaDB-0+deb10u1
-- Versión de PHP: 7.3.14-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zap443613-4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('society_ambulance', 'Ambulance', 1),
('society_cardealer', 'Cardealer', 1),
('society_mechanic', 'Mechanic', 1),
('society_military', 'Military', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_cardealer', 0, NULL),
(2, 'society_mechanic', 0, NULL),
(3, 'society_police', 0, NULL),
(4, 'society_taxi', 0, NULL),
(5, 'society_ambulance', 0, NULL),
(6, 'society_military', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('housing', 'Housing', 0),
('society_ambulance', 'Ambulance', 1),
('society_cardealer', 'Cardealer', 1),
('society_mechanic', 'Mechanic', 1),
('society_military', 'Military', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bought_houses`
--

CREATE TABLE `bought_houses` (
  `houseid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('housing', 'Housing', 0),
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_police', 'Police', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT '',
  `keybind7` varchar(50) DEFAULT 'z',
  `emote7` varchar(255) DEFAULT '',
  `keybind8` varchar(50) DEFAULT 'x',
  `emote8` varchar(255) DEFAULT '',
  `keybind9` varchar(50) DEFAULT 'g',
  `emote9` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`, `keybind7`, `emote7`, `keybind8`, `emote8`, `keybind9`, `emote9`) VALUES
('steam:110000135585a76', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '', 'z', '', 'x', '', 'g', ''),
('steam:1100001410bcd29', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '', 'z', '', 'x', '', 'g', ''),
('steam:11000010bde4b9d', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', 'radio', 'z', '', 'x', '', 'g', ''),
('steam:110000141182184', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '', 'z', '', 'x', '', 'g', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glovebox_inventory`
--

CREATE TABLE `glovebox_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `importedvehicles`
--

CREATE TABLE `importedvehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `importedvehicles`
--

INSERT INTO `importedvehicles` (`name`, `model`, `price`, `category`) VALUES
('370z', '370z', 500, 'nissan'),
('Charger 69', '69charger', 500, 'dodge'),
('2000', 'ap2', 500, 'honda'),
('Challenger 70', 'chall70', 500, 'dodge'),
('Camaro ZL1', 'czl1', 500, 'chevrolet'),
('Desmo', 'desmo', 500, 'motos'),
('Divo', 'divo', 500, 'bugatti'),
('Eclipse', 'eclipse', 500, 'mitsubishi'),
('Evo 9', 'evo9', 500, 'mitsubishi'),
('Evoque', 'evoque', 500, 'rangerover'),
('F812', 'f812', 500, 'ferrari'),
('FK8', 'fk8', 500, 'honda'),
('Civic', 'fnfcivic', 500, 'honda'),
('F-Pace', 'fpacehm', 500, 'jaguar'),
('Yukon', 'gmcyd', 500, 'gmc'),
('Huracan', 'hevo', 500, 'lamborghini'),
('i8', 'i8', 500, 'bmw'),
('Model S', 'models', 500, 'tesla'),
('Mustang 2019', 'mustang19', 500, 'ford'),
('Nsx', 'na1', 500, 'honda'),
('GT3', 'pgt3', 500, 'porsche'),
('Escalade', 'pressuv', 500, 'cadillac'),
('R8', 'r8ppi', 500, 'audi'),
('Ram 2500', 'ram2500', 500, 'dodge'),
('Rapide', 'rapide', 500, 'aston'),
('RS3', 'rs318', 500, 'audi'),
('RX7', 'rx7tunable', 500, 'mazda'),
('Centenario', 'sc18', 500, 'lamborghini'),
('Senna', 'senna', 500, 'mclaren'),
('SRT8', 'srt8b', 500, 'jeep'),
('Stelvio', 'stelvio', 500, 'alpha'),
('Supra 19', 'supra19', 500, 'toyota'),
('Roadster', 'tr22', 500, 'tesla'),
('Urus', 'urus', 500, 'lamborghini');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `importedvehicle_categories`
--

CREATE TABLE `importedvehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `importedvehicle_categories`
--

INSERT INTO `importedvehicle_categories` (`name`, `label`) VALUES
('alpha', 'Alpha Romeo'),
('aston', 'Aston Martin'),
('audi', 'Audi'),
('bmw', 'BMW'),
('bugatti', 'Bugatti'),
('cadillac', 'Cadillac'),
('chevrolet', 'Chevrolet'),
('dodge', 'Dodge'),
('ferrari', 'Ferrari'),
('ford', 'Ford'),
('gmc', 'GMC'),
('honda', 'Honda'),
('jaguar', 'Jaguar'),
('jeep', 'Jeep'),
('lamborghini', 'Lamborghini'),
('mazda', 'Mazda'),
('mclaren', 'McLaren'),
('mercedes', 'Mercedes'),
('mitsubishi', 'Mitsubishi'),
('motos', 'Motos'),
('nissan', 'Nissan'),
('porsche', 'Porsche'),
('rangerover', 'Range Rover'),
('tesla', 'Tesla'),
('toyota', 'Toyota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(1) NOT NULL DEFAULT 0,
  `can_remove` tinyint(1) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `price`) VALUES
('9mm_rounds', '9mm Rounds', 0, 0, 1, 0),
('adp', 'Combat ADP', 0, 0, 1, 0),
('adrenaline', 'Adrenaline', 0, 0, 1, 0),
('advanced', 'Advanced Rifle', 0, 0, 1, 0),
('advancedlockpick', 'Advanced Lockpick', 0, 0, 1, 10),
('ak47', 'AK47', 0, 0, 1, 0),
('appistol', 'Appistol', 0, 0, 1, 0),
('apple_iphone', 'iPhone', 0, 0, 1, 0),
('armbrace', 'Arm Brace', 0, 0, 1, 0),
('assaultrifle', 'AK 47', 0, 0, 1, 0),
('baggie', 'Baggie', 0, 0, 1, 10),
('bagofdope', 'Bullet Casing', 0, 0, 1, 0),
('bandage', 'Bandage', 0, 0, 1, 0),
('bankidcard', 'Fleeca ID', 0, 0, 1, 0),
('beer', 'Beer', 0, 0, 1, 0),
('binocular', 'Binoculars', 0, 0, 1, 0),
('blank_plate', 'Blank License Plate', 0, 0, 1, 0),
('blowtorch', 'Blowtorch', 0, 0, 1, 0),
('bluray', 'Bluray', 0, 0, 1, 0),
('bodybandage', 'Body Bandage', 0, 0, 1, 0),
('book', 'Book', 0, 0, 1, 0),
('bread', 'Bread', 0, 0, 1, 5),
('breadboard', 'Breadboard', 0, 0, 1, 0),
('brownie', 'Brownie', 0, 0, 1, 0),
('bulletproof', 'Bulletproof', 0, 0, 1, 500),
('cannabis', 'Cannabis', 0, 0, 1, 0),
('cashew', 'Cashew', 0, 0, 1, 0),
('casio', 'Casio Watch', 0, 0, 1, 0),
('casio_watch', 'Casio Watch', 0, 0, 1, 0),
('cchip', 'Chip', 0, 0, 1, 0),
('chemicals', 'Chemicals', 0, 0, 1, 0),
('chemicalslisence', 'Chemicals license', 0, 0, 1, 0),
('chips', 'Chips', 0, 0, 1, 0),
('chocolate', 'Chocolate', 0, 0, 1, 0),
('cigarette', 'Cigarette', 0, 0, 1, 0),
('clutch', 'Clutch', 0, 0, 1, 0),
('cocacola', 'Coca-Cola', 0, 0, 1, 0),
('coca_leaf', 'Coca Leaf', 0, 0, 1, 0),
('coffee', 'Cafe', 0, 0, 1, 5),
('coke', 'Coke', 0, 0, 1, 0),
('coke10g', 'Cocaine (10G)', 0, 0, 1, 0),
('coke1g', '[1g] Coke', 0, 0, 1, 0),
('cokebrick', 'Cocaine Brick (100G)', 0, 0, 1, 0),
('cookingpot', 'Cooking Pot', 0, 0, 1, 0),
('copper', 'Diamond', 0, 0, 1, 0),
('crack1g', '[1g] Crack', 0, 0, 1, 0),
('craftingtable', 'Crafting Table', 0, 0, 1, 0),
('cupcake', 'Cupcake', 0, 0, 1, 0),
('diamond', 'Diamond', 1, 0, 1, 0),
('dia_box', 'Diamond Box', 0, 0, 1, 0),
('dopebag', 'Bolsas', 1, 0, 1, 0),
('drill', 'Drill', 0, 0, 1, 0),
('drpepper', 'Dr Pepper', 0, 0, 1, 0),
('drugbags', 'Bags', 0, 0, 1, 0),
('drugItem', 'Black USB-C', 0, 0, 1, 0),
('drugscales', 'Scales', 0, 0, 1, 0),
('electronics', 'Electronics', 1, 0, 1, 0),
('electronic_kit', 'Electronic Kit', 1, 0, 1, 0),
('energy', 'Energy Drink', 0, 0, 1, 0),
('firstaid', 'First-Aid Kit', 0, 0, 1, 0),
('fish', 'Fish', 0, 0, 1, 0),
('fishbait', 'Fish Bait', 0, 0, 1, 0),
('fishingrod', 'Fishing Rod', 0, 0, 1, 0),
('fixkit', 'Fix Kit', 0, 0, 1, 0),
('fuse', 'Fuse', 1, 0, 1, 0),
('gameboy', 'Gameboy', 0, 0, 1, 0),
('gamingperipherals', 'Headphones', 0, 0, 1, 0),
('gardensalad', 'Garden Salad', 0, 1, 1, 0),
('gauze', 'Gauze', 0, 0, 1, 0),
('glass', 'Glass', 0, 0, 1, 0),
('gold', 'Gold', 1, 0, 1, 0),
('gold_bar', 'Gold Bar', 0, 0, 1, 0),
('gpixel', 'Huawei P20', 0, 0, 1, 0),
('gps', 'GPS', 0, 0, 1, 0),
('grand_cru', 'Champagne', 0, 0, 1, 0),
('hackerDevice', 'Hacking Device', 0, 0, 1, 0),
('hamburger', 'Hamburger', 0, 0, 1, 0),
('heroin', 'Heroin', 0, 0, 1, 0),
('highgradefert', 'Fertilizer [high]', 0, 0, 1, 0),
('hqscale', 'High Quality Scale', 0, 0, 1, 0),
('hydrochloric_acid', 'HydroChloric Acid', 0, 0, 1, 0),
('hydrocodone', 'Hydrocodone', 0, 0, 1, 0),
('icedtea', 'Iced Tea', 0, 0, 1, 0),
('icetea', 'Ice-Tea', 0, 0, 1, 0),
('id_card', 'ID Card', 1, 0, 1, 0),
('iPhone X', 'iphone', 0, 0, 1, 0),
('iron', 'Iron', 1, 0, 1, 0),
('joint2g', 'Joint (2G)', 0, 0, 1, 0),
('laptop', 'Laptop', 0, 0, 1, 0),
('laptop_h', 'Hacker Laptop', 1, 0, 1, 0),
('leather', 'Leather', 0, 0, 1, 0),
('legbrace', 'Leg Brace', 0, 0, 1, 0),
('lemonade', 'Lemonade', 0, 0, 1, 0),
('lighter', 'Lighter', 0, 0, 1, 0),
('lithium', 'Lithium', 1, 0, 1, 0),
('lockpick', 'Lockpick', 0, 0, 1, 0),
('lowgradefert', 'Fertilizer [low]', 0, 0, 1, 0),
('lsa', 'LSA', 0, 0, 1, 0),
('lsd', 'LSD', 0, 0, 1, 0),
('marijuana', 'Marijuana', 1, 0, 1, 0),
('meat', 'Meat', 0, 0, 1, 0),
('medikit', 'Medikit', 0, 0, 1, 0),
('medkit', 'Medkit', 0, 0, 1, 0),
('meth', 'Meth', 0, 0, 1, 0),
('meth10g', 'Meth (10G)', 0, 0, 1, 0),
('meth1g', '[1g] Meth', 1, 0, 1, 0),
('methbrick', 'Meth Brick (100G)', 0, 0, 1, 0),
('microsmg', 'Microsmg', 0, 0, 1, 0),
('mini_c4', 'Mini C4 Charge', 0, 0, 1, 0),
('mleko', 'Milk', 1, 0, 1, 0),
('moneda', 'Gold coin', 0, 0, 1, 0),
('moneywash', 'MoneyWash License', 1, 0, 1, 0),
('morphine', 'Morphine', 0, 0, 1, 0),
('mosquete', 'Mosquete', 0, 0, 1, 0),
('muskete', 'x5 Muskette Ammo', 0, 0, 1, 0),
('neckbrace', 'Neck Brace', 0, 0, 1, 0),
('Nightvision', 'Nightvision', 0, 0, 1, 0),
('nokia_phone', 'Nokia Phone', 0, 0, 1, 0),
('normal_c4', 'C4 Charge', 0, 0, 1, 0),
('nswitch', 'Nintendo Switch', 0, 0, 1, 0),
('ogkush', 'oG Kush', 0, 0, 1, 0),
('oxycutter', 'Oxycutter', 0, 0, 1, 0),
('oxygen_mask', 'Oxygen Tank', 0, 0, 1, 350),
('p90', 'P90', 0, 0, 1, 0),
('phone', 'Phone', 0, 0, 1, 0),
('pildora', 'Pill', 1, 0, 1, 0),
('pistachio', 'Pistachio', 0, 0, 1, 0),
('pistola', 'Pistola', 0, 0, 1, 0),
('pistola30', 'x30 Pistol Ammo', 0, 0, 1, 0),
('pizza', 'Pizza', 0, 0, 1, 0),
('plantpot', 'Plant Pot', 0, 0, 1, 0),
('playersafe', 'Safe', 0, 0, 1, 0),
('playstation', 'Playstation', 0, 0, 1, 0),
('poppyresin', 'Poppy Resin', 0, 0, 1, 0),
('powerade', 'Powerade', 1, 0, 1, 0),
('psuedoephedrine', 'Psuedoephedrine', 1, 0, 1, 0),
('pyrex', 'Pyrex', 1, 0, 1, 0),
('rawcoke', 'Raw Coke', 0, 0, 1, 0),
('rawcrack', 'Raw Crack', 1, 0, 1, 0),
('rawmeth', 'Raw Meth', 0, 0, 1, 0),
('recipe_bagofdope', 'Recipe: Bag of Dope', 0, 0, 1, 0),
('rifle30', 'x30 Rifle Ammo', 0, 0, 1, 0),
('rolex', 'Rolex Watch', 0, 0, 1, 0),
('rollingpaper', 'Rolling Paper', 0, 0, 1, 0),
('rolling_paper', 'Rolling Paper', 0, 0, 1, 0),
('rolpaper', 'Rolling Paper', 0, 0, 1, 0),
('rubber', 'Rubber', 0, 0, 1, 0),
('samsungs10', 'Samsung S10', 0, 0, 1, 0),
('samsung_s8', 'Samsung S8', 0, 0, 1, 0),
('sandwich', 'Sandwich', 0, 0, 1, 0),
('scrap_metal', 'Scrap Metal', 0, 0, 1, 0),
('scratchoff', 'Lottery Ticket', 0, 0, 1, 0),
('screen', 'Screen', 1, 0, 1, 0),
('scubagear', 'Scuba Gear', 0, 0, 1, 0),
('shark', 'Shark', 0, 0, 1, 0),
('shotgun_shells', 'Shotgun Shells', 0, 0, 1, 0),
('smg30', 'x30 SMG Ammo', 0, 0, 1, 0),
('soda', 'Soda', 0, 0, 1, 0),
('sodium_hydroxide', 'Sodium Hydroxide', 1, 0, 1, 0),
('speaker', 'Speakers', 0, 0, 1, 0),
('steel', 'Steel', 1, 0, 1, 0),
('stones', 'Stones', 0, 0, 1, 0),
('sulfuric_acid', 'Sulfuric Acid', 0, 0, 1, 0),
('sunglasses', 'Oakley Sunglasses', 0, 0, 1, 0),
('tablet', 'iPad', 0, 0, 1, 0),
('tequila', 'Tequila', 0, 0, 1, 0),
('thermal_charge', 'Thermal Charge', 0, 0, 1, 0),
('thermite', 'Thermite', 0, 0, 1, 0),
('thionyl_chloride', 'Thionyl Chloride', 0, 0, 1, 0),
('trimmedweed', 'Marihuana', 1, 0, 1, 0),
('tuning_laptop', 'Laptop Tuning', 0, 0, 1, 0),
('turtle', 'Sea Turtle', 0, 0, 1, 0),
('turtlebait', 'Turtle Bait', 0, 0, 1, 0),
('vicodin', 'Vicodin', 0, 0, 1, 0),
('vodka', 'Vodka', 0, 0, 1, 0),
('washedstones', 'Washed stones', 0, 0, 1, 0),
('watch', 'iPod', 0, 0, 1, 0),
('water', 'Water', 0, 0, 1, 0),
('WEAPON_BAT', 'Baseball Bat', 0, 0, 1, 0),
('WEAPON_COMBATPISTOL', 'Combat Pistol', 0, 1, 1, 0),
('WEAPON_DOUBLEACTION', 'Double Action Revolver', 0, 1, 1, 0),
('WEAPON_FLASHLIGHT', 'Flashlight', 1, 0, 1, 0),
('WEAPON_KNIFE', 'Knife', 0, 1, 1, 0),
('WEAPON_PISTOL', 'Pistol', 0, 1, 1, 0),
('WEAPON_PISTOL50', 'Pistol .50', 0, 1, 1, 0),
('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', 1, 0, 1, 0),
('WEAPON_SAWNOFFSHOTGUN', 'Sawed-Off Shotgun', 0, 1, 1, 0),
('WEAPON_STUNGUN', 'Taser', 0, 1, 1, 0),
('weed', 'DNA Analyzer', 0, 0, 1, 0),
('weed20g', 'Weed (20G)', 0, 0, 1, 0),
('weed4g', 'Weed 4g', 0, 0, 1, 0),
('weedbrick', 'Weed Brick (200G)', 0, 0, 1, 0),
('weedqtroz', 'Quarter Oz', 1, 0, 1, 0),
('whisky', 'Whisky', 0, 0, 1, 0),
('white_pearl', 'White Pearl', 0, 0, 1, 0),
('wine', 'Wine', 0, 0, 1, 0),
('xbox', 'Xbox One', 0, 0, 1, 0),
('xbox360', 'Xbox 360', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'Ambulance', 1),
('busdriver', 'Bus Driver', 0),
('cardealer', 'Cardealer', 1),
('deliverer', 'Deliverer', 0),
('garbage', 'Garbage Collection', 0),
('gopostal', 'GoPostal', 0),
('mechanic', 'Mechanic', 1),
('military', 'Military', 1),
('pizza', 'Pizzadelivery', 0),
('police', 'LSPD', 1),
('taxi', 'Taxi', 0),
('unemployed', 'Unemployed', 0),
('works', 'City Works', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(2, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(3, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(4, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(5, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(6, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(7, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(8, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(9, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(10, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(11, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(12, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(13, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(14, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(15, 'police', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(16, 'police', 1, 'officer', 'Officier', 40, '{}', '{}'),
(17, 'police', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(18, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(19, 'police', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(20, 'taxi', 0, 'recrue', 'Rekrut', 12, '{}', '{}'),
(21, 'taxi', 1, 'novice', 'Anfänger', 24, '{}', '{}'),
(22, 'taxi', 2, 'experimente', 'Experte', 36, '{}', '{}'),
(23, 'taxi', 3, 'uber', 'Schichtführer', 48, '{}', '{}'),
(24, 'taxi', 4, 'boss', 'Chef', 0, '{}', '{}'),
(25, 'works', 0, 'interim', 'Employee', 800, '{}', '{}'),
(26, 'garbage', 0, 'employee', 'Employee', 750, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(27, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(28, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(29, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(30, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(31, 'military', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(32, 'military', 1, 'officer', 'Officier', 40, '{}', '{}'),
(33, 'military', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(34, 'military', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(35, 'military', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(36, 'busdriver', 0, 'driver', 'Bus Driver', 50, '{}', '{}'),
(38, 'deliverer', 0, 'employee', 'Employee', 200, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(39, 'gopostal', 0, 'employee', 'Sedex', 200, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(40, 'pizza', 0, 'employee', 'Valores', 200, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Weapons');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdt_reports`
--

CREATE TABLE `mdt_reports` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `incident` longtext DEFAULT NULL,
  `charges` longtext DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `jailtime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mdt_warrants`
--

CREATE TABLE `mdt_warrants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `char_id` int(11) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `report_title` varchar(255) DEFAULT NULL,
  `charges` longtext DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `expire` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `garage` varchar(200) DEFAULT 'A',
  `lasthouse` int(11) DEFAULT 0,
  `modelname` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phone_app_chat`
--

INSERT INTO `phone_app_chat` (`id`, `channel`, `message`, `time`) VALUES
(28, 'blackmarket', 'yo', '2020-05-14 18:11:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(122, '961-7139', 'king', 1, '2020-05-14 17:36:38', 0),
(123, '382-0423', 'reece', 1, '2020-05-14 17:45:39', 0),
(124, '382-0423', '911]', 1, '2020-05-14 17:51:21', 0),
(125, '382-0423', '911', 1, '2020-05-14 18:08:14', 0),
(126, '382-0423', 'reece', 1, '2020-05-14 18:09:07', 0),
(127, '382-0423', 'ambulance', 1, '2020-05-14 18:29:12', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(106, 'taxi', '382-0423', 'hello', '2020-05-14 18:08:47', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playerhousing`
--

CREATE TABLE `playerhousing` (
  `id` int(32) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `rented` tinyint(1) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `wardrobe` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `entering` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `exit` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `inside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `outside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ipls` varchar(255) COLLATE utf8mb4_bin DEFAULT '[]',
  `gateway` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(89, 'Grove StreetLowApartment1', 'Grove Street', '{\"x\":85.327140808105,\"y\":-1959.2492675781,\"z\":21.121671676636}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":85.327140808105,\"y\":-1959.2492675781,\"z\":21.121671676636}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 90353),
(91, 'Grove StreetLowApartment3', 'Grove Street', '{\"x\":126.40908050537,\"y\":-1929.4625244141,\"z\":21.382415771484}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":126.40908050537,\"y\":-1929.4625244141,\"z\":21.382415771484}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 102559),
(92, 'Grove StreetLowApartment4', 'Grove Street', '{\"x\":56.867755889893,\"y\":-1920.7834472656,\"z\":21.63752746582}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":56.867755889893,\"y\":-1920.7834472656,\"z\":21.63752746582}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 105061),
(93, 'Grove StreetLowApartment5', 'Grove Street', '{\"x\":40.031837463379,\"y\":-1911.9608154297,\"z\":21.953498840332}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":40.031837463379,\"y\":-1911.9608154297,\"z\":21.953498840332}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 98860),
(94, 'Grove StreetLowApartment6', 'Grove Street', '{\"x\":6.8058080673218,\"y\":-1881.9658203125,\"z\":23.319484710693}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":6.8058080673218,\"y\":-1881.9658203125,\"z\":23.319484710693}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 101381),
(95, 'Grove StreetLowApartment7', 'Grove Street', '{\"x\":-5.1470332145691,\"y\":-1871.2437744141,\"z\":24.1510181427}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":-5.1470332145691,\"y\":-1871.2437744141,\"z\":24.1510181427}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 104302),
(96, 'Grove StreetLowApartment8', 'Grove Street', '{\"x\":-19.014471054077,\"y\":-1856.8310546875,\"z\":24.974359512329}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":-19.014471054077,\"y\":-1856.8310546875,\"z\":24.974359512329}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 103508),
(97, 'Grove StreetLowApartment8', 'Grove Street', '{\"x\":-33.171352386475,\"y\":-1847.3146972656,\"z\":26.19352722168}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":-33.171352386475,\"y\":-1847.3146972656,\"z\":26.19352722168}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 103508),
(98, 'Grove StreetLowApartment10', 'Grove Street', '{\"x\":20.42714881897,\"y\":-1844.4652099609,\"z\":24.601739883423}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":20.42714881897,\"y\":-1844.4652099609,\"z\":24.601739883423}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 106240),
(99, 'Grove StreetLowApartment11', 'Grove Street', '{\"x\":28.118940353394,\"y\":-1852.806640625,\"z\":23.670877456665}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":28.118940353394,\"y\":-1852.806640625,\"z\":23.670877456665}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 88360),
(100, 'Grove StreetLowApartment12', 'Grove Street', '{\"x\":53.250305175781,\"y\":-1874.6672363281,\"z\":22.418930053711}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":53.250305175781,\"y\":-1874.6672363281,\"z\":22.418930053711}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 85200),
(101, 'Covenant AvenueLowApartment13', 'Covenant Avenue', '{\"x\":114.81670379639,\"y\":-1887.2506103516,\"z\":23.928228378296}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":114.81670379639,\"y\":-1887.2506103516,\"z\":23.928228378296}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 91341),
(102, 'Covenant AvenueLowApartment14', 'Covenant Avenue', '{\"x\":129.07104492188,\"y\":-1894.2924804688,\"z\":23.362493515015}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":129.07104492188,\"y\":-1894.2924804688,\"z\":23.362493515015}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 90137),
(103, 'Covenant AvenueLowApartment15', 'Covenant Avenue', '{\"x\":206.54621887207,\"y\":-1893.7518310547,\"z\":24.425861358643}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":206.54621887207,\"y\":-1893.7518310547,\"z\":24.425861358643}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 92046),
(104, 'Covenant AvenueLowApartment16', 'Covenant Avenue', '{\"x\":170.73857116699,\"y\":-1871.5118408203,\"z\":24.400228500366}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":170.73857116699,\"y\":-1871.5118408203,\"z\":24.400228500366}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 94366),
(105, 'Covenant AvenueLowApartment17', 'Covenant Avenue', '{\"x\":151.10966491699,\"y\":-1866.2979736328,\"z\":24.212448120117}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":151.10966491699,\"y\":-1866.2979736328,\"z\":24.212448120117}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 102167),
(106, 'Covenant AvenueLowApartment18', 'Covenant Avenue', '{\"x\":129.35595703125,\"y\":-1855.2088623047,\"z\":24.901643753052}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":129.35595703125,\"y\":-1855.2088623047,\"z\":24.901643753052}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 103684),
(107, 'Roy Lowenstein BoulevardLowApartment19', 'Roy Lowenstein Boulevard', '{\"x\":249.03553771973,\"y\":-1933.7664794922,\"z\":24.349781036377}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":249.03553771973,\"y\":-1933.7664794922,\"z\":24.349781036377}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 99505),
(108, 'Roy Lowenstein BoulevardLowApartment20', 'Roy Lowenstein Boulevard', '{\"x\":257.51184082031,\"y\":-1927.5687255859,\"z\":25.444780349731}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":257.51184082031,\"y\":-1927.5687255859,\"z\":25.444780349731}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 90960),
(109, 'Roy Lowenstein BoulevardLowApartment21', 'Roy Lowenstein Boulevard', '{\"x\":268.31359863281,\"y\":-1915.6882324219,\"z\":25.84966468811}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":268.31359863281,\"y\":-1915.6882324219,\"z\":25.84966468811}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 95039),
(110, 'Roy Lowenstein BoulevardLowApartment22', 'Roy Lowenstein Boulevard', '{\"x\":281.27899169922,\"y\":-1897.9656982422,\"z\":26.885105133057}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":281.27899169922,\"y\":-1897.9656982422,\"z\":26.885105133057}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 89695),
(111, 'Jamestown StreetLowApartment23', 'Jamestown Street', '{\"x\":236.68385314941,\"y\":-2045.951171875,\"z\":18.379997253418}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":236.68385314941,\"y\":-2045.951171875,\"z\":18.379997253418}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 88939),
(112, 'Jamestown StreetLowApartment24', 'Jamestown Street', '{\"x\":258.16165161133,\"y\":-2024.6014404297,\"z\":18.847906112671}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":258.16165161133,\"y\":-2024.6014404297,\"z\":18.847906112671}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 92767),
(113, 'Jamestown StreetLowApartment25', 'Jamestown Street', '{\"x\":282.00405883789,\"y\":-1995.45703125,\"z\":20.407430648804}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":282.00405883789,\"y\":-1995.45703125,\"z\":20.407430648804}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 99912),
(114, 'Jamestown StreetLowApartment26', 'Jamestown Street', '{\"x\":291.20266723633,\"y\":-1981.2465820313,\"z\":21.600534439087}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":291.20266723633,\"y\":-1981.2465820313,\"z\":21.600534439087}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 105785),
(115, 'Jamestown StreetLowApartment27', 'Jamestown Street', '{\"x\":297.39218139648,\"y\":-1973.1379394531,\"z\":22.455577850342}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":297.39218139648,\"y\":-1973.1379394531,\"z\":22.455577850342}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 99058),
(116, 'Carson AvenueLowApartment28', 'Carson Avenue', '{\"x\":324.07986450195,\"y\":-1938.5592041016,\"z\":25.018978118896}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":324.07986450195,\"y\":-1938.5592041016,\"z\":25.018978118896}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 91838),
(117, 'Roy Lowenstein BoulevardLowApartment29', 'Roy Lowenstein Boulevard', '{\"x\":318.58779907227,\"y\":-1852.9735107422,\"z\":27.120948791504}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":318.58779907227,\"y\":-1852.9735107422,\"z\":27.120948791504}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 91412),
(118, 'Roy Lowenstein BoulevardLowApartment30', 'Roy Lowenstein Boulevard', '{\"x\":327.20092773438,\"y\":-1843.7722167969,\"z\":27.302562713623}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":327.20092773438,\"y\":-1843.7722167969,\"z\":27.302562713623}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 96259),
(119, 'Roy Lowenstein BoulevardLowApartment31', 'Roy Lowenstein Boulevard', '{\"x\":340.52871704102,\"y\":-1827.5593261719,\"z\":27.947919845581}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":340.52871704102,\"y\":-1827.5593261719,\"z\":27.947919845581}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 87143),
(120, 'Roy Lowenstein BoulevardLowApartment32', 'Roy Lowenstein Boulevard', '{\"x\":349.14263916016,\"y\":-1820.0362548828,\"z\":28.894121170044}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":349.14263916016,\"y\":-1820.0362548828,\"z\":28.894121170044}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 96135),
(121, 'Jamestown StreetLowApartment33', 'Jamestown Street', '{\"x\":368.23007202148,\"y\":-1896.6019287109,\"z\":25.178537368774}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":368.23007202148,\"y\":-1896.6019287109,\"z\":25.178537368774}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 86175),
(122, 'Jamestown StreetLowApartment34', 'Jamestown Street', '{\"x\":386.59994506836,\"y\":-1883.2263183594,\"z\":25.610998153687}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":386.59994506836,\"y\":-1883.2263183594,\"z\":25.610998153687}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 106140),
(123, 'Jamestown StreetLowApartment35', 'Jamestown Street', '{\"x\":401.2878112793,\"y\":-1866.8880615234,\"z\":26.329935073853}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":401.2878112793,\"y\":-1866.8880615234,\"z\":26.329935073853}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 93144),
(124, 'Jamestown StreetLowApartment36', 'Jamestown Street', '{\"x\":413.27835083008,\"y\":-1855.8310546875,\"z\":27.323135375977}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":413.27835083008,\"y\":-1855.8310546875,\"z\":27.323135375977}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 93497),
(125, 'Jamestown StreetLowApartment37', 'Jamestown Street', '{\"x\":429.43447875977,\"y\":-1843.6538085938,\"z\":28.032627105713}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":429.43447875977,\"y\":-1843.6538085938,\"z\":28.032627105713}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 97716),
(126, 'Jamestown StreetLowApartment38', 'Jamestown Street', '{\"x\":440.04742431641,\"y\":-1830.7917480469,\"z\":28.361877441406}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":440.04742431641,\"y\":-1830.7917480469,\"z\":28.361877441406}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 96646),
(127, 'Roy Lowenstein BoulevardLowApartment1', 'Roy Lowenstein Boulevard', '{\"x\":403.60928344727,\"y\":-1749.7593994141,\"z\":29.342887878418}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":403.60928344727,\"y\":-1749.7593994141,\"z\":29.342887878418}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 88149),
(128, 'Roy Lowenstein BoulevardLowApartment2', 'Roy Lowenstein Boulevard', '{\"x\":418.10855102539,\"y\":-1735.5811767578,\"z\":29.607698440552}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":418.10855102539,\"y\":-1735.5811767578,\"z\":29.607698440552}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 85099),
(129, 'Roy Lowenstein BoulevardLowApartment3', 'Roy Lowenstein Boulevard', '{\"x\":428.95733642578,\"y\":-1723.9631347656,\"z\":29.229053497314}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":428.95733642578,\"y\":-1723.9631347656,\"z\":29.229053497314}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 85276),
(130, 'Roy Lowenstein BoulevardLowApartment4', 'Roy Lowenstein Boulevard', '{\"x\":441.82684326172,\"y\":-1706.0318603516,\"z\":29.34734916687}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":441.82684326172,\"y\":-1706.0318603516,\"z\":29.34734916687}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 97500),
(131, 'Jamestown StreetLowApartment5', 'Jamestown Street', '{\"x\":499.11352539063,\"y\":-1699.3057861328,\"z\":29.400569915771}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":499.11352539063,\"y\":-1699.3057861328,\"z\":29.400569915771}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 100951),
(132, 'Jamestown StreetLowApartment6', 'Jamestown Street', '{\"x\":491.56616210938,\"y\":-1714.9438476563,\"z\":29.329025268555}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":491.56616210938,\"y\":-1714.9438476563,\"z\":29.329025268555}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 99158),
(133, 'Jamestown StreetLowApartment7', 'Jamestown Street', '{\"x\":479.54141235352,\"y\":-1736.4586181641,\"z\":29.151025772095}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":479.54141235352,\"y\":-1736.4586181641,\"z\":29.151025772095}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 91378),
(134, 'Jamestown StreetLowApartment8', 'Jamestown Street', '{\"x\":475.77600097656,\"y\":-1756.4779052734,\"z\":28.712047576904}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":475.77600097656,\"y\":-1756.4779052734,\"z\":28.712047576904}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 95459),
(135, 'Jamestown StreetLowApartment9', 'Jamestown Street', '{\"x\":474.248046875,\"y\":-1775.3748779297,\"z\":28.693923950195}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":474.248046875,\"y\":-1775.3748779297,\"z\":28.693923950195}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 98102),
(136, 'Jamestown StreetLowApartment10', 'Jamestown Street', '{\"x\":495.63626098633,\"y\":-1822.2047119141,\"z\":28.869705200195}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":495.63626098633,\"y\":-1822.2047119141,\"z\":28.869705200195}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 94582),
(137, 'Jamestown StreetLowApartment11', 'Jamestown Street', '{\"x\":498.66104125977,\"y\":-1811.2825927734,\"z\":28.502956390381}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":498.66104125977,\"y\":-1811.2825927734,\"z\":28.502956390381}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 97680),
(138, 'Jamestown StreetLowApartment12', 'Jamestown Street', '{\"x\":510.8984375,\"y\":-1790.7440185547,\"z\":28.502956390381}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":510.8984375,\"y\":-1790.7440185547,\"z\":28.502956390381}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 100383),
(139, 'Jamestown StreetLowApartment13', 'Jamestown Street', '{\"x\":512.27862548828,\"y\":-1780.9301757813,\"z\":28.502958297729}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":512.27862548828,\"y\":-1780.9301757813,\"z\":28.502958297729}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 101091),
(140, 'Roy Lowenstein BoulevardLowApartment14', 'Roy Lowenstein Boulevard', '{\"x\":290.98867797852,\"y\":-1793.9849853516,\"z\":27.701089859009}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":290.98867797852,\"y\":-1793.9849853516,\"z\":27.701089859009}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 87337),
(141, 'Roy Lowenstein BoulevardLowApartment15', 'Roy Lowenstein Boulevard', '{\"x\":299.70458984375,\"y\":-1784.9112548828,\"z\":28.438661575317}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":299.70458984375,\"y\":-1784.9112548828,\"z\":28.438661575317}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 86127),
(142, 'Roy Lowenstein BoulevardLowApartment16', 'Roy Lowenstein Boulevard', '{\"x\":306.1071472168,\"y\":-1776.8776855469,\"z\":28.66404914856}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":306.1071472168,\"y\":-1776.8776855469,\"z\":28.66404914856}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 104334),
(143, 'Roy Lowenstein BoulevardLowApartment17', 'Roy Lowenstein Boulevard', '{\"x\":322.22161865234,\"y\":-1759.3278808594,\"z\":29.315031051636}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":322.22161865234,\"y\":-1759.3278808594,\"z\":29.315031051636}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 98168),
(144, 'Roy Lowenstein BoulevardLowApartment18', 'Roy Lowenstein Boulevard', '{\"x\":332.83636474609,\"y\":-1742.3994140625,\"z\":29.730527877808}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":332.83636474609,\"y\":-1742.3994140625,\"z\":29.730527877808}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 92396),
(145, 'Forum DriveLowApartment1', 'Forum Drive', '{\"x\":-46.506820678711,\"y\":-1446.1826171875,\"z\":32.429595947266}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":-46.506820678711,\"y\":-1446.1826171875,\"z\":32.429595947266}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 102297),
(146, 'Forum DriveLowApartment2', 'Forum Drive', '{\"x\":-35.16219329834,\"y\":-1446.5322265625,\"z\":31.493417739868}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":-35.16219329834,\"y\":-1446.5322265625,\"z\":31.493417739868}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 87271),
(147, 'Forum DriveLowApartment3', 'Forum Drive', '{\"x\":-1.6476721763611,\"y\":-1444.0211181641,\"z\":30.552778244019}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":-1.6476721763611,\"y\":-1444.0211181641,\"z\":30.552778244019}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 101835),
(148, 'Forum DriveLowApartment4', 'Forum Drive', '{\"x\":15.82791519165,\"y\":-1445.5560302734,\"z\":30.541540145874}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":15.82791519165,\"y\":-1445.5560302734,\"z\":30.541540145874}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 89921),
(149, 'Brouge AvenueLowApartment1', 'Brouge Avenue', '{\"x\":247.88203430176,\"y\":-1729.4180908203,\"z\":29.356981277466}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":247.88203430176,\"y\":-1729.4180908203,\"z\":29.356981277466}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 88897),
(150, 'Brouge AvenueLowApartment2', 'Brouge Avenue', '{\"x\":217.72830200195,\"y\":-1716.7276611328,\"z\":29.291751861572}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":217.72830200195,\"y\":-1716.7276611328,\"z\":29.291751861572}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 98231),
(151, 'Brouge AvenueLowApartment3', 'Brouge Avenue', '{\"x\":224.15005493164,\"y\":-1704.2561035156,\"z\":29.303884506226}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":224.15005493164,\"y\":-1704.2561035156,\"z\":29.303884506226}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 89338),
(152, 'Brouge AvenueLowApartment4', 'Brouge Avenue', '{\"x\":256.3913269043,\"y\":-1723.4542236328,\"z\":29.65412902832}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":256.3913269043,\"y\":-1723.4542236328,\"z\":29.65412902832}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 90526),
(153, 'Brouge AvenueLowApartment5', 'Brouge Avenue', '{\"x\":242.43644714355,\"y\":-1688.8393554688,\"z\":29.282918930054}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":242.43644714355,\"y\":-1688.8393554688,\"z\":29.282918930054}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 85424),
(154, 'Brouge AvenueLowApartment6', 'Brouge Avenue', '{\"x\":267.30023193359,\"y\":-1711.484375,\"z\":29.376234054565}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":267.30023193359,\"y\":-1711.484375,\"z\":29.376234054565}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 91327),
(155, 'MacDonald StreetLowApartment7', 'MacDonald Street', '{\"x\":252.58195495605,\"y\":-1671.6158447266,\"z\":29.66316986084}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":252.58195495605,\"y\":-1671.6158447266,\"z\":29.66316986084}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 94259),
(156, 'MacDonald StreetLowApartment8', 'MacDonald Street', '{\"x\":280.57510375977,\"y\":-1693.5810546875,\"z\":29.266786575317}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":280.57510375977,\"y\":-1693.5810546875,\"z\":29.266786575317}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 86193),
(157, 'West Mirror DriveLowApartment9', 'West Mirror Drive', '{\"x\":997.30786132813,\"y\":-729.08630371094,\"z\":57.815551757813}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":997.30786132813,\"y\":-729.08630371094,\"z\":57.815551757813}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 104042),
(158, 'West Mirror DriveLowApartment10', 'West Mirror Drive', '{\"x\":980.76599121094,\"y\":-714.68322753906,\"z\":57.766952514648}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":980.76599121094,\"y\":-714.68322753906,\"z\":57.766952514648}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 99824),
(159, 'West Mirror DriveLowApartment11', 'West Mirror Drive', '{\"x\":970.87756347656,\"y\":-700.78363037109,\"z\":58.481956481934}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":970.87756347656,\"y\":-700.78363037109,\"z\":58.481956481934}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 89231),
(160, 'West Mirror DriveLuxApartment1', 'West Mirror Drive', '{\"x\":960.69580078125,\"y\":-669.50451660156,\"z\":58.449771881104}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":960.69580078125,\"y\":-669.50451660156,\"z\":58.449771881104}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1396017),
(161, 'West Mirror DriveLowApartment2', 'West Mirror Drive', '{\"x\":943.88000488281,\"y\":-653.74456787109,\"z\":58.428718566895}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":943.88000488281,\"y\":-653.74456787109,\"z\":58.428718566895}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 94220),
(162, 'West Mirror DriveLowApartment3', 'West Mirror Drive', '{\"x\":930.80364990234,\"y\":-637.83612060547,\"z\":57.859703063965}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":930.80364990234,\"y\":-637.83612060547,\"z\":57.859703063965}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 91674),
(163, 'West Mirror DriveLowApartment4', 'West Mirror Drive', '{\"x\":905.05169677734,\"y\":-614.53497314453,\"z\":58.048969268799}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":905.05169677734,\"y\":-614.53497314453,\"z\":58.048969268799}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 92306),
(164, 'West Mirror DriveLowApartment5', 'West Mirror Drive', '{\"x\":888.05657958984,\"y\":-606.83062744141,\"z\":58.220500946045}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":888.05657958984,\"y\":-606.83062744141,\"z\":58.220500946045}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 88473),
(165, 'West Mirror DriveLowApartment6', 'West Mirror Drive', '{\"x\":861.68499755859,\"y\":-582.40612792969,\"z\":58.156494140625}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":861.68499755859,\"y\":-582.40612792969,\"z\":58.156494140625}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 89541),
(166, 'West Mirror DriveLowApartment7', 'West Mirror Drive', '{\"x\":844.93389892578,\"y\":-565.01568603516,\"z\":57.707931518555}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":844.93389892578,\"y\":-565.01568603516,\"z\":57.707931518555}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 93395),
(167, 'West Mirror DriveLowApartment8', 'West Mirror Drive', '{\"x\":851.12780761719,\"y\":-532.33752441406,\"z\":57.925201416016}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":851.12780761719,\"y\":-532.33752441406,\"z\":57.925201416016}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 93093),
(168, 'West Mirror DriveLowApartment9', 'West Mirror Drive', '{\"x\":863.12628173828,\"y\":-510.39077758789,\"z\":57.328956604004}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":863.12628173828,\"y\":-510.39077758789,\"z\":57.328956604004}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 87699),
(169, 'West Mirror DriveLowApartment10', 'West Mirror Drive', '{\"x\":879.65759277344,\"y\":-498.93240356445,\"z\":57.875160217285}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":879.65759277344,\"y\":-498.93240356445,\"z\":57.875160217285}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 95742);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(170, 'West Mirror DriveLuxApartment11', 'West Mirror Drive', '{\"x\":906.94549560547,\"y\":-490.7135925293,\"z\":59.436214447021}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":906.94549560547,\"y\":-490.7135925293,\"z\":59.436214447021}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1095404),
(171, 'West Mirror DriveLowApartment12', 'West Mirror Drive', '{\"x\":922.76696777344,\"y\":-480.61740112305,\"z\":60.699756622314}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":922.76696777344,\"y\":-480.61740112305,\"z\":60.699756622314}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 103794),
(172, 'West Mirror DriveLowApartment13', 'West Mirror Drive', '{\"x\":942.56396484375,\"y\":-464.65219116211,\"z\":61.252323150635}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":942.56396484375,\"y\":-464.65219116211,\"z\":61.252323150635}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 92715),
(173, 'West Mirror DriveLowApartment14', 'West Mirror Drive', '{\"x\":968.5234375,\"y\":-453.16781616211,\"z\":62.402824401855}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":968.5234375,\"y\":-453.16781616211,\"z\":62.402824401855}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 94264),
(174, 'West Mirror DriveLowApartment15', 'West Mirror Drive', '{\"x\":989.00720214844,\"y\":-434.70355224609,\"z\":63.737648010254}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":989.00720214844,\"y\":-434.70355224609,\"z\":63.737648010254}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 88172),
(175, 'West Mirror DriveLowApartment16', 'West Mirror Drive', '{\"x\":1011.7874145508,\"y\":-422.57360839844,\"z\":64.952728271484}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":1011.7874145508,\"y\":-422.57360839844,\"z\":64.952728271484}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 102976),
(176, 'West Mirror DriveLowApartment17', 'West Mirror Drive', '{\"x\":1030.8032226563,\"y\":-410.89944458008,\"z\":65.949295043945}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":1030.8032226563,\"y\":-410.89944458008,\"z\":65.949295043945}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 97824),
(177, 'Bridge StreetLowApartment18', 'Bridge Street', '{\"x\":1062.7053222656,\"y\":-380.07598876953,\"z\":67.848403930664}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":1062.7053222656,\"y\":-380.07598876953,\"z\":67.848403930664}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 95219),
(178, 'West Mirror DriveLowApartment19', 'West Mirror Drive', '{\"x\":1112.9084472656,\"y\":-390.88705444336,\"z\":68.733512878418}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":1112.9084472656,\"y\":-390.88705444336,\"z\":68.733512878418}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 86631),
(179, 'Bridge StreetLuxApartment20', 'Bridge Street', '{\"x\":1100.1086425781,\"y\":-411.32711791992,\"z\":67.555236816406}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":1100.1086425781,\"y\":-411.32711791992,\"z\":67.555236816406}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 931339),
(180, 'Bridge StreetLowApartment21', 'Bridge Street', '{\"x\":1099.7180175781,\"y\":-436.58966064453,\"z\":67.396293640137}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":1099.7180175781,\"y\":-436.58966064453,\"z\":67.396293640137}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 92679),
(181, 'Bridge StreetLowApartment22', 'Bridge Street', '{\"x\":1097.9696044922,\"y\":-465.15158081055,\"z\":67.319412231445}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":1097.9696044922,\"y\":-465.15158081055,\"z\":67.319412231445}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 103768),
(182, 'Bridge StreetLowApartment23', 'Bridge Street', '{\"x\":1089.4764404297,\"y\":-484.38037109375,\"z\":65.660247802734}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":1089.4764404297,\"y\":-484.38037109375,\"z\":65.660247802734}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 100093),
(183, 'Bridge StreetLowApartment24', 'Bridge Street', '{\"x\":1056.51171875,\"y\":-448.26446533203,\"z\":66.257484436035}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":1056.51171875,\"y\":-448.26446533203,\"z\":66.257484436035}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 86049),
(184, 'Bridge StreetLowApartment25', 'Bridge Street', '{\"x\":1052.5235595703,\"y\":-470.77896118164,\"z\":63.898918151855}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":1052.5235595703,\"y\":-470.77896118164,\"z\":63.898918151855}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 101768),
(185, 'Bridge StreetLowApartment26', 'Bridge Street', '{\"x\":1046.4715576172,\"y\":-497.48861694336,\"z\":64.079322814941}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":1046.4715576172,\"y\":-497.48861694336,\"z\":64.079322814941}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 90333),
(186, 'Nikola AvenueLowApartment27', 'Nikola Avenue', '{\"x\":1004.5206298828,\"y\":-512.43347167969,\"z\":60.693511962891}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":1004.5206298828,\"y\":-512.43347167969,\"z\":60.693511962891}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 105365),
(187, 'Nikola AvenueLowApartment28', 'Nikola Avenue', '{\"x\":988.31677246094,\"y\":-526.54357910156,\"z\":60.476100921631}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":988.31677246094,\"y\":-526.54357910156,\"z\":60.476100921631}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 89796),
(188, 'Nikola AvenueLowApartment29', 'Nikola Avenue', '{\"x\":965.83898925781,\"y\":-543.04620361328,\"z\":59.359092712402}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":965.83898925781,\"y\":-543.04620361328,\"z\":59.359092712402}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 99292),
(189, 'Nikola AvenueLowApartment30', 'Nikola Avenue', '{\"x\":963.65783691406,\"y\":-595.93206787109,\"z\":59.90270614624}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":963.65783691406,\"y\":-595.93206787109,\"z\":59.90270614624}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 102714),
(190, 'Nikola AvenueLowApartment31', 'Nikola Avenue', '{\"x\":975.796875,\"y\":-579.63757324219,\"z\":59.635547637939}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":975.796875,\"y\":-579.63757324219,\"z\":59.635547637939}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 102008),
(191, 'Mirror PlaceLowApartment32', 'Mirror Place', '{\"x\":1010.8396606445,\"y\":-572.66796875,\"z\":60.594429016113}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-100.008}', '{\"x\":1010.8396606445,\"y\":-572.66796875,\"z\":60.594429016113}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 92336),
(192, 'Mirror PlaceLowApartment33', 'Mirror Place', '{\"x\":1001.264465332,\"y\":-594.24005126953,\"z\":59.232467651367}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-101.008}', '{\"x\":265.307,\"y\":-1002.802,\"z\":-101.008}', '{\"x\":1001.264465332,\"y\":-594.24005126953,\"z\":59.232467651367}', '[]', NULL, 1, 0, NULL, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 105474),
(193, 'West Mirror DriveLuxApartment34', 'West Mirror Drive', '{\"x\":979.28515625,\"y\":-627.31146240234,\"z\":59.235836029053}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":979.28515625,\"y\":-627.31146240234,\"z\":59.235836029053}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 916439),
(194, 'Ace Jones DriveLuxApartment1', 'Ace Jones Drive', '{\"x\":-1540.1517333984,\"y\":421.90277099609,\"z\":110.01378631592}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1540.1517333984,\"y\":421.90277099609,\"z\":110.01378631592}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1825893),
(195, 'Ace Jones DriveLuxApartment2', 'Ace Jones Drive', '{\"x\":-1496.3151855469,\"y\":437.80752563477,\"z\":112.49752807617}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1496.3151855469,\"y\":437.80752563477,\"z\":112.49752807617}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1413305),
(196, 'Ace Jones DriveLuxApartment3', 'Ace Jones Drive', '{\"x\":-1454.1470947266,\"y\":513.10931396484,\"z\":117.64394378662}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1454.1470947266,\"y\":513.10931396484,\"z\":117.64394378662}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1322627),
(197, 'Ace Jones DriveLuxApartment4', 'Ace Jones Drive', '{\"x\":-1500.3343505859,\"y\":522.37237548828,\"z\":118.27212524414}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1500.3343505859,\"y\":522.37237548828,\"z\":118.27212524414}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1406898),
(198, 'Ace Jones DriveLuxApartment5', 'Ace Jones Drive', '{\"x\":-1451.9193115234,\"y\":545.38983154297,\"z\":120.79940795898}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1451.9193115234,\"y\":545.38983154297,\"z\":120.79940795898}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1363970),
(199, 'Hangman AvenueLuxApartment6', 'Hangman Avenue', '{\"x\":-1405.9122314453,\"y\":526.81701660156,\"z\":123.83125305176}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1405.9122314453,\"y\":526.81701660156,\"z\":123.83125305176}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1331091),
(200, 'Hangman AvenueLuxApartment7', 'Hangman Avenue', '{\"x\":-1405.2404785156,\"y\":561.19598388672,\"z\":125.40619659424}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1405.2404785156,\"y\":561.19598388672,\"z\":125.40619659424}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1315849),
(201, 'Hangman AvenueLuxApartment8', 'Hangman Avenue', '{\"x\":-1366.46875,\"y\":611.55004882813,\"z\":133.92456054688}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1366.46875,\"y\":611.55004882813,\"z\":133.92456054688}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2288019),
(202, 'Hangman AvenueLuxApartment9', 'Hangman Avenue', '{\"x\":-1338.1193847656,\"y\":606.13049316406,\"z\":134.37992858887}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1338.1193847656,\"y\":606.13049316406,\"z\":134.37992858887}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1758483),
(203, 'Hangman AvenueLuxApartment10', 'Hangman Avenue', '{\"x\":-1363.8488769531,\"y\":569.89282226563,\"z\":134.97283935547}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1363.8488769531,\"y\":569.89282226563,\"z\":134.97283935547}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2225161),
(204, 'Hangman AvenueLuxApartment11', 'Hangman Avenue', '{\"x\":-1346.9027099609,\"y\":560.84869384766,\"z\":130.53153991699}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1346.9027099609,\"y\":560.84869384766,\"z\":130.53153991699}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1940278),
(205, 'North Sheldon AvenueLuxApartment12', 'North Sheldon Avenue', '{\"x\":-1291.3852539063,\"y\":649.32806396484,\"z\":141.50144958496}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1291.3852539063,\"y\":649.32806396484,\"z\":141.50144958496}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1432190),
(206, 'North Sheldon AvenueLuxApartment13', 'North Sheldon Avenue', '{\"x\":-1277.7301025391,\"y\":629.96185302734,\"z\":143.19226074219}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1277.7301025391,\"y\":629.96185302734,\"z\":143.19226074219}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1975282),
(207, 'North Sheldon AvenueLuxApartment14', 'North Sheldon Avenue', '{\"x\":-1248.2115478516,\"y\":643.39379882813,\"z\":142.65231323242}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1248.2115478516,\"y\":643.39379882813,\"z\":142.65231323242}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1633645),
(208, 'North Sheldon AvenueLuxApartment15', 'North Sheldon Avenue', '{\"x\":-1241.6223144531,\"y\":673.69683837891,\"z\":142.81593322754}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1241.6223144531,\"y\":673.69683837891,\"z\":142.81593322754}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1927464),
(209, 'North Sheldon AvenueLuxApartment16', 'North Sheldon Avenue', '{\"x\":-1219.4108886719,\"y\":665.17425537109,\"z\":144.53370666504}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1219.4108886719,\"y\":665.17425537109,\"z\":144.53370666504}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1483548),
(210, 'North Sheldon AvenueLuxApartment17', 'North Sheldon Avenue', '{\"x\":-1197.5023193359,\"y\":693.49377441406,\"z\":147.40734863281}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1197.5023193359,\"y\":693.49377441406,\"z\":147.40734863281}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1898058),
(211, 'North Sheldon AvenueLuxApartment18', 'North Sheldon Avenue', '{\"x\":-1165.4506835938,\"y\":727.36590576172,\"z\":155.60679626465}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1165.4506835938,\"y\":727.36590576172,\"z\":155.60679626465}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1935051),
(212, 'North Sheldon AvenueLuxApartment19', 'North Sheldon Avenue', '{\"x\":-1118.1479492188,\"y\":762.20751953125,\"z\":164.28875732422}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1118.1479492188,\"y\":762.20751953125,\"z\":164.28875732422}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1654822),
(213, 'North Sheldon AvenueLuxApartment20', 'North Sheldon Avenue', '{\"x\":-1129.8489990234,\"y\":783.94305419922,\"z\":163.88703918457}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1129.8489990234,\"y\":783.94305419922,\"z\":163.88703918457}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2235649),
(214, 'North Sheldon AvenueLuxApartment21', 'North Sheldon Avenue', '{\"x\":-1100.5798339844,\"y\":797.28149414063,\"z\":167.25796508789}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1100.5798339844,\"y\":797.28149414063,\"z\":167.25796508789}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1516494),
(215, 'North Sheldon AvenueLuxApartment22', 'North Sheldon Avenue', '{\"x\":-1067.6361083984,\"y\":795.04876708984,\"z\":166.92190551758}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1067.6361083984,\"y\":795.04876708984,\"z\":166.92190551758}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1624034),
(216, 'Hillcrest AvenueLuxApartment23', 'Hillcrest Avenue', '{\"x\":-1056.0628662109,\"y\":761.55041503906,\"z\":167.31658935547}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1056.0628662109,\"y\":761.55041503906,\"z\":167.31658935547}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2125176),
(217, 'Hillcrest AvenueLuxApartment24', 'Hillcrest Avenue', '{\"x\":-1065.3902587891,\"y\":727.29650878906,\"z\":165.47462463379}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1065.3902587891,\"y\":727.29650878906,\"z\":165.47462463379}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1784011),
(218, 'Hillcrest AvenueLuxApartment25', 'Hillcrest Avenue', '{\"x\":-1002.4211425781,\"y\":684.62292480469,\"z\":160.90394592285}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-1002.4211425781,\"y\":684.62292480469,\"z\":160.90394592285}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2228432),
(219, 'Hillcrest AvenueLuxApartment26', 'Hillcrest Avenue', '{\"x\":-931.75317382813,\"y\":691.40087890625,\"z\":153.46670532227}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-931.75317382813,\"y\":691.40087890625,\"z\":153.46670532227}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1843597),
(220, 'Hillcrest AvenueLuxApartment27', 'Hillcrest Avenue', '{\"x\":-908.76416015625,\"y\":694.35162353516,\"z\":151.43374633789}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-908.76416015625,\"y\":694.35162353516,\"z\":151.43374633789}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1838944),
(221, 'Hillcrest AvenueLuxApartment28', 'Hillcrest Avenue', '{\"x\":-885.44946289063,\"y\":699.21716308594,\"z\":151.27056884766}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-885.44946289063,\"y\":699.21716308594,\"z\":151.27056884766}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1447297),
(222, 'Hillcrest AvenueLuxApartment29', 'Hillcrest Avenue', '{\"x\":-853.17449951172,\"y\":696.08850097656,\"z\":148.78552246094}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-853.17449951172,\"y\":696.08850097656,\"z\":148.78552246094}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1751874),
(223, 'Hillcrest AvenueLuxApartment30', 'Hillcrest Avenue', '{\"x\":-819.52648925781,\"y\":697.07574462891,\"z\":148.10981750488}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-819.52648925781,\"y\":697.07574462891,\"z\":148.10981750488}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2005935),
(224, 'Hillcrest AvenueLuxApartment31', 'Hillcrest Avenue', '{\"x\":-764.53857421875,\"y\":651.15399169922,\"z\":145.50137329102}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-764.53857421875,\"y\":651.15399169922,\"z\":145.50137329102}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1534266),
(225, 'Hillcrest AvenueLuxApartment32', 'Hillcrest Avenue', '{\"x\":-751.33044433594,\"y\":621.18103027344,\"z\":142.24934387207}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-751.33044433594,\"y\":621.18103027344,\"z\":142.24934387207}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1641906),
(226, 'Hillcrest AvenueLuxApartment33', 'Hillcrest Avenue', '{\"x\":-732.18029785156,\"y\":595.59002685547,\"z\":141.82688903809}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-732.18029785156,\"y\":595.59002685547,\"z\":141.82688903809}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1690095),
(227, 'Hillcrest AvenueLuxApartment34', 'Hillcrest Avenue', '{\"x\":-704.45471191406,\"y\":589.56817626953,\"z\":141.9292755127}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-704.45471191406,\"y\":589.56817626953,\"z\":141.9292755127}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2111721),
(228, 'Hillcrest AvenueLuxApartment35', 'Hillcrest Avenue', '{\"x\":-686.38201904297,\"y\":596.75897216797,\"z\":143.6420135498}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-686.38201904297,\"y\":596.75897216797,\"z\":143.6420135498}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1302158),
(229, 'Hillcrest AvenueLuxApartment36', 'Hillcrest Avenue', '{\"x\":-700.82513427734,\"y\":648.19500732422,\"z\":155.17527770996}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-700.82513427734,\"y\":648.19500732422,\"z\":155.17527770996}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1627035),
(230, 'Normandy DriveLuxApartment37', 'Normandy Drive', '{\"x\":-564.24957275391,\"y\":683.94000244141,\"z\":146.20091247559}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-564.24957275391,\"y\":683.94000244141,\"z\":146.20091247559}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2369862),
(231, 'Normandy DriveLuxApartment38', 'Normandy Drive', '{\"x\":-559.19543457031,\"y\":664.49560546875,\"z\":145.45433044434}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-559.19543457031,\"y\":664.49560546875,\"z\":145.45433044434}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2132089),
(232, 'North Sheldon AvenueLuxApartment1', 'North Sheldon Avenue', '{\"x\":-998.62060546875,\"y\":816.19018554688,\"z\":173.04978942871}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-998.62060546875,\"y\":816.19018554688,\"z\":173.04978942871}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1568831),
(233, 'North Sheldon AvenueLuxApartment2', 'North Sheldon Avenue', '{\"x\":-998.00158691406,\"y\":769.24133300781,\"z\":171.42100524902}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-998.00158691406,\"y\":769.24133300781,\"z\":171.42100524902}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1618234),
(234, 'North Sheldon AvenueLuxApartment3', 'North Sheldon Avenue', '{\"x\":-962.67352294922,\"y\":812.99340820313,\"z\":177.56622314453}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-962.67352294922,\"y\":812.99340820313,\"z\":177.56622314453}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1683351),
(235, 'North Sheldon AvenueLuxApartment4', 'North Sheldon Avenue', '{\"x\":-912.38861083984,\"y\":778.07110595703,\"z\":187.01139831543}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-912.38861083984,\"y\":778.07110595703,\"z\":187.01139831543}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2309230),
(236, 'North Sheldon AvenueLuxApartment5', 'North Sheldon Avenue', '{\"x\":-921.05853271484,\"y\":813.16076660156,\"z\":184.33616638184}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-921.05853271484,\"y\":813.16076660156,\"z\":184.33616638184}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1395534),
(237, 'North Sheldon AvenueLuxApartment6', 'North Sheldon Avenue', '{\"x\":-867.65472412109,\"y\":786.28570556641,\"z\":191.93307495117}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-867.65472412109,\"y\":786.28570556641,\"z\":191.93307495117}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2044176),
(238, 'North Sheldon AvenueLuxApartment7', 'North Sheldon Avenue', '{\"x\":-824.13452148438,\"y\":806.2744140625,\"z\":202.78399658203}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-824.13452148438,\"y\":806.2744140625,\"z\":202.78399658203}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2218586),
(239, 'Normandy DriveLuxApartment8', 'Normandy Drive', '{\"x\":-747.03479003906,\"y\":808.23846435547,\"z\":215.02998352051}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-747.03479003906,\"y\":808.23846435547,\"z\":215.02998352051}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2139339),
(240, 'Normandy DriveLuxApartment9', 'Normandy Drive', '{\"x\":-655.19738769531,\"y\":803.77398681641,\"z\":198.9920501709}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-655.19738769531,\"y\":803.77398681641,\"z\":198.9920501709}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1687735),
(241, 'Normandy DriveLuxApartment10', 'Normandy Drive', '{\"x\":-587.37933349609,\"y\":806.12823486328,\"z\":191.2474822998}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-587.37933349609,\"y\":806.12823486328,\"z\":191.2474822998}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2356003),
(242, 'Normandy DriveLuxApartment11', 'Normandy Drive', '{\"x\":-595.34600830078,\"y\":781.00415039063,\"z\":189.10961914063}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-595.34600830078,\"y\":781.00415039063,\"z\":189.10961914063}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2337523),
(243, 'Normandy DriveLuxApartment12', 'Normandy Drive', '{\"x\":-596.98510742188,\"y\":763.32183837891,\"z\":189.12007141113}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-596.98510742188,\"y\":763.32183837891,\"z\":189.12007141113}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1690635),
(244, 'Normandy DriveLuxApartment13', 'Normandy Drive', '{\"x\":-579.89562988281,\"y\":733.75048828125,\"z\":184.20704650879}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-579.89562988281,\"y\":733.75048828125,\"z\":184.20704650879}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 2255983),
(245, 'Normandy DriveLuxApartment14', 'Normandy Drive', '{\"x\":-699.21026611328,\"y\":706.07305908203,\"z\":158.0075378418}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-680.124,\"y\":590.608,\"z\":144.392}', '{\"x\":-699.21026611328,\"y\":706.07305908203,\"z\":158.0075378418}', '[]', NULL, 1, 0, NULL, '{\"x\":-680.46,\"y\":588.6,\"z\":135.769}', 1638838);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `twitter_accounts`
--

INSERT INTO `twitter_accounts` (`id`, `username`, `password`, `avatar_url`) VALUES
(38, 'coolguy', '123456', 'https://i.imgur.com/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `twitter_likes`
--

INSERT INTO `twitter_likes` (`id`, `authorId`, `tweetId`) VALUES
(137, 38, 170);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `twitter_tweets`
--

INSERT INTO `twitter_tweets` (`id`, `authorId`, `realUser`, `message`, `time`, `likes`) VALUES
(170, 38, 'steam:11000010bde4b9d', 'yooo', '2020-05-14 18:09:53', 1),
(171, 38, 'steam:11000010bde4b9d', 'test', '2020-05-14 18:10:30', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(53) COLLATE utf8mb4_bin DEFAULT '{"x":-1037.47,"y":-2737.58,"z":20.20,"heading":205.8}',
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `vip` tinyint(1) DEFAULT 0,
  `jail` int(11) NOT NULL DEFAULT 0,
  `chips` int(11) DEFAULT NULL,
  `last_house` int(11) DEFAULT 0,
  `house` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{"owns":false,"furniture":[],"houseId":0}',
  `bought_furniture` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{}',
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_convictions`
--

CREATE TABLE `user_convictions` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `offense` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_lastcharacter`
--

CREATE TABLE `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_mdt`
--

CREATE TABLE `user_mdt` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `mugshot_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indices de la tabla `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indices de la tabla `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bought_houses`
--
ALTER TABLE `bought_houses`
  ADD PRIMARY KEY (`houseid`);

--
-- Indices de la tabla `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indices de la tabla `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `glovebox_inventory`
--
ALTER TABLE `glovebox_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indices de la tabla `importedvehicles`
--
ALTER TABLE `importedvehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indices de la tabla `importedvehicle_categories`
--
ALTER TABLE `importedvehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indices de la tabla `mdt_reports`
--
ALTER TABLE `mdt_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mdt_warrants`
--
ALTER TABLE `mdt_warrants`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indices de la tabla `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playerhousing`
--
ALTER TABLE `playerhousing`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indices de la tabla `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indices de la tabla `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indices de la tabla `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indices de la tabla `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_convictions`
--
ALTER TABLE `user_convictions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_lastcharacter`
--
ALTER TABLE `user_lastcharacter`
  ADD PRIMARY KEY (`steamid`);

--
-- Indices de la tabla `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_mdt`
--
ALTER TABLE `user_mdt`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indices de la tabla `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `glovebox_inventory`
--
ALTER TABLE `glovebox_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `mdt_reports`
--
ALTER TABLE `mdt_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mdt_warrants`
--
ALTER TABLE `mdt_warrants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT de la tabla `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT de la tabla `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT de la tabla `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `user_convictions`
--
ALTER TABLE `user_convictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user_mdt`
--
ALTER TABLE `user_mdt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
