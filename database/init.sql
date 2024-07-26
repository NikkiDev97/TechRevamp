-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-07-2024 a las 02:37:52
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `techrevamp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`order_id`, `order_code`, `order_date`, `user_id`) VALUES
(1, 'ORD12345', '2024-07-08', 1),
(2, 'ORD67890', '2024-06-11', 2),
(3, 'ORD54321', '2024-07-16', 3),
(4, 'ORD98765', '2024-06-02', 4),
(5, 'ORD24680', '2024-05-13', 5),
(6, 'ORD12348', '2024-07-09', 2),
(7, 'ORD15348', '2024-07-08', 1),
(8, 'ORD25348', '2024-03-08', 3),
(10, 'ORD35348', '2024-04-08', 4),
(11, 'ORD14848', '2024-07-09', 1),
(12, 'ORD35848', '2024-07-09', 3),
(13, 'ORD47848', '2024-07-05', 5),
(14, 'ORD56848', '2024-09-02', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_products`
--

CREATE TABLE `order_products` (
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `order_products`
--

INSERT INTO `order_products` (`quantity`, `order_id`, `product_id`) VALUES
(2, 1, 1),
(1, 1, 3),
(1, 2, 2),
(3, 3, 5),
(1, 4, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `payment_id` bigint(20) NOT NULL,
  `amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(38,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `tittle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`product_id`, `category`, `description`, `name`, `price`, `stock`, `image`, `tittle`) VALUES
(1, 'Laptops', 'Potente Laptop Dell Inspiron con 8GB de RAM y 512GB de almacenamiento SSD, ideal para tareas multitarea y almacenamiento rápido. Equipada con una pantalla Full HD de 15.6 pulgadas, procesador Intel Core i3 de octava generación y gráficos integrados, esta ', 'Laptop Dell Inspiron', 1765000.00, 50, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1720922899/products/1-portatil1.webp', ''),
(2, 'Smartphones', 'Elegante Smartphone Samsung Galaxy S21 con 128GB de almacenamiento para capturar y guardar tus mejores momentos. Cuenta con una cámara triple de 64MP, una pantalla Dynamic AMOLED 2X de 6.2 pulgadas y un procesador Exynos 2100. Diseñado para ofrecer una ex', 'Smartphone Samsung Galaxy S21', 1259000.00, 52, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360209/products/2-telefono.webp', ''),
(3, 'Tablets', 'Impresionante Apple iPad Pro de 12.9 pulgadas y 256GB de almacenamiento, perfecto para creatividad y productividad en cualquier lugar. Equipado con el chip M1 de Apple, una pantalla Liquid Retina XDR y compatibilidad con el Apple Pencil y el Magic Keyboar', 'Tablet Apple iPad Pro', 1086000.00, 500, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/3-tablet.webp', ''),
(4, 'Monitores', 'Monitor LG UltraWide de 34 pulgadas con resolución 2560x1080, ideal para una experiencia de visualización amplia y envolvente. Perfecto para multitarea, gaming y edición de video, este monitor ofrece una calidad de imagen superior con colores vibrantes y ', 'Monitor LG UltraWide', 950000.00, 123, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360209/products/4-monitor.webp', ''),
(5, 'Auriculares', 'Auriculares inalámbricos Sony WH-1000XM4 con cancelación de ruido, ofreciendo una experiencia de audio inmersiva y sin interrupciones. Con tecnología de sonido de alta resolución, micrófonos integrados para llamadas claras y una batería de larga duración ', 'Auriculares Sony WH-1000XM4', 1026000.00, 250, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/5-auriculares.webp', ''),
(6, 'Relojes Inteligentes', 'Apple Watch Series 6 con GPS y pantalla de 44mm, monitoriza tu salud y actividad física con estilo. Equipado con sensores avanzados que miden el oxígeno en sangre, electrocardiogramas y seguimiento del sueño, este reloj inteligente te ayuda a mantenerte e', 'Reloj Inteligente Apple Watch Series 6', 837000.00, 45, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/6-reloj.webp', ''),
(7, 'Cámaras', 'Cámara Canon EOS R sin espejo de fotograma completo y 30.3MP, perfecta para fotógrafos profesionales y entusiastas. Con un sistema de enfoque automático Dual Pixel, capacidad de grabación 4K y una amplia gama de lentes intercambiables, esta cámara ofrece ', 'Cámara Canon EOS R', 3586000.00, 52, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/7-camara.webp', ''),
(8, 'Impresoras', 'Impresora HP LaserJet Pro, una solución eficiente y rápida para todas tus necesidades de impresión en blanco y negro. Con capacidad de impresión inalámbrica y una velocidad de impresión de hasta 30 páginas por minuto, esta impresora es ideal para oficinas', 'Impresora HP LaserJet Pro', 450000.00, 10, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/8-impresora.webp', ''),
(9, 'Routers', 'Router Asus RT-AC86U de doble banda con tecnología MU-MIMO, proporcionando una conexión Wi-Fi rápida y estable. Ideal para juegos en línea y streaming 4K, este router ofrece una cobertura amplia y una velocidad de hasta 2900 Mbps, además de opciones avanz', 'Router Asus RT-AC86U', 835000.00, 1200, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360209/products/9-router.webp', ''),
(10, 'Keyboards', 'Teclado mecánico Corsair K95 con retroiluminación RGB e interruptores Cherry MX Speed, diseñado para los gamers más exigentes. Con teclas programables, memoria integrada para perfiles y un reposamuñecas desmontable, este teclado ofrece una experiencia de ', 'Teclado Mecánico Corsair K95', 365000.00, 3800, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360209/products/10-teclado.webp', ''),
(11, 'Laptops', 'Potente Laptop Dell Inspiron con 8GB de RAM y 512GB de almacenamiento SSD, ideal para tareas multitarea y almacenamiento rápido. Equipada con una pantalla Full HD de 15.6 pulgadas, procesador Intel Core i3 de octava generación y gráficos integrados, esta ', 'Laptop Dell Inspiron', 1765000.00, 50, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1720922899/products/1-portatil1.webp', ''),
(12, 'Smartphones', 'Elegante Smartphone Samsung Galaxy S21 con 128GB de almacenamiento para capturar y guardar tus mejores momentos. Cuenta con una cámara triple de 64MP, una pantalla Dynamic AMOLED 2X de 6.2 pulgadas y un procesador Exynos 2100. Diseñado para ofrecer una ex', 'Smartphone Samsung Galaxy S21', 1259000.00, 52, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360209/products/2-telefono.webp', ''),
(13, 'Tablets', 'Impresionante Apple iPad Pro de 12.9 pulgadas y 256GB de almacenamiento, perfecto para creatividad y productividad en cualquier lugar. Equipado con el chip M1 de Apple, una pantalla Liquid Retina XDR y compatibilidad con el Apple Pencil y el Magic Keyboar', 'Tablet Apple iPad Pro', 1086000.00, 500, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/3-tablet.webp', ''),
(14, 'Monitores', 'Monitor LG UltraWide de 34 pulgadas con resolución 2560x1080, ideal para una experiencia de visualización amplia y envolvente. Perfecto para multitarea, gaming y edición de video, este monitor ofrece una calidad de imagen superior con colores vibrantes y ', 'Monitor LG UltraWide', 950000.00, 123, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360209/products/4-monitor.webp', ''),
(15, 'Auriculares', 'Auriculares inalámbricos Sony WH-1000XM4 con cancelación de ruido, ofreciendo una experiencia de audio inmersiva y sin interrupciones. Con tecnología de sonido de alta resolución, micrófonos integrados para llamadas claras y una batería de larga duración ', 'Auriculares Sony WH-1000XM4', 1026000.00, 250, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/5-auriculares.webp', ''),
(16, 'Relojes Inteligentes', 'Apple Watch Series 6 con GPS y pantalla de 44mm, monitoriza tu salud y actividad física con estilo. Equipado con sensores avanzados que miden el oxígeno en sangre, electrocardiogramas y seguimiento del sueño, este reloj inteligente te ayuda a mantenerte e', 'Reloj Inteligente Apple Watch Series 6', 837000.00, 45, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/6-reloj.webp', ''),
(17, 'Cámaras', 'Cámara Canon EOS R sin espejo de fotograma completo y 30.3MP, perfecta para fotógrafos profesionales y entusiastas. Con un sistema de enfoque automático Dual Pixel, capacidad de grabación 4K y una amplia gama de lentes intercambiables, esta cámara ofrece ', 'Cámara Canon EOS R', 3586000.00, 52, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/7-camara.webp', ''),
(18, 'Impresoras', 'Impresora HP LaserJet Pro, una solución eficiente y rápida para todas tus necesidades de impresión en blanco y negro. Con capacidad de impresión inalámbrica y una velocidad de impresión de hasta 30 páginas por minuto, esta impresora es ideal para oficinas', 'Impresora HP LaserJet Pro', 450000.00, 10, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/8-impresora.webp', ''),
(19, 'Routers', 'Router Asus RT-AC86U de doble banda con tecnología MU-MIMO, proporcionando una conexión Wi-Fi rápida y estable. Ideal para juegos en línea y streaming 4K, este router ofrece una cobertura amplia y una velocidad de hasta 2900 Mbps, además de opciones avanz', 'Router Asus RT-AC86U', 835000.00, 1200, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360209/products/9-router.webp', ''),
(20, 'Keyboards', 'Teclado mecánico Corsair K95 con retroiluminación RGB e interruptores Cherry MX Speed, diseñado para los gamers más exigentes. Con teclas programables, memoria integrada para perfiles y un reposamuñecas desmontable, este teclado ofrece una experiencia de ', 'Teclado Mecánico Corsair K95', 365000.00, 3800, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360209/products/10-teclado.webp', ''),
(21, 'Laptops', 'Potente Laptop Dell Inspiron con 8GB de RAM y 512GB de almacenamiento SSD, ideal para tareas multitarea y almacenamiento rápido. Equipada con una pantalla Full HD de 15.6 pulgadas, procesador Intel Core i3 de octava generación y gráficos integrados, esta ', 'Laptop Dell Inspiron', 1765000.00, 50, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1720922899/products/1-portatil1.webp', ''),
(22, 'Smartphones', 'Elegante Smartphone Samsung Galaxy S21 con 128GB de almacenamiento para capturar y guardar tus mejores momentos. Cuenta con una cámara triple de 64MP, una pantalla Dynamic AMOLED 2X de 6.2 pulgadas y un procesador Exynos 2100. Diseñado para ofrecer una ex', 'Smartphone Samsung Galaxy S21', 1259000.00, 52, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360209/products/2-telefono.webp', ''),
(23, 'Tablets', 'Impresionante Apple iPad Pro de 12.9 pulgadas y 256GB de almacenamiento, perfecto para creatividad y productividad en cualquier lugar. Equipado con el chip M1 de Apple, una pantalla Liquid Retina XDR y compatibilidad con el Apple Pencil y el Magic Keyboar', 'Tablet Apple iPad Pro', 1086000.00, 500, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/3-tablet.webp', ''),
(24, 'Monitores', 'Monitor LG UltraWide de 34 pulgadas con resolución 2560x1080, ideal para una experiencia de visualización amplia y envolvente. Perfecto para multitarea, gaming y edición de video, este monitor ofrece una calidad de imagen superior con colores vibrantes y ', 'Monitor LG UltraWide', 950000.00, 123, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360209/products/4-monitor.webp', ''),
(25, 'Auriculares', 'Auriculares inalámbricos Sony WH-1000XM4 con cancelación de ruido, ofreciendo una experiencia de audio inmersiva y sin interrupciones. Con tecnología de sonido de alta resolución, micrófonos integrados para llamadas claras y una batería de larga duración ', 'Auriculares Sony WH-1000XM4', 1026000.00, 250, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/5-auriculares.webp', ''),
(26, 'Relojes Inteligentes', 'Apple Watch Series 6 con GPS y pantalla de 44mm, monitoriza tu salud y actividad física con estilo. Equipado con sensores avanzados que miden el oxígeno en sangre, electrocardiogramas y seguimiento del sueño, este reloj inteligente te ayuda a mantenerte e', 'Reloj Inteligente Apple Watch Series 6', 837000.00, 45, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/6-reloj.webp', ''),
(27, 'Cámaras', 'Cámara Canon EOS R sin espejo de fotograma completo y 30.3MP, perfecta para fotógrafos profesionales y entusiastas. Con un sistema de enfoque automático Dual Pixel, capacidad de grabación 4K y una amplia gama de lentes intercambiables, esta cámara ofrece ', 'Cámara Canon EOS R', 3586000.00, 52, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/7-camara.webp', ''),
(28, 'Impresoras', 'Impresora HP LaserJet Pro, una solución eficiente y rápida para todas tus necesidades de impresión en blanco y negro. Con capacidad de impresión inalámbrica y una velocidad de impresión de hasta 30 páginas por minuto, esta impresora es ideal para oficinas', 'Impresora HP LaserJet Pro', 450000.00, 10, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360210/products/8-impresora.webp', ''),
(29, 'Routers', 'Router Asus RT-AC86U de doble banda con tecnología MU-MIMO, proporcionando una conexión Wi-Fi rápida y estable. Ideal para juegos en línea y streaming 4K, este router ofrece una cobertura amplia y una velocidad de hasta 2900 Mbps, además de opciones avanz', 'Router Asus RT-AC86U', 835000.00, 1200, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360209/products/9-router.webp', ''),
(30, 'Keyboards', 'Teclado mecánico Corsair K95 con retroiluminación RGB e interruptores Cherry MX Speed, diseñado para los gamers más exigentes. Con teclas programables, memoria integrada para perfiles y un reposamuñecas desmontable, este teclado ofrece una experiencia de ', 'Teclado Mecánico Corsair K95', 365000.00, 3800, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719360209/products/10-teclado.webp', ''),
(31, 'Auriculares', 'Disfruta de una experiencia auditiva superior con los Auriculares Inalámbricos ANC 2. Equipados con tecnología de cancelación activa de ruido (ANC), estos auriculares ofrecen un sonido claro y envolvente, ideal para música, llamadas y más.', 'Auriculares Inalámbricos ANC 2', 685000.00, 25, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719361286/home/1-auriculares.webp', 'COMODIDAD Y ESTILO'),
(32, 'Teclados', 'El Teclado Bluetooth Logitech combina comodidad y rendimiento en un diseño elegante y compacto. Conecta fácilmente con dispositivos Bluetooth, ofreciendo una experiencia de escritura silenciosa y precisa. Ideal para trabajar desde casa o en movimiento.', 'Teclado Bluetooth Logitech', 360000.00, 40, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719361285/home/2-teclado.webp', 'AHORRO ÚNICO'),
(33, 'Relojes Inteligentes', 'El Reloj Inteligente Whatsapp Watch combina estilo y funcionalidad con su pantalla táctil a color y conectividad Bluetooth. Diseñado para mantenerse al día con tus mensajes, notificaciones y actividad física, perfecto para usuarios que buscan comodidad.', 'Reloj Inteligente Whatsapp Watch', 120000.00, 15, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719361286/home/3-reloj.webp', 'TENDENCIA'),
(34, 'Smartphones', 'El Apple iPhone 14 Plus en color Azul combina elegancia y rendimiento avanzado. Con 128 GB de almacenamiento, este smartphone ofrece una experiencia fluida y rápida con su procesador A17 Bionic y pantalla Super Retina XDR.', 'Apple iPhone 14 Plus', 3659000.00, 10, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719361285/home/4-telefono.webp', 'EXCLUSIVO'),
(35, 'Smartphones', 'El Portátil LG Gram 16 Oled es la combinación perfecta de portabilidad y rendimiento. Con una pantalla OLED de 16 pulgadas, este ultrabook ofrece colores vibrantes y negros profundos. Equipado con un procesador Intel Core i7 de última generación, 16 GB de', 'Portátil LG Gram 16 Oled', 4259000.00, 5, 'https://res.cloudinary.com/dxtiy4bsk/image/upload/v1719361286/home/5-portatil.webp', 'TENDENCIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `review_id` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `review_date` date NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `reviews`
--

INSERT INTO `reviews` (`review_id`, `comment`, `rating`, `review_date`, `product_id`, `user_id`) VALUES
(1, 'Excelente laptop para trabajo y estudios.', 4, '2024-07-01', 1, 1),
(2, 'Me encanta este smartphone, muy rápido y buenas cámaras.', 5, '2024-07-15', 2, 2),
(3, 'Los mejores auriculares que he tenido, cancelación de ruido espectacular.', 5, '2024-07-01', 5, 3),
(4, 'Cámara excepcional, calidad de imagen impresionante.', 5, '2024-06-20', 7, 4),
(5, 'Gran teclado para gaming, muy cómodo y las luces son geniales.', 4, '2024-06-17', 10, 5),
(6, 'Excelente laptop para trabajo y estudios.', 4, '2024-07-01', 9, 1),
(7, 'Excelente Teclado mecánico Corsair.', 5, '2024-07-06', 10, 3),
(8, 'Excelente producto, muy satisfecho con la compra. Recomiendo ampliamente este vendedor.', 4, '2023-08-15', 17, 1),
(9, 'El artículo llegó en perfectas condiciones y muy rápido. Sin duda volvería a comprar aquí.', 5, '2023-09-22', 21, 2),
(10, 'Buen servicio al cliente y producto tal como se describe en la página. Gracias.', 4, '2023-10-10', 12, 3),
(11, 'La entrega fue un poco lenta, pero el producto funciona bien. Esperaba más rapidez.', 4, '2023-11-05', 8, 4),
(12, 'Producto excelente, superó mis expectativas. Definitivamente recomendaré este sitio.', 5, '2023-12-18', 32, 5),
(13, 'Me encantó el producto, pero el embalaje podría mejorar. Aún así, una buena experiencia.', 4, '2024-01-07', 3, 7),
(14, 'Buena relación calidad-precio. El envío fue rápido y el producto llegó en perfecto estado.', 4, '2024-02-14', 25, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `address_id` bigint(20) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `cart_id` bigint(20) NOT NULL,
  `creation_date` date NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `shopping_carts`
--

INSERT INTO `shopping_carts` (`cart_id`, `creation_date`, `user_id`) VALUES
(1, '2024-07-08', 1),
(2, '2024-07-01', 3),
(3, '2024-06-27', 5),
(4, '2024-06-10', 2),
(5, '2024-06-03', 4),
(8, '2024-07-16', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shopping_cart_products`
--

CREATE TABLE `shopping_cart_products` (
  `quantity` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `shopping_cart_products`
--

INSERT INTO `shopping_cart_products` (`quantity`, `product_id`, `cart_id`) VALUES
(1, 4, 1),
(2, 6, 1),
(1, 8, 2),
(1, 4, 3),
(1, 10, 3),
(1, 9, 4),
(2, 8, 8),
(1, 21, 8),
(1, 25, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `is_logged_in` bit(1) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `email`, `first_name`, `is_logged_in`, `last_name`, `password`, `phone`) VALUES
(1, 'gabriela@example.com', 'Gabriela', b'0', 'Rojas', 'password123', ''),
(2, 'nicole@example.com', 'Nicole', b'0', 'Rojas', 'securepass', ''),
(3, 'arturo@example.com', 'Arturo', b'0', 'Navas', 'contraseña123', ''),
(4, 'giovanny@example.com', 'Giovanny', b'0', 'Salcedo', 'password456', ''),
(5, 'test@example.com', 'usuarios', b'1', 'test', 'segur0', ''),
(7, 'testingR@gmail.com', 'Gabriela', b'1', 'Rojas', '$2b$10$M/./95jPFZfvaMU17PwVpugnDS3vZwafX2zpqnEzLG9Z1T6sXtNXa', '3226005555'),
(8, 'raccoon@gmail.com', 'Raccoon', b'1', 'Java V', '$2b$10$AXGcneJd1mcdGa2i2PQa.uUAdcl0masj.uU2/Hu2yvb/zX2E1nh7K', '3222654585');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `UKdhk2umg8ijjkg4njg6891trit` (`order_code`),
  ADD KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`);

--
-- Indices de la tabla `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `FKdxjduvg7991r4qja26fsckxv8` (`product_id`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD UNIQUE KEY `UK8vo36cen604as7etdfwmyjsxt` (`order_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `FKpl51cejpw4gy5swfar8br9ngi` (`product_id`),
  ADD KEY `FKcgy7qjc1r99dp117y9en6lxye` (`user_id`);

--
-- Indices de la tabla `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `FK6bp1apvusb3gj4170h4pesd3h` (`user_id`);

--
-- Indices de la tabla `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD UNIQUE KEY `UKt5ao4h91q3su6hi9d2haxdr2t` (`user_id`);

--
-- Indices de la tabla `shopping_cart_products`
--
ALTER TABLE `shopping_cart_products`
  ADD PRIMARY KEY (`cart_id`,`product_id`),
  ADD KEY `FKnf1xjkiucco0nm5kva0aknqto` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `address_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `cart_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Filtros para la tabla `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `FKawxpt1ns1sr7al76nvjkv21of` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `FKdxjduvg7991r4qja26fsckxv8` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `FK81gagumt0r8y3rmudcgpbk42l` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Filtros para la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FKcgy7qjc1r99dp117y9en6lxye` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `FKpl51cejpw4gy5swfar8br9ngi` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Filtros para la tabla `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD CONSTRAINT `FK6bp1apvusb3gj4170h4pesd3h` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Filtros para la tabla `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD CONSTRAINT `FK3iw2988ea60alsp0gnvvyt744` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Filtros para la tabla `shopping_cart_products`
--
ALTER TABLE `shopping_cart_products`
  ADD CONSTRAINT `FKexse1775rqleeukwfy9co7do5` FOREIGN KEY (`cart_id`) REFERENCES `shopping_carts` (`cart_id`),
  ADD CONSTRAINT `FKnf1xjkiucco0nm5kva0aknqto` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
