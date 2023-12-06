-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tienda_04
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,1,'A-001','Chaqueta de Cuero Clásica',200.00,10,'Eleva tu estilo con nuestra chaqueta de cuero clásica. Con un diseño atemporal, esta prenda es perfecta para cualquier ocasión. Fabricada con cuero de alta calidad, proporciona durabilidad y un toque de elegancia a tu guardarropa.',1),(2,1,'A-002','Bolso Tote Versátil',130.00,5,'Descubre la funcionalidad y la moda con nuestro bolso tote versátil. Con múltiples compartimentos y un diseño moderno, este bolso es ideal para el trabajo, la universidad o un día de compras. Está confeccionado con materiales resistentes para acompañarte en todas tus actividades diarias.',1),(3,1,'A-003','Zapatos Deportivos de Última Generación',100.00,3,'Alcanza tus metas fitness con nuestros zapatos deportivos de última generación. Diseñados para brindar comodidad y soporte, estos zapatos son ideales para correr, entrenar en el gimnasio o simplemente para un estilo de vida activo. Su diseño moderno y tecnología avanzada los convierten en una opción perfecta para los entusiastas del deporte.',1),(4,2,'A-004','Teléfono Inteligente de Última Generación',2300.00,15,'Experimenta la potencia y la innovación con nuestro teléfono inteligente de última generación. Equipado con una cámara de alta resolución, rendimiento rápido y una pantalla impresionante, este dispositivo redefine la experiencia móvil. Mantente conectado y disfruta de todas las funciones avanzadas que ofrece.',1),(5,2,'A-005','Portátil Ultradelgado para Profesionales',3500.00,10,'Potencia tu productividad con nuestro portátil ultradelgado diseñado para profesionales en movimiento. Con un diseño elegante y especificaciones de vanguardia, este portátil ofrece rendimiento excepcional en un formato ligero. Perfecto para negocios, estudio o entretenimiento, te acompañará a donde vayas con estilo.',1),(6,2,'A-006','Auriculares Inalámbricos con Cancelación de Ruido',80.00,30,'Sumérgete en un mundo de sonido de alta calidad con nuestros auriculares inalámbricos con cancelación de ruido. Disfruta de una experiencia auditiva inmersiva mientras bloqueas el ruido del entorno. Ligeros y cómodos, estos auriculares son ideales para viajar, trabajar o simplemente relajarte con tu música favorita.',1),(7,3,'A-007','Sofá Modular para Espacios Modernos',300.00,10,'Transforma tu sala de estar con nuestro sofá modular para espacios modernos. Con líneas limpias y un diseño versátil, este sofá se adapta a cualquier configuración de sala. Además, su comodidad superior lo convierte en el lugar perfecto para relajarte después de un día ajetreado.',1),(8,3,'A-008','Set de Utensilios de Cocina de Acero Inoxidable',200.00,5,'Eleva tu experiencia culinaria con nuestro set de utensilios de cocina de acero inoxidable. Cada pieza está diseñada para la durabilidad y la funcionalidad, proporcionando las herramientas esenciales para cocinar con estilo. Con mangos ergonómicos, este set aporta un toque de elegancia a tu cocina.',1),(9,3,'A-009','Juego de Muebles de Jardín para Exteriores',800.00,5,'Crea un oasis al aire libre con nuestro juego de muebles de jardín. Fabricado con materiales resistentes a la intemperie, este conjunto incluye cómodos sillones y una mesa elegante. Perfecto para reuniones familiares, barbacoas o simplemente relajarse bajo el sol, este juego transformará tu espacio exterior en un lugar acogedor y elegante.',1),(10,4,'A-010','Set de Cuidado Facial de Lujo',400.00,10,'Dale a tu piel el amor que se merece con nuestro set de cuidado facial de lujo. Diseñado para rejuvenecer y revitalizar, este conjunto incluye productos premium que hidratan, nutren y protegen tu piel. Disfruta de una rutina de cuidado facial que realza tu belleza natural.',1),(11,4,'A-011','Secador de Cabello Profesional con Tecnología Iónica',140.00,5,'Logra un cabello brillante y sin frizz con nuestro secador de cabello profesional. Equipado con tecnología iónica, este secador seca rápidamente mientras reduce el daño causado por el calor. Con múltiples ajustes de velocidad y calor, es la herramienta perfecta para lograr peinados espectaculares.',1),(12,4,'A-012','Colección de Maquillaje de Edición Limitada',60.00,20,'Despierta tu creatividad con nuestra colección de maquillaje de edición limitada. Desde tonos vibrantes hasta colores clásicos, esta colección ofrece una gama versátil para expresar tu estilo único. Descubre productos de alta calidad que realzan tu belleza con un toque de elegancia y glamour.',1),(13,5,'A-013','Bestsellers del Momento',50.00,10,'Sumérgete en las historias más cautivadoras con nuestra selección de bestsellers del momento. Desde emocionantes novelas hasta apasionantes no-ficciones, estos libros te transportarán a mundos fascinantes y te mantendrán entretenido durante horas.',1),(14,5,'A-014','Colección de Películas Clásicas en Blu-ray',90.00,5,'Revive los momentos más icónicos del cine con nuestra colección de películas clásicas en Blu-ray. Experimenta la magia del séptimo arte con una calidad de imagen excepcional.',1),(15,5,'A-015','Vinilos de Artistas Legendarios',30.00,10,'Sumérgete en la nostalgia musical con nuestra colección de vinilos de artistas legendarios. Desde clásicos del rock hasta las melodías atemporales de jazz, estos vinilos ofrecen una experiencia auditiva auténtica. Descubre la riqueza del sonido analógico con estas joyas musicales.',1),(16,6,'A-016','Equipo de Ejercicio para Casa',700.00,5,'Transforma tu hogar en un gimnasio personal con nuestro equipo de ejercicio de alta calidad. Desde pesas ajustables hasta bandas de resistencia, este conjunto te ofrece las herramientas necesarias para mantenerte en forma cómodamente en casa. Logra tus metas fitness sin salir de tu espacio.',1),(17,6,'A-017','Ropa Deportiva de Alto Rendimiento',160.00,10,'Alcanza tu máximo potencial con nuestra línea de ropa deportiva de alto rendimiento. Diseñada para la comodidad y la transpirabilidad, esta colección te mantendrá fresco y enfocado durante tus entrenamientos. Desde camisetas técnicas hasta mallas transpirables, encuentra la ropa perfecta para tu actividad favorita.',1),(18,6,'A-018','Set de Camping Todo en Uno',1100.00,5,'Prepárate para la aventura al aire libre con nuestro set de camping todo en uno. Con tienda de campaña resistente, saco de dormir cómodo y utensilios de cocina portátiles, este conjunto facilita la planificación de tu próxima escapada. Disfruta de la naturaleza con equipamiento confiable y de calidad.',1),(19,7,'A-019','Selección Gourmet de Tés y Infusiones',320.00,5,'Deléitate con nuestra selección gourmet de tés y infusiones de alta calidad. Descubre aromas exquisitos y sabores únicos que transformarán tu experiencia de la hora del té. Desde clásicos atemporales hasta mezclas creativas, nuestra colección ofrece una variedad que satisfará incluso a los paladares más exigentes.',1),(20,7,'A-020','Caja de Snacks Saludables',10.00,50,'Disfruta de la combinación perfecta entre sabor y salud con nuestra caja de snacks saludables. Desde nueces y frutas deshidratadas hasta opciones bajas en calorías, esta caja ofrece una variedad de delicias que te mantendrán satisfecho entre comidas. Descubre una nueva forma de picar de manera inteligente.',1),(21,7,'A-021','Vinos Seleccionados de las Mejores Bodegas',25.00,40,'Eleva tus momentos especiales con nuestra colección de vinos seleccionados de las mejores bodegas. Desde tintos robustos hasta blancos refrescantes, cada botella cuenta una historia única. Descubre la exquisitez en cada sorbo y celebra la vida con estas joyas vinícolas.',1);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Ropa y Accesorios','Descubre las últimas tendencias en moda para hombres, mujeres y niños. Desde elegantes accesorios hasta calzado de moda, encuentra todo lo que necesitas para expresar tu estilo único.',1),(2,'Electrónica','Explora nuestra gama de productos electrónicos de vanguardia. Desde smartphones y portátiles hasta accesorios innovadores, ofrecemos lo último en tecnología para satisfacer tus necesidades digitales.',1),(3,'Hogar y Jardín','Transforma tu hogar en un oasis con nuestra selección de muebles elegantes, electrodomésticos modernos y accesorios de decoración. Descubre soluciones creativas para interiores y exteriores.',1),(4,'Salud y Belleza','Cuida de ti mismo con nuestra colección de productos de cuidado facial, capilar y de belleza. Encuentra todo lo necesario para realzar tu belleza y mantener un estilo de vida saludable.',1),(5,'Libros y Entretenimiento','Sumérgete en un mundo de historias con nuestra amplia variedad de libros. Además, disfruta de entretenimiento en casa con películas, música y juegos que satisfacen todos los gustos.',1),(6,'Deportes y Aire Libre','Haz del deporte una parte integral de tu vida con nuestra ropa deportiva, equipos de ejercicio y artículos para actividades al aire libre. Encuentra todo lo que necesitas para mantenerte activo y en forma.',1),(7,'Alimentación y Bebidas','Deléitate con nuestra selección de alimentos frescos, bebidas deliciosas y snacks irresistibles. Descubre productos de alta calidad para satisfacer tus antojos y necesidades alimenticias.',1);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Persona Natural','Pnatural 1','DNI','11111111','Calle Pnatural 001','999999999','pnatural1@gmail.com'),(2,'Persona Natural','Pnatural 2','DNI','22222222','Calle Pnatural 002','988888888','pnatural2@gmail.com'),(3,'Persona Natural','Pnatural 3','DNI','33333333','Calle Pnatural 003','977777777','pnatural3@gmail.com'),(4,'Persona Natural','Pnatural 4','DNI','44444444','Calle Pnatural 004','966666666','pnatural4@gmail.com'),(5,'SA','Empresa 1','RUC','2010101010','Calle Empresa 001','955555555','empresa1@empresa.com'),(6,'SAC','Empresa 2','RUC','2030303030','Calle Empresa 002','944444444','empresa2@empresa.com'),(7,'Persona Juridica','Pjuridica1','RUC','2040404040','Calle Pjuridica001','93333333','pjuridica@empresa.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle_ingresos`
--

LOCK TABLES `detalle_ingresos` WRITE;
/*!40000 ALTER TABLE `detalle_ingresos` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle_ventas`
--

LOCK TABLES `detalle_ventas` WRITE;
/*!40000 ALTER TABLE `detalle_ventas` DISABLE KEYS */;
INSERT INTO `detalle_ventas` VALUES (1,3,2,90.00,10.00),(1,4,2,1840.00,460.00),(2,7,1,210.00,90.00),(2,9,1,560.00,240.00),(3,1,2,180.00,20.00),(3,3,1,90.00,10.00),(4,1,3,180.00,20.00),(4,12,2,36.00,24.00),(5,20,4,3.00,7.00),(5,21,2,7.50,17.50),(6,4,1,1840.00,460.00),(7,7,1,210.00,90.00),(7,8,1,140.00,60.00),(8,13,3,25.00,25.00),(8,14,2,45.00,45.00),(8,15,2,15.00,15.00),(9,2,3,117.00,13.00),(9,3,2,90.00,10.00);
/*!40000 ALTER TABLE `detalle_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ingresos`
--

LOCK TABLES `ingresos` WRITE;
/*!40000 ALTER TABLE `ingresos` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Gerente de Tienda','El gerente de tienda supervisa todas las operaciones diarias, gestiona al personal, establece metas de ventas, coordina el inventario y garantiza que la tienda funcione de manera eficiente. También se encarga de crear estrategias para mejorar las ventas y la satisfacción del cliente.',1),(2,'Asociado de Ventas','Los asociados de ventas interactúan directamente con los clientes. Ayudan a los clientes a encontrar productos, responden preguntas, procesan transacciones de compra y ofrecen asesoramiento sobre productos. La amabilidad y la capacidad para trabajar en un entorno de ritmo rápido son habilidades clave.',1),(3,'Cajero/a','Los cajeros procesan las transacciones de compra, manejan pagos en efectivo y tarjeta, y proporcionan recibos a los clientes. La precisión en el manejo del dinero y la atención al cliente son fundamentales en este rol.',1),(4,'Encargado/a de Almacén o Stock','Este rol se encarga de gestionar el inventario, recibir mercancía, organizar el stock en el almacén y reponer los productos en la tienda. Mantener un inventario preciso y garantizar que los productos estén disponibles para los clientes son responsabilidades clave.',1),(5,'Visual Merchandiser (Merchandising Visual)','Los visual merchandisers son responsables de crear exhibiciones atractivas en la tienda para destacar productos y atraer a los clientes. Estos profesionales comprenden la importancia de la presentación visual para estimular las ventas y mejorar la experiencia de compra.',1),(6,'Especialista en Servicio al Cliente','Los especialistas en servicio al cliente se centran en garantizar una experiencia positiva para los clientes. Ayudan a resolver problemas, manejan devoluciones y cambios, y ofrecen asistencia para garantizar la satisfacción del cliente.',1),(7,'Responsable de Marketing y Promociones','Este rol se encarga de planificar y ejecutar estrategias de marketing y promociones para aumentar la visibilidad de la tienda y atraer a nuevos clientes. También puede supervisar las campañas publicitarias y las actividades promocionales en la tienda.',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,'Gerente Carlos','RUC','Calle Principal 123','982934921','gerente_carlos@empresa.com',_binary 'gerentecarlos123',1),(2,2,'Asociado Ventas Juan','RUC','Calle Asociado 123','978027124','asociado_ventas_juan@empresa.com',_binary 'asociadoventasjuan123',1),(3,2,'Asociado Ventas Pedro','RUC','Calle Asociado 789','986236789','asociado_ventas_pedro@empresa.com',_binary 'asociadoventaspedro123',1),(4,3,'Cajero Lucas','DNI','Calle Cajero 123','98636123','cajero_lucas@empresa.com',_binary 'cajerolucas123',1),(5,3,'Cajera Maria','DNI','Calle Cajero 789','987567890','cajero_maria@empresa.com',_binary 'cajeromaria123',1),(6,3,'Cajero Luis','DNI','Calle Cajero 456','908766654','cajero_luis@empresa.com',_binary 'cajeroluis123',1),(7,4,'Almacen Angel','DNI','Calle Almacen 123','964223123','almacenangel@empresa.com',_binary 'almacenangel123',1),(8,4,'Almacen Piero','DNI','Calle Almacen 789','980087456','almacen_piero@empresa.com',_binary 'almacenpiero123',1),(9,5,'Visual Melia','RUC','Calle Visual 123','976556777','visual_melia@empresa.com',_binary 'visualmelia123',1),(10,6,'Servicio Cliente Michael','DNI','Calle Servicio Cliente 123','980966789','servicio_cliente_michael@empresa.com',_binary 'servicioclientemichael123',1),(11,6,'Servicio Cliente Paul','DNI','Calle Servicio Cliente 789','980007555','servicio_cliente_paul@empresa.com',_binary 'servicioclientepaul123',1),(12,7,'Marketing Luana','DNI','Calle Marketing 123','987654328','marketing_luana@empresa.com',_binary 'marketingluana123',1),(13,7,'Marketing Jhon','DNI','Calle Marketing 789','961123423','marketing_jhon@empresa.com',_binary 'marketingjhon123',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,4,'Boleta','V-0001','N-00001','2023-12-06 04:01:50',694.80,3860.00,'Pagado'),(2,2,5,'Boleta','V-0002','N-00002','2023-12-06 04:01:50',138.60,770.00,'Pagado'),(3,3,6,'Boleta','V-0003','N-00003','2023-12-06 04:01:56',81.00,450.00,'Pagado'),(4,4,4,'Boleta','V-0004','N-00004','2023-12-06 04:01:56',110.16,612.00,'Pagado'),(5,1,5,'Boleta','V-0005','N-00005','2023-12-06 04:01:56',4.86,27.00,'Pagado'),(6,2,6,'Boleta','V-0006','N-00006','2023-12-06 04:01:56',331.20,1840.00,'Pagado'),(7,3,4,'Boleta','V-0007','N-00007','2023-12-06 12:05:47',63.00,350.00,'Pagado'),(8,4,5,'Boleta','V-0008','N-00008','2023-12-06 12:05:47',35.10,195.00,'Pagado'),(9,1,6,'Boleta','V-0009','N-00009','2023-12-06 12:05:47',95.58,531.00,'Pagado');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06  7:10:28
