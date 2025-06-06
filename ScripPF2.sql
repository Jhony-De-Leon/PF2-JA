USE [master]
GO
/****** Object:  Database [PROYECTOF2]    Script Date: 30/05/2025 22:00:38 ******/
CREATE DATABASE [PROYECTOF2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PROYECTOF2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\PROYECTOF2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PROYECTOF2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\PROYECTOF2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PROYECTOF2] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PROYECTOF2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PROYECTOF2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PROYECTOF2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PROYECTOF2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PROYECTOF2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PROYECTOF2] SET ARITHABORT OFF 
GO
ALTER DATABASE [PROYECTOF2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PROYECTOF2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PROYECTOF2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PROYECTOF2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PROYECTOF2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PROYECTOF2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PROYECTOF2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PROYECTOF2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PROYECTOF2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PROYECTOF2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PROYECTOF2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PROYECTOF2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PROYECTOF2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PROYECTOF2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PROYECTOF2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PROYECTOF2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PROYECTOF2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PROYECTOF2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PROYECTOF2] SET  MULTI_USER 
GO
ALTER DATABASE [PROYECTOF2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PROYECTOF2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PROYECTOF2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PROYECTOF2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PROYECTOF2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PROYECTOF2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PROYECTOF2] SET QUERY_STORE = ON
GO
ALTER DATABASE [PROYECTOF2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PROYECTOF2]
GO
/****** Object:  Table [dbo].[AnunciosPublicidad]    Script Date: 30/05/2025 22:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnunciosPublicidad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[Tema] [nvarchar](max) NULL,
	[Anuncio] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultasFinal]    Script Date: 30/05/2025 22:00:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultasFinal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Consulta] [nvarchar](max) NOT NULL,
	[Respuesta] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AnunciosPublicidad] ON 

INSERT [dbo].[AnunciosPublicidad] ([Id], [Fecha], [Tema], [Anuncio]) VALUES (1, CAST(N'2025-05-29T23:45:41.630' AS DateTime), N'Cafetera inteligente que se controla por app', N'¡Despierta tu mañana con un toque de innovación!

Presentamos la Cafetera Inteligente que se controla por App!

Imagina poder disfrutar de tu bebida favorita, siempre lista y a tu gusto, sin esfuerzo alguno. Con solo un toque en tu pantalla, la cafetera smart se activa y se configura a tu medida.

¡Descubre los beneficios!

Programa tus horarios de café perfectos y despierta con la energía necesaria para empezar el día.
Ajusta la intensidad y el sabor de tu café según tu gusto y preferencias.
Recibe notificaciones y consejos de mantenimiento para asegurarte de que tu cafetera siempre esté en perfectas condiciones.

¡Y listo! Haz que tus mañanas sean aún más especiales con nuestra Cafetera Inteligente.

¡Descarga la app y prueba la revolución del café inteligente!

¡Comienza tu nuevo ritmo de vida con la Cafetera Inteligente, hoy mismo!')
INSERT [dbo].[AnunciosPublicidad] ([Id], [Fecha], [Tema], [Anuncio]) VALUES (2, CAST(N'2025-05-29T23:50:25.770' AS DateTime), N'Realiza un spot publicitario para un partido de futbol de la tercera divisón entre el Deportivo Municipal Catocha y Jalpatagua F.C., estos dos equipos son rivales del mismo departamento que es Jutiapa y buscan llegar a la final del campeonato. No especifiques elementos graficos solo requiero el texto', N'¡La rivalidad que revive la pasión!

"¡Este es el partido que Jutiapa tenía que vivir! Deportivo Municipal Catocha enfrenta a su archirrival, el Jalpatagua F.C., en la lucha por la gloria y el pase a la final del campeonato. Dos equipos, un mismo departamento, una sola meta: la victoria.

La tensión es palpable, el orgullo está en juego. ¿Quién se llevará la gloria? ¿Quién será el dueño del derbi? ¡No te pierdas este partido de fuego!

Ven y vive la emoción, el drama, la rivalidad que revive la pasión. ¡Esto es el fútbol de verdad!

Deportivo Municipal Catocha vs Jalpatagua F.C. ¡El partido que Jutiapa estaba esperando!"')
INSERT [dbo].[AnunciosPublicidad] ([Id], [Fecha], [Tema], [Anuncio]) VALUES (3, CAST(N'2025-05-30T13:20:56.227' AS DateTime), N'Quiero un anuncio para una panadería artesanal que quiere promocionar pan recién horneado en las mañanas', N'¡Descubre el secreto de las mañanas más deliciosas! Despertar con el aroma irresistible de pan recién horneado es vivir!

En [Nombre de la panadería], nos levantamos antes que el sol para hornear lo mejor de la mañana: pan fresco, crujiente y lleno de amor.

¡Imagina mordisquear un croissant caliente, sentir el peso del pan integral recién salido del horno, o disfrutar de una rebanada de pan de molde recién horneado con pasión!

¡No te pierdas la oportunidad de empezar el día de manera ideal! Visita nuestra panadería artesanal esta mañana y descubre el sabor auténtico de nuestro pan recién horneado.

**Abierto desde las 7:00 am**

¡Vamos a hacer que tu mañana sea irresistible!

[Nombre de la panadería]
Dirección: [Dirección de la panadería]
Horario: 7:00 am - 7:00 pm

¡Hasta mañana!')
SET IDENTITY_INSERT [dbo].[AnunciosPublicidad] OFF
GO
SET IDENTITY_INSERT [dbo].[ConsultasFinal] ON 

INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (1, CAST(N'2025-05-29T10:42:44.773' AS DateTime), N'Crea un anuncio publcitario para una panaderia ubicada en el centro del municipio, el texto debe ser para un spot de 20 segundos', N'Aquí te dejo un texto para un spot publicitario de 20 segundos para una panadería ubicada en el centro del municipio:

(Tono acogedor y aromático)

[Voz suave]: "¿Sabes qué es lo que hace que un día sea perfecto? Un aroma delicioso que te envuelve y te hace sentir en casa. ¡En el corazón del municipio, encontramos la respuesta!

[Imagen de la fachada de la panadería iluminada y animada]

[Voz suave]: "Panadería El Centro, donde el arte de hacer pan se encuentra con la pasión por compartir momentos especiales con los seres queridos. Descubre nuestros panes recién horneados, cruasan y pastas frescas, hechas con amor y dedicación.

[Imagen de un panaderista amasando la masa, sonriendo]

[Voz suave]: "Nuestros panaderos trabajan día a día para ofrecerte la mejor calidad y variedad. ¡Visítanos y descubre por qué somos el lugar preferido por los locales!

[Imagen de la tienda, llena de gente sonriendo y consumiendo productos]

[Voz suave]: "Panadería El Centro. ¡El sabor del corazón del municipio!"

[Cierre con el logotipo de la panadería y la dirección]

Este anuncio busca transmitir un clima acogedor y tentador, resaltando la calidad de los productos y la atención al cliente, invitando a la audiencia a visitar la panadería y disfrutar de sus deliciosas ofertas.')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (2, CAST(N'2025-05-29T10:47:00.303' AS DateTime), N'Realiza un anuncio publicitario para una panaderia', N'**¡Despierta tus sentidos con nosotros!**

[Imagen de una deliciosa variedad de panes y pastelería recién horneada]

¿Te has preguntado qué hace que un día sea perfecto? La respuesta es simple: un delicioso pan recién horneado en nuestra panadería.

En [Nombre de la panadería], nos apasiona crear panes y pastelería que te hagan sentir como en casa. Nuestros panes artesanales son elaborados con amor, utilizando solo los ingredientes más frescos y de alta calidad para asegurarnos de que cada mordisco sea una experiencia única.

**Nuestras especialidades:**

* Panes crujientes con mantequilla derretida
* Baguettes frescas y crujientes
* Pan de centeno integral con frutas secas
* Deliciosas empanadas de carne o queso
* Tortas y pastelería para cualquier ocasión

**¡Visítanos y descubre la diferencia!**

* Abierto de lunes a sábado de 8am a 7pm
* Domingos de 9am a 2pm
* Ubicación: [Dirección de la panadería]

**¡Sigue nuestras redes sociales para obtener promociones y descubrir nuestras novedades!**

Facebook: @LaPanaderíaDelBarrio
Instagram: @LaPanaderíaDelBarrio

**¡Y no te olvides de pedir tu pan favorito a domicilio o para llevar!**

Llámanos al [Número de teléfono] y nuestro equipo estará encantado de ayudarte.

**¡Disfruta de la vida con un buen pan!**')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (3, CAST(N'2025-05-29T11:13:32.530' AS DateTime), N'Crea un texto sencillo para un spot de 20 segundos sobre una Tienda que vende productos de primera necesidad, solo haz el texto no agregues especificaciones', N'"¡Encuentra todo lo que necesitas en un solo lugar! Desde alimentos frescos hasta artículos para el hogar, tenemos todo para ti. ¡Visítanos hoy y descubre las mejores ofertas para ti y tu familia!"')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (4, CAST(N'2025-05-29T11:14:49.587' AS DateTime), N'Crea un texto sencillo para un spot de 20 segundos sobre una Tienda que se llama Las 3 rosas ubicada en barrio el condor y que vende productos de primera necesidad, solo haz el texto no agregues especificaciones', N'"Descubre la Tienda Las 3 Rosas, en el corazón del barrio El Condor. Encuentra todo lo que necesitas para tu hogar. ¡Viva cerca, compra cerca!"')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (5, CAST(N'2025-05-29T11:20:05.750' AS DateTime), N'Crea un texto sencillo para un spot  sobre una Tienda que se llama Las 3 rosas ubicada en barrio el condor Jutiapa y que vende productos de primera necesidad abajo precio, solo haz el texto no agregues especificaciones', N'"¡Encuentra todo lo que necesitas en un solo lugar! Las 3 Rosas, ubicada en el corazón del barrio El Condor, Jutiapa. Los mejores precios para ti y tu familia. ¡Venga y descubre la diferencia!"')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (6, CAST(N'2025-05-29T12:35:50.557' AS DateTime), N'Realiza un spot publicitario para un partido de futbol de la tercera divisón entre el Deportivo Municipal Catocha y Jalpatagua F.C., estos dos equipos son rivales del mismo departamento que es Jutiapa y buscan llegar a la final del campeonato.', N'[Imagen de una vista aérea del estadio municipal de Catocha, lleno de gente emocionada]

Narrador (voz grave y emocionada: ¡Este es el partido que todos han estado esperando! La rivalidad más intensa del departamento de Jutiapa se renueva en el estadio municipal de Catocha!

[Imagen de los jugadores del Deportivo Municipal Catocha entrenando, con el logotipo del equipo en la pantalla]

Narrador: El Deportivo Municipal Catocha, liderado por el experimentado entrenador Juan Pérez, buscará aprovechar su ventaja de local para aupar a su afición y llevarse los tres puntos.

[Imagen de los jugadores del Jalpatagua F.C. entrenando, con el logotipo del equipo en la pantalla]

Narrador: Pero el Jalpatagua F.C. no llega de vacilón. Con una plantillajuvenil y ambiciosa, dirigidos por el entrenador novato pero con gran futuro, Carlos Hernández, buscarán sorprender al rival y cumplir su objetivo de llegar a la final del campeonato.

[Imagen de una panorámica del Deportivo Municipal Catocha, con los jugadores emocionados y concentrados en el vestuario]

Narrador: Esto no es solo un partido más. Esto es la rivalidad más intensa del departamento de Jutiapa. La pasión, la furia, la determinación y el espíritu de lucha estarán presentes en cada jugada.

[Imagen de una panorámica del Jalpatagua F.C., con los jugadores celebrando un gol]

Narrador: ¿Quién será el que se llevará los tres puntos y se acercará un paso más a la final del campeonato? ¡No te pierdas este partido emocionante entre el Deportivo Municipal Catocha y el Jalpatagua F.C.!

[Imagen de la fecha y hora del partido, con el estadio municipal de Catocha en el fondo]

Narrador: ¡Sábado 15 de abril, 3:00 pm, en el estadio municipal de Catocha. ¡No te pierdas la batalla por la supremacía en Jutiapa!

[Imagen del logotipo del Deportivo Municipal Catocha y Jalpatagua F.C., con el lema "Rivalidad sin límites"]

Narrador: ¡Rivalidad sin límites! ¡Viva Jutiapa!

[Imagen final del estadio municipal de Catocha, lleno de gente emocionada, con la bandera del Deportivo Municipal Catocha y la bandera de Jalpatagua F.C. ondeando en el aire]

Narrador: ¡No te pierdas este partido! ¡Estadio municipal de Catocha, sábado 15 de abril, 3:00 pm!')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (7, CAST(N'2025-05-29T12:45:40.667' AS DateTime), N'Realiza un spot publicitario para un partido de futbol de la tercera divisón entre el Deportivo Municipal Catocha y Jalpatagua F.C., estos dos equipos son rivales del mismo departamento que es Jutiapa y buscan llegar a la final del campeonato. No especifiques elementos graficos solo requiero el texto', N'¡VIVA JUTIAPA!

La rivalidad más intensa del departamento llega al estadio! ¡El Deportivo Municipal Catocha enfrenta al Jalpatagua F.C. en un duelo a vida o muerte por la clasificación a la final del campeonato de tercera división?

¡Los "Municipales" buscan vengar la derrota de la jornada pasada y demostrar porque son la primera opción para llevar el título!

Por otro lado, los "Jalpataguenses" confían en la furia de su hinchada y la experiencia de sus jugadores para doblegar al rival y seguir soñando con la gloria.

¡No te pierdas este partido de alta tensión! ¡La pasión y el orgullo de Jutiapa están en juego!

¡Vamos a ver quién es el verdadero amo del fútbol Jutiapense!

¡Fecha y hora del partido: [insertar fecha y hora]!

¡No faltes al estadio! ¡La emoción y la adrenalina están garantizadas!

¡VIVA JUTIAPA!')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (8, CAST(N'2025-05-29T12:50:19.997' AS DateTime), N'Realiza un spot publicitario para un partido de futbol de la tercera divisón entre el Deportivo Municipal Catocha y Jalpatagua F.C., estos dos equipos son rivales del mismo departamento que es Jutiapa y buscan llegar a la final del campeonato. no especifique elementos graficos solo dame el texto', N'¡El departamento de Jutiapa se viste de gala!

¡El clásico departamental tiene fecha y hora! El Deportivo Municipal Catocha, líder del grupo, receberá al Jalpatagua F.C., segundo clasificado, en un partido que promete ser de alta intensidad y pasión. Ambos equipos buscan mantener sus opciones de llegar a la final del campeonato.

¡No te pierdas la oportunidad de ver a los dos mejores equipos del departamento en acción! ¡El Deportivo Municipal Catocha, con su experiencia y solidez, se enfrenta al Jalpatagua F.C., con su velocidad y juventud! ¡Será un duelo de titanes!

¿Quién saldrá victorioso? ¿Quién dará el paso hacia la final? ¡ElEstadio Municipal de Catocha será testigo de un partido épicoy emocionante! ¡No te lo pierdas!

¡Fecha y hora: [Insertar fecha y hora]!
¡Lugar: Estadio Municipal de Catocha!
¡ Entradas: [Insertar precio y puntos de venta]!

¡Viva el fútbol de Jutiapa! ¡Viva el Deportivo Municipal Catocha! ¡Viva el Jalpatagua F.C.!')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (9, CAST(N'2025-05-29T13:10:25.730' AS DateTime), N'Realiaz un spot publicitario para una tienda de barrio, ubicada en el Barrio el Condor Jutiapa que vende productos de primera necesidad a precios accesibles', N'[Título]
"Tu Tienda de Confianza, El Condor Jutiapa"

[Imagen]
Una calle colorida del Barrio El Condor Jutiapa, con viviendas humildes y personas caminando hacia la tienda.

[Escena 1]
Una madre trabajadora, con un bebé en brazos, entrando a la tienda con una sonrisa de alivio.

[Voz en off]
"En el Barrio El Condor Jutiapa necesitamos apoyo y confianza en nuestras compras diarias. Por eso, tenemos la suerte de contar con nuestra tienda de barrio, donde encontramos lo que necesitamos a precios que nos permiten ahorrar".

[Escena 2]
La cámara muestra las estanterías llenas de productos de primera necesidad: arroz, frijoles, verduras, carne fresca, productos lácteos, etc.

[Voz en off]
"Desde los alimentos básicos hasta los productos de limpieza y aseo personal, encontramos todo lo que necesitamos para nuestras familias".

[Escena 3]
Un hombre de la tercera edad, sonriendo al salir de la tienda con una bolsa llena de compras.

[Voz en off]
"Y lo mejor de todo, es que podemos confiar en la calidad de nuestros productos y en los precios accesibles que nos permiten ahorrar para nuestras necesidades más importantes".

[Escena 4]
La cámara se acerca a la dueña de la tienda, sonriendo y atendiendo a los clientes.

[Voz en off]
"En nuestra tienda de barrio, encontramos más que solo productos, encontramos la atención personalizada y el trato amistoso que nos hace sentir como en casa".

[Escena 5]
Una familia entera, sonriendo y riendo mientras hacen sus compras en la tienda.

[Voz en off]
"Visite nuestra tienda de barrio y descubra por qué somos la opción número uno en El Condor Jutiapa. ¡Viva nuestra comunidad!"

[Cierre]
La cámara se acerca a la tienda, con la dirección y el horario de atención en la pantalla.

[TAGLINE]
"Tu Tienda de Confianza, El Condor Jutiapa"

[ Audio]
Música alegre y acogedora que resalta la confianza y la comunidad.

Este spot publicitario busca mostrar la importancia de la tienda de barrio en la comunidad de El Condor Jutiapa, destacando la variedad de productos de primera necesidad a precios accesibles y la atención personalizada que se brinda a los clientes. Al mismo tiempo, se busca generar un sentimiento de pertenencia y orgullo en la comunidad al mostrarse como una opción confiable y cercana.')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (10, CAST(N'2025-05-29T13:22:31.110' AS DateTime), N'Realiza un spot publicitario sobre una ferreteria ubicada en la calzada julio way del progreso jutiapa, ofrece productos de buena calidad a precios accesibles, no ejemplifique los posibles graficos solo dame el texto con informacion sobre el negocio', N'¡Claro! Aquí te dejo el texto para el spot publicitario:

**Título:** "La Ferretería de Confianza en el Progreso, Jutiapa**

**Texto:**

"En la Calzada Julio Way del Progreso, Jutiapa, encontramos la ferretería que combina calidad y precio justo. En [Nombre de la Ferretería], nos esforzamos por ofrecer a nuestros clientes productos de alta calidad para satisfacer todas sus necesidades de ferretería, construcción y reparación.

Nuestro compromiso es brindar a nuestros clientes la mejor experiencia de compra, con una amplia variedad de productos para satisfacer todas sus necesidades. Desde herramientas y materiales para la construcción, hasta accesorios y decorativos para el hogar, encontrará todo lo que necesita en un solo lugar.

Y lo mejor? ¡Nuestros productos son accesibles a todos! No creemos que la calidad deba costar un armaro, por eso ofrecemos precios competitivos sin renunciar a la calidad y el servicio. En [Nombre de la Ferretería] sabemos que cada proyecto es importante, y queremos ser parte de él.

Visítenos en la Calzada Julio Way del Progreso, Jutiapa, y descubre por qué somos la ferretería de confianza en la región. ¡No te pierdas la oportunidad de encontrar lo que necesitas y disfrutar de la mejor experiencia de compra!"

Espero que te guste!')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (11, CAST(N'2025-05-29T13:28:57.257' AS DateTime), N'Realiza un spot publicitario para un partido de futbol de la tercera divisón entre el Deportivo Municipal Catocha y Jalpatagua F.C., estos dos equipos son rivales del mismo departamento que es Jutiapa y buscan llegar a la final del campeonato, las entradas costaran 100 adultos niños 50', N'[Intro con música emocionante]

Narrador: "¡La rivalidad más intensa del departamento de Jutiapa está lista para explotar! ¡El Deportivo Municipal Catocha se enfrenta al Jalpatagua F.C. en un partido que decidirá quién avanza hacia la gloria en la tercera división!"

[Imágenes de jugadores de ambos equipos entrenando y en action, con fondos de la ciudad de Jutiapa]

Narrador: "Estos dos rivales de la zona tienen una cuenta pendiente. Ambos quieren llevarse la victoria y acercarse a la final del campeonato."

[Imágenes de aficionados de ambos equipos, con banderas y camisetas, cantando y animando a sus equipos]

Narrador: "Y tú, ¿estás listo para formar parte de esta batalla? ¡No te pierdas el partido más emocionante del año en Jutiapa!"

[Imágenes del estadio, con la vista de la ciudad de fondo]

Narrador: "El partido se jugará en el estadio [nombre del estadio], el próximo [fecha del partido] a las [hora del partido]. No te quedes atrás y compra tus entradas ya!"

[Imágenes de las entradas, con fondo de los equipos]

Narrador: "Adultos, 100 quetzales. Niños, 50 quetzales. ¡Un precio accesible para que toda la familia pueda disfrutar del fútbol de alta calidad!"

[Imágenes finales del partido, con los jugadores de ambos equipos enfrentándose, y el lema "¡La Gloria Está en Jutiapa!"]

Narrador: "¡El Deportivo Municipal Catocha vs Jalpatagua F.C.! ¡La rivalidad que hace temblar a Jutiapa! ¡No te pierdas este partido histórico! ¡Compra tus entradas ya!"

[Cierre con la música y el logo de los dos equipos]

Narrador: "Deportivo Municipal Catocha y Jalpatagua F.C.! ¡Jutiapa se mueve por el fútbol!"

[Fin del spot]')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (12, CAST(N'2025-05-29T13:31:16.857' AS DateTime), N'Realiza un spot publicitario para un partido de futbol de la tercera divisón entre el Deportivo Municipal Catocha y Jalpatagua F.C., estos dos equipos son rivales del mismo departamento que es Jutiapa y buscan llegar a la final del campeonato. dame un texto sin agregar nada mas', N'"El departamento de Jutiapa se paraliza este fin de semana cuando dos rivales de toda la vida se enfrentan en el camino a la gloria. El Deportivo Municipal Catocha, con su tradicional garra y pasión, busca dar un paso más hacia la final del campeonato a su tierra. Pero Jalpatagua F.C. no piensa dejarlo hacer fácil, con su velocidad y habilidad en el campo, buscarán dar el golpe de gracia a sus vecinos y avanzar en la competencia. La rivalidad entre estos dos equipos es única, la tensión es palpable y el duelo promete ser épico. ¿Quién se llevará la victoria y un paso más hacia la gloria? ¡Acompañenos este fin de semana en el Estadio Municipal de Catocha y sea parte de la historia! "')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (13, CAST(N'2025-05-29T13:33:59.723' AS DateTime), N'Realiza un spot publicitario para un partido de futbol de la tercera divisón entre el Deportivo Municipal Catocha y Jalpatagua F.C., estos dos equipos son rivales del mismo departamento que es Jutiapa y buscan llegar a la final del campeonato. dame un texto sin agregar nada mas', N'"El duelo de la dignidad, el partido de la rivalidad más intensa del departamento.

Deportivo Municipal Catocha, el orgullo de la Cuenca del río Grande, busca mantener su liderazgo en la tabla de clasificación y demostrar porque es el favorito para llegar a la final del campeonato.

Por otro lado, Jalpatagua F.C., el equipo de la serranía, viene con ánimo de revancha y con la determinación de sorprender a sus rivales y llevarse los tres puntos de regreso a su cancha.

La pasión y la rivalidad entre estos dos equipos rivales del mismo departamento, es algo que se respira en cada choque. No te pierdas este partido, donde la intensidad y la entrega de los jugadores prometen un espectáculo de alta voltaje.

Fecha: [inserta la fecha]
Hora: [inserta la hora]
Lugar: [inserta el lugar]

¡Viva el fútbol! ¡Viva Jutiapa!"')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (14, CAST(N'2025-05-29T13:36:10.813' AS DateTime), N'Realiza un spot publicitario para un partido de futbol de la tercera divisón entre el Deportivo Municipal Catocha y Jalpatagua F.C., estos dos equipos son rivales del mismo departamento que es Jutiapa y buscan llegar a la final del campeonato. dame un texto sin agregar nada mas', N'"¡La rivalidad departamental se vuelve a encender!

 Este sábado, el Estadio Municipal de Catocha será el escenario del partido más esperado del campeonato. El Deportivo Municipal Catocha, líder del grupo, recibirá la visita del Jalpatagua F.C., segundo clasificado y eterno rival del departamento de Jutiapa.

 Dos equipos con un mismo objetivo, llegar a la final del campeonato de tercera división, pero solo uno podrá lograrlo. La emoción y la pasión de los hinchas estarán al máximo, ya que esta rivalidad va más allá del fútbol. Es una cuestión de orgullo departamental.

 No te pierdas este duelo de titanes. ¡Apoya a tu equipo y haz que suene fuerte! El Deportivo Municipal Catocha vs Jalpatagua F.C., sábado a las 3 pm en el Estadio Municipal de Catocha. ¡Vamos a llenar el estadio!)"')
INSERT [dbo].[ConsultasFinal] ([Id], [Fecha], [Consulta], [Respuesta]) VALUES (15, CAST(N'2025-05-29T22:41:35.507' AS DateTime), N'Realiza un spot publicitario para una venta de calzado, solo dame el texto sin especificaciones graficas', N'"DESCUBRE EL SECRETO DE LOS PASOS PERFECTOS

¿Sabes qué es lo que hace que un outfit sea completo? Un par de zapatos que te hagan sentir confiado, cómodo y auténtico.

En [Nombre de la tienda], encontramos la mejor selección de calzado para hombres y mujeres que buscan hacer una declaración de moda. Desde botas de moda hasta zapatillas deportivas, pasando por sandalias y zapatos de vestir, nuestra colección tiene algo para todos.

No te pierdas nuestras promociones y ofertas especiales. ¡Visita [Nombre de la tienda] hoy mismo y descubre el secreto de los pasos perfectos!

"¡EL PASO CORRECTO ES EL QUE TE LLEVA A DONDE QUIERES ESTAR!""')
SET IDENTITY_INSERT [dbo].[ConsultasFinal] OFF
GO
ALTER TABLE [dbo].[ConsultasFinal] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
USE [master]
GO
ALTER DATABASE [PROYECTOF2] SET  READ_WRITE 
GO
