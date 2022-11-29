-- phpMyAdmin SQL Dump
-- version 5.2.1-dev+20221125.efae3a98e0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 07:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snf`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL,
  `item_specs` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`, `item_specs`) VALUES
(1, 'BMW', 'BMW 2 Sport', 61590.00, './assets/img/M2Sport.PNG', '2020-03-28 11:08:57', 'The first-ever BMW 2 Series Gran Coupé introduces a new form of authority with a bold character to the compact class. It is above all the uncompromising, performance-oriented aesthetic that unmistakeably reveals its ambitions. In keeping with high-end technologies and perfectly tuned driving dynamics features, the BMW 2 Series Gran Coupé stands out from the crowd with ease and pursues its very own path.\r\n\r\nTHE DESIGN IN THE EXTERIOR AND INTERIOR OF THE BMW 2 SERIES GRAN COUPÉ.\r\nThe first-ever BMW 2 Series Gran Coupé lends an extremely light appearance to authority on wheels of up to 19″ in size. The distinctive BMW kidney grille, LED headlights and rear lights, frameless doors, powerful shoulders and the sporty rear – sheer authority that is also reflected in the interior. With illuminated interior trim finishers and optional sport seats, the driver-oriented cockpit creates an ambience that is exclusive and dynamic in equal measures. At the same time, the two 10.25″ displays with Live Cockpit Professional and the BMW Head-Up Display keep you fully informed.\r\n\r\n'),
(2, 'AUDI', 'AUDI A4', 52200.00, './assets/img/A4.PNG', '2020-03-28 11:08:57', 'Past inspiration, future technology.\r\nThe Audi A4 Sedan embodies past inspiration and future technology—raising the bar on what a sedan ought to be.\r\n'),
(3, 'BMW', 'BMW i4', 70500.00, './assets/img/i4G26.PNG', '2020-03-28 11:08:57', 'THE FIRST FULL ELECTRIC M AUTOMOBILE\r\nSporty performance that electrifies: for the first time, the BMW i4 M50 combines the innovative power of BMW M with that of BMW i. As a result, the BMW i4 M50 with its fully electric drive fed by two BMW M eDrive motors develops a tremendous 544 hp (400 kW) in Sport Boost mode and offers the typical BMW M dynamics in a hitherto unprecedented form. This novel, completely emission-free driving pleasure is accompanied by a progressive design – and rounded off by an atmosphere that is sporty, exclusive and ultra-modern in equal measures. As the first purely electric Gran Coupé from BMW M, this exceptional vehicle creates a class of its very own and impresses with its large range, luxurious amount of space with a remarkable level of everyday practicality.\r\nDriving dynamics and design features of the BMW i4 M50.\r\nElectrifies the senses: the BMW i4 M50 develops a powerful 544 hp (400 kW) with its two BMW M eDrive engines in Sport Boost mode and with numerous M specific technology features a completely new driving experience. This is characterised by uninterrupted acceleration from 0 to 100 km/h in 3.9 seconds, adrenaline-charged dynamics with BMW M typical precision and a highly emotive driving sound powered by BMW M IconicSounds Electric. Further enhanced by the standard-series M aerodynamics package and the optional M Technology package. Rounding off the dynamic appearance are exclusive design elements in Cerium Grey and striking M features from the closed M kidney grille through to the M rear spoiler. In the interior, the new BMW Curved Display inclined towards the driver and the slim instrument panel define the ultra-modern ambience. M highlights such as M Sport seats for driver and front passenger or the M leather steering wheel with contrast stitching in M colours set sporty accents.'),
(4, 'AUDI', 'AUDI A4 Manhattan Gray Metallic', 55290.00, './assets/img/A4Blk.PNG', '2020-03-28 11:08:57', 'Past inspiration, future technology.\r\nThe Audi A4 Sedan embodies past inspiration and future technology—raising the bar on what a sedan ought to be.\r\n'),
(5, 'TESLA', 'Tesla S', 91590.00, './assets/img/TeslaSP.png', '2020-03-28 11:08:57', '348mi - Range (EPA est.)\r\n200mph - Top Speed\r\n1.99sec - 0-60 mph\r\nInterior of the Future\r\nCinematic Experience\r\nA 17” touchscreen with left-right tilt offers 2200 x 1300 resolution, true colors and exceptional responsiveness for gaming, movies and more.\r\nYoke Steering\r\nA bold new approach gives you a true connection to Model S, offering better steering feel and unobstructed views of your dash and the road ahead. Tap the brake and Model S automatically selects the correct direction to start your trip.\r\nPerfect Environment\r\nAir vents are hidden throughout the cabin, while tri-zone temperature controls, ventilated seats and HEPA filtration deliver the perfect environment.\r\nRedesigned Second Row\r\nSeating for three adults, with extra legroom, headroom and a stowable armrest with integrated storage and wireless charging.\r\nConsole-Grade Gaming\r\nUp to 10 teraflops of processing power unlock in-car gaming on-par with today’s newest consoles. Play from any seat with wireless controller and headset compatibility.\r\nStay Connected\r\nInstantly connect with multi-device Bluetooth, or fast charge devices with wireless and 36-watt USB-C charging.\r\nImmersive Sound\r\nA 22-speaker, 960-watt audio system with Active Road Noise Reduction offers immersive listening and studio-grade sound quality.\r\nRoom for Everything\r\nWith front and rear trunks and fold-flat seats you can fit your bike without taking the wheel off—and your luggage too.'),
(6, 'BMW', 'BMW 1', 45900.00, './assets/img/BMW1.PNG', '2020-03-28 11:08:57', 'The BMW 1 Series has arrived to attract all the admiring glances. This is because its outstanding design and progressive design language distinguish it from the crowd at the very first glance. The same holds true for its interior with a modern atmosphere that inspires through premium quality and openness. Efficient engines, the front-wheel drive now premiering in the BMW 1 Series and state-of-the-art chassis technologies guarantee driving experiences full of dynamics and agility, while innovative technologies and driver assistance systems ensure that you always reach your destination safely and comfortably.\r\nTHE SPORTY EXTERIOR AND INTERIOR DESIGN OF THE BMW 1 SERIES.\r\nAuthority that is instantly recognisable: the design of the BMW 1 Series leaves a powerful impression both inside and outside. Starting with the dynamic front with its large double kidney grille and broad front apron. Clearly defined contours run parallel to the flowing roof line through to the distinctive rear. The premium character of the BMW 1 Series continues into the interior. Here passengers can enjoy a generously proportioned and open atmosphere of well-being. The cockpit impresses with ergonomically optimised equipment features and its systematically implemented driver-orientation.\r\nDESIGN.\r\nHigh-quality equipment features for the exterior and interior of the BMW 1 Series.\r\nExplore the sporty design options of the BMW 1 Series model with Sport Line. With the high-quality equipment options for exterior and interior, you can design your vehicle entirely to match your taste and personal preference.\r\nDRIVING DYNAMICS.\r\nDrive train, chassis and M Sport steering of the BMW 1 Series.\r\nWhether for powerful acceleration, agile handling or safe roadholding – 1 Series BMW turns every trip into a highlight thanks to its efficient engine and a set of dynamic drive train and chassis components. Explore selected driving dynamics features and configure your tailor-made BMW 1 Series.\r\nDRIVER ASSISTANCE\r\nIntelligent technologies and driver assistance systems in the BMW 1 Series.\r\nOperate the on-board computer by gesture control, have your vehicle move into its parking space independently or ask the intelligent voice assistant for the next filling station. The BMW 1 Series offers you a large number of helpful functions, digital services and driver assistance systems – for a maximum of comfort and safety.\r\nEngine power in kW (hp) at 1/min: 195 (265)/4,750-6,500\r\nAcceleration 0–100 km/h in s: 6.1\r\nFuel consumption combined in l/100 km: 7.4-6.8\r\nCO2 combined emissions in g/km: 170-156'),
(7, 'BMW', 'BMW M760Li xDrive Sedan', 100590.00, './assets/img/BMWM760LixDriveSedan.PNG', '2020-03-28 11:08:57', 'THE FIRST CLASS EQUIPMENT OF THE BMW M760Li xDRIVE SEDAN.\r\nPerformance, comfort and exclusive design elements.\r\nTHE DRIVING DYNAMICS OF THE BMW M760Li xDRIVE SEDAN.\r\nWhen supreme elegance meets pure power, the result is extraordinary: The BMW M760Li xDrive Sedan is an impressively shapely sedan with a breathtaking dynamic potential beyond compare. With its 12-cylinder M TwinPower Turbo petrol engine together with the corresponding and perfectly coordinated suspension components, this unique vehicle marks a new era in automotive driving dynamics. In other words, exactly what you would expect from a BMW Sedan with an M in the model designation.\r\nTHE DESIGN OF THE BMW M760Li xDRIVE SEDAN.\r\n\r\nOur supreme aspiration: to surpass our own benchmarks. And the all-new BMW M760Li xDrive Sedan with the mighty V12 engine is simply created to achieve this. In combination with the M Sport package as well as exclusive design elements in Cerium Grey, it demonstrates an independent design language that shifts the focus onto the passion for dynamics. At the very first glance, the impressive air inlets steer the viewer’s gaze to the broad, powerful front apron. The result is an exceptional presence that continues along the exclusive light-alloy wheels, via the mirror caps in Cerium Grey and the V12 lettering on the c-pillar to the unique exhaust pipe finishers at the rear.\r\nTHE DESIGN: FIRST CLASS. THE COMFORT: TOP CLASS.\r\n\r\nIf pure power and supreme elegance had to be visualised with only one line, it would have the unmistakable silhouette of the BMW M760Li xDrive Sedan. While exclusive design elements in Cerium Grey, such as the 20\" M light alloy wheels or the impressive twin tailpipes, underline the distinctive styling on the exterior, the unique ride comfort can be experienced in every detail of the exclusive interior. From the electrically adjustable comfort seats for driver and front passenger with active headrest through to the elegant, space-generating Panorama glass roof Sky Lounge, the BMW M760Li xDrive Sedan offers a maximum level of comfort and sense of luxury. \r\nPATHBREAKING INNOVATIONS OF THE BMW M760Li xDRIVE SEDAN.\r\nToday, the BMW Personal CoPilot driver assistance systems already offer a foretaste of what driving could soon offer. They support the driver or take over certain tasks completely. In the BMW M760Li xDrive Sedan, everything is specially geared towards the driver. The displays of the BMW Live Cockpit Professional, for example, are very easy to personalise. The BMW Intelligent Personal Assistant allows you to operate individual functions quickly and conveniently.  '),
(8, 'BMW', 'BMW X4 M Competition', 99900.00, './assets/img/BMWX4MCompetition.PNG', '2020-03-28 11:08:57', 'AWAKEN THE POWER WITHIN\r\nDrive it to believe it. The 2023 BMW X4 M boasts mind-blowing acceleration, advanced displays, and high-performance forged wheels.\r\nPERFORMANCE-FIERCE POWER\r\nBuilt for next-level performance, the 3.0-liter BMW M TwinPower Turbo inline 6-cylinder engine has a peak output of up to 503 hp with the available Competition Package. You’ll also enjoy precise shifts and faster acceleration with the standard 8-Speed M Sport transmission with Drivelogic.\r\nSporty performance.\r\nIn the X4 M, sport-focused upgrades come standard – including the Adaptive M Suspension, the intelligent M xDrive with 4WD and 4WD Sport modes, and the 6-piston M Compound Brakes with ventilated, drilled brake discs for incredible control and confidence.\r\nDESIGN\r\nATTRACT ATTENTION\r\nThe 2023 BMW X4 M is bold from front to back, with show-stopping designs and audacious paint colors.\r\nDaring.\r\nThe M-specific front bumper and double-bar kidney grille display the X4 M’s unapologetic athleticism.\r\nExpressive.\r\nAn M-specific rear bumper design includes vertical reflectors and a gloss-black diffuser – delivering a strong, sporty impression.\r\nFocused.\r\nSlim headlights give your X4 a sharp, modern appearance – ensuring your dynamic presence on the road.\r\nEye-catching.\r\nGo bold with exciting paint colors – including Sao Paulo Yellow, Brooklyn Grey Metallic, and Marina Bay Blue Metallic.\r\nTECHNOLOGY - DRIVER-SPIRITED INNOVATION\r\nFrom advanced safety systems to performance-centric displays, the X4 M’s cutting-edge technology is always tuned in to your drive.\r\n'),
(9, 'BMW', 'BMW X7 M50i', 115900.00, './assets/img/BMWX7M50i.PNG', '2020-03-28 11:08:57', 'DISCOVER BMW X7 M50i\r\nLuxury on every terrain: the BMW X7 M50i combines supreme elegance with sporty offroad performance. Its outstanding appearance with impressive SAV genes and M specific design elements testifies to the exceptional driving dynamic potential of the vehicle. A promise of performance that the BMW X7 M50i is able to deliver with ease thanks to the powerful M TwinPower Turbo engine and M specific drivetrain and suspension technologies.\r\nPERFORMANCE ATTAINS PERFECTION.\r\nDriving dynamics and design features of the BMW X7 M50i.\r\nPerfected driving pleasure: the driving dynamics and design of the BMW X7 M50i sets new standards within its class. The sporty character is underpinned by extremely powerful motorsport components such as the 8-speed Steptronic Sport transmission and the M Sport exhaust system – standard features that distinguish the BMW X7 M50i. Rounding off the athletic and luxurious appearance are exclusive M specific features and design accents for exterior and interior.  \r\nA HOME FOR INNOVATION.\r\nDigital services, driver assistance systems and comfort features of the BMW X7 M50i.\r\nThe exceptional comfort of the BMW X7 M50i starts before you even enter. Enjoy maximum comfort with the benefits of features like the BMW Digital Key, which turns your smartphone into a fully functional car key. Innovative technologies like the driver assistance systems of the BMW Personal CoPilot and other advanced ConnectedDrive services help to make every trip as pleasant as possible. At the same time, the pioneering infotainment system with gesture control remains permanently up to date thanks to regular remote software upgrades.\r\nTECHNICAL DATA OF THE BMW X7 M50i.\r\nEngine power in kW at 1/min:390 / 5,500–6,000\r\nMax. torque in Nm at 1/min:750/1,800–4,600\r\nAcceleration 0–100 km/h in s:4.7\r\nFuel consumption combined in l/100 km:11.6\r\n'),
(10, 'BMW', 'BMW Z4 Roadster', 88900.00, './assets/img/BMWZ4ROADSTER.PNG', '2020-03-28 11:08:57', 'PERFORMANCE - FREEING POWER\r\nBehind this classic sports car is pure power from BMW TwinPower Turbo engines – an inline 4-cylinder in the Z4 sDrive30i delivering up to 255 horsepower and an inline 6-cylinder in the Z4 M40i delivering up to 382 horsepower.'),
(11, 'BMW', 'BMW Coupe M Sport', 70500.00, './assets/img/BMWCoupeMSport.PNG', '2020-03-28 11:08:57', 'The all-new BMW 4 Series Coupé impresses with its unique aesthetics, sporting dynamics and high-quality interior. The combination of unique design and impressive agility develops an extraordinarily high attraction.\r\nTHE EXTERIOR DESIGN OF THE BMW 4 SERIES COUPÉ.\r\nProvocative, independent, edgy: with its unmistakeable exterior design, the BMW 4 Series Coupé manifests itself as a rebellious individualist. The distinctive front with the unique BMW double kidney grille emphasises maximum independence and symbolizes the expressive appearance of the BMW 4 Series Coupé.\r\nTHE INTERIOR DESIGN OF THE BMW 4 SERIES COUPÉ.\r\nComplexity in concise form: the interior design of the BMW 4 Series Coupé places the driver at the centre of attention. Alongside the functional styling of the interior, the precise design language and the high-quality design elements produce a modern and independent aura.\r\nDRIVING DYNAMICS.\r\n\r\nDrive train and chassis components of the BMW 4 Series Coupé.\r\nSporty roadholding, optimum handling and high agility: in terms of performance and driving dynamics, the BMW 4 Series Coupé provides exciting driving pleasures. With powerful TwinPower Turbo engines and perfectly matched suspension components, the sports coupé is prepared for every challenge.');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_subbed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `date_subbed`) VALUES
(0, '[value-2]', '0000-00-00 00:00:00'),
(0, '[sss@gmail.com]', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'daily', 'car', '2020-03-28 13:07:17'),
(2, 'shaad', 'mahamod', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'hellosir', '$2y$10$jQAeejWODXBeztCGf2bnmOAJzc6LTBKQ4WKOHwu4OUrTVd8mQxgee', '2022-05-24 07:24:47'),
(7, 'mahamods', '$2y$10$Svqmwqu2YYnrDIY0SYBSUuMPFFys2W0y7ppkn0fWqSWokFi.bTuuG', '2022-11-18 15:31:21'),
(8, 'mahamodms', '$2y$10$lsx98n99xfUIf1YS7GQzaOgYezeB5cySkHXMG5q7hfWl4Cul3qZhi', '2022-11-22 20:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`cart_id`, `user_id`, `item_id`) VALUES
(170, 1, 7),
(85, 1, 1),
(139, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
