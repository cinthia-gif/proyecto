-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2018 a las 17:24:22
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nariths_learn`
--
CREATE DATABASE IF NOT EXISTS `nariths_learn` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `nariths_learn`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_admin`
--

CREATE TABLE `table_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `table_admin`
--

INSERT INTO `table_admin` (`admin_id`, `admin_name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '767e955464233667bfd855686a55b352');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_category`
--

CREATE TABLE `table_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `category_image` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `category_order` int(11) NOT NULL,
  `top_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `table_category`
--

INSERT INTO `table_category` (`category_id`, `category_name`, `category_image`, `category_order`, `top_category_id`) VALUES
(9, 'Bootstrap', '', 3, 9),
(10, 'Introduccion a la Programacion', '', 1, 11),
(11, 'Elementos de Programacion', '', 2, 11),
(12, 'Redes de computadoras', '', 1, 10),
(13, 'Redes de computadoras avanzadas', '', 2, 10),
(14, 'Taller de Sistemas Operativos', '', 1, 12),
(15, 'Aplicacion de sistemas Operativos', '', 2, 12),
(20, 'HTML5', '2018-11-21_10-30-3483185363.png', 1, 9),
(21, 'CSS3', '2018-11-21_10-32-0286785565', 2, 9),
(22, 'c#', '2018-11-23_09-30-0722123109.png', 1, 11),
(23, 'VB.Net', '2018-11-23_09-35-1284732646', 3, 11),
(24, 'Java', '2018-11-23_09-38-2577366742.png', 4, 11),
(25, 'Windows Server', '2018-11-23_09-39-5936531647.png', 1, 10),
(26, 'RedHat', '2018-11-23_09-41-1521318411.png', 2, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_lecture`
--

CREATE TABLE `table_lecture` (
  `lecture_id` int(11) NOT NULL,
  `lecture_content` longtext COLLATE utf8_spanish_ci NOT NULL,
  `lecture_order` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `table_lecture`
--

INSERT INTO `table_lecture` (`lecture_id`, `lecture_content`, `lecture_order`, `sub_category_id`) VALUES
(5, '<h2>What is HTML?</h2>\r\n\r\n<p>HTML is the standard markup language for creating Web pages.</p>\r\n\r\n<ul>\r\n	<li>HTML stands for Hyper Text Markup Language</li>\r\n	<li>HTML describes the structure of Web pages using markup</li>\r\n	<li>HTML elements are the building blocks of HTML pages</li>\r\n	<li>HTML elements are represented by tags</li>\r\n	<li>HTML tags label pieces of content such as &quot;heading&quot;, &quot;paragraph&quot;, &quot;table&quot;, and so on</li>\r\n	<li>Browsers do not display the HTML tags, but use them to render the content of the page</li>\r\n</ul>\r\n\r\n<h3>Example Explained</h3>\r\n\r\n<ul>\r\n	<li>The&nbsp;<code>&lt;!DOCTYPE html&gt;</code>&nbsp;declaration defines this document to be HTML5</li>\r\n	<li>The&nbsp;<code>&lt;html&gt;</code>&nbsp;element is the root element of an HTML page</li>\r\n	<li>The&nbsp;<code>&lt;head&gt;</code>&nbsp;element contains meta information about the document</li>\r\n	<li>The&nbsp;<code>&lt;title&gt;</code>&nbsp;element specifies a title for the document</li>\r\n	<li>The&nbsp;<code>&lt;body&gt;</code>&nbsp;element contains the visible page content</li>\r\n	<li>The&nbsp;<code>&lt;h1&gt;</code>&nbsp;element defines a large heading</li>\r\n	<li>The&nbsp;<code>&lt;p&gt;</code>&nbsp;element defines a paragraph</li>\r\n</ul>\r\n\r\n<h2>HTML Tags</h2>\r\n\r\n<p>HTML tags are element names surrounded by angle brackets:</p>\r\n\r\n<p>&lt;tagname&gt;content goes here...&lt;/tagname&gt;</p>\r\n\r\n<ul>\r\n	<li>HTML tags normally come&nbsp;<strong>in pairs</strong>&nbsp;like&nbsp;<code>&lt;p&gt;</code>&nbsp;and&nbsp;<code>&lt;/p&gt;</code></li>\r\n	<li>The first tag in a pair is the&nbsp;<strong>start tag,</strong>&nbsp;the second tag is the&nbsp;<strong>end tag</strong></li>\r\n	<li>The end tag is written like the start tag, but with a&nbsp;<strong>forward slash</strong>&nbsp;inserted before the tag name</li>\r\n</ul>\r\n\r\n<p><strong>Tip:</strong>&nbsp;The start tag is also called the&nbsp;<strong>opening tag</strong>, and the end tag the&nbsp;<strong>closing tag</strong>.</p>\r\n\r\n<h2>Web Browsers</h2>\r\n\r\n<p>The purpose of a web browser (Chrome, IE, Firefox, Safari) is to read HTML documents and display them.</p>\r\n\r\n<p>The browser does not display the HTML tags, but uses them to determine how to display the document:</p>\r\n\r\n<p><img alt=\"\" src=\"/presentacionEVA/admin/kcfinder/upload/images/img_chrome.png\" style=\"height:361px; width:635px\" /></p>', 3, 26),
(6, '<h2>Write HTML Using Notepad or TextEdit</h2>\r\n\r\n<p>Web pages can be created and modified by using professional HTML editors.</p>\r\n\r\n<p>However, for learning HTML we recommend a simple text editor like Notepad (PC) or TextEdit (Mac).</p>\r\n\r\n<p>We believe using a simple text editor is a good way to learn HTML.</p>\r\n\r\n<p>Follow the four steps below to create your first web page with Notepad or TextEdit.</p>\r\n\r\n<hr />\r\n<h2>Step 1: Open Notepad (PC)</h2>\r\n\r\n<p><strong>Windows 8 or later:</strong></p>\r\n\r\n<p>Open the&nbsp;<strong>Start Screen</strong>&nbsp;(the window symbol at the bottom left on your screen). Type&nbsp;<strong>Notepad</strong>.</p>\r\n\r\n<p><strong>Windows 7 or earlier:</strong></p>\r\n\r\n<p>Open&nbsp;<strong>Start</strong>&nbsp;&gt;<strong>&nbsp;Programs &gt;</strong>&nbsp;<strong>Accessories &gt;</strong>&nbsp;<strong>Notepad</strong></p>\r\n\r\n<hr />\r\n<h2>Step 1: Open TextEdit (Mac)</h2>\r\n\r\n<p>Open&nbsp;<strong>Finder &gt; Applications &gt; TextEdit</strong></p>\r\n\r\n<p>Also change some preferences to get the application to save files correctly.&nbsp;In&nbsp;<strong>Preferences &gt; Format &gt;&nbsp;</strong>choose<strong>&nbsp;&quot;Plain Text&quot;</strong></p>\r\n\r\n<p>Then under &quot;Open and Save&quot;, check the box that says &quot;Display HTML files as HTML code instead of formatted text&quot;.</p>\r\n\r\n<p><strong>Then open a new document to place the code.</strong></p>\r\n\r\n<h2>Step 2: Write Some HTML</h2>\r\n\r\n<p>Write or copy some HTML into Notepad.</p>\r\n\r\n<h2>Step 3: Save the HTML Page</h2>\r\n\r\n<p>Save the file on your computer. Select&nbsp;<strong>File &gt; Save as</strong>&nbsp;in the Notepad menu.</p>\r\n\r\n<p>Name the file&nbsp;<strong>&quot;index.htm&quot;</strong>&nbsp;and set the encoding to&nbsp;<strong>UTF-8</strong>&nbsp;(which is the preferred encoding for HTML files).</p>\r\n\r\n<h2>Step 4: View the HTML Page in Your Browser</h2>\r\n\r\n<p>Open the saved HTML file in your favorite browser (double click on the file, or right-click - and choose &quot;Open with&quot;).</p>\r\n\r\n<p>The result will look much like this</p>', 2, 30),
(7, '<h1>HTML&nbsp;Basic Examples</h1>\r\n\r\n<p>Don&#39;t worry if these examples use tags you have not learned.</p>\r\n\r\n<p>You will learn about them in the next chapters.</p>\r\n\r\n<hr />\r\n<h2>HTML Documents</h2>\r\n\r\n<p>All HTML documents must start with a document type declaration:&nbsp;.</p>\r\n\r\n<p>The HTML document itself begins with&nbsp;</p>\r\n\r\n<p>&nbsp;and ends with&nbsp;.</p>\r\n\r\n<p>The visible part of the HTML document is between&nbsp;</p>\r\n\r\n<p>&nbsp;and&nbsp;.</p>', 3, 33),
(8, '<h2>Nested HTML Elements</h2>\r\n\r\n<p>HTML elements can be nested (elements can contain elements).</p>\r\n\r\n<p>All HTML documents consist of nested HTML elements.</p>\r\n\r\n<p>This example contains four HTML elements:</p>', 4, 34),
(9, '<h2>HTML Attributes</h2>\r\n\r\n<ul>\r\n	<li>All HTML elements can have&nbsp;<strong>attributes</strong></li>\r\n	<li>Attributes provide&nbsp;<strong>additional information</strong>&nbsp;about an element</li>\r\n	<li>Attributes are always specified in&nbsp;<strong>the start tag</strong></li>\r\n	<li>Attributes usually come in name/value pairs like:&nbsp;<strong>name=&quot;value&quot;</strong></li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>The href Attribute</h2>\r\n\r\n<p>HTML links are defined with the&nbsp;<code>&lt;a&gt;</code>&nbsp;tag. The link address is specified in the&nbsp;<code>href</code>&nbsp;attribute:</p>', 5, 35),
(10, '<h2>CSS Border Properties</h2>\r\n\r\n<p>The CSS&nbsp;<code>border</code>&nbsp;properties allow you to specify the style, width, and color of an element&#39;s border.</p>\r\n\r\n<p>I have borders on all sides.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I have a red bottom border.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I have rounded borders.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I have a blue left border.</p>\r\n\r\n<hr />\r\n<h2>Border Style</h2>\r\n\r\n<p>The&nbsp;<code>border-style</code>&nbsp;property specifies what kind of border to display.</p>\r\n\r\n<p>The following values are allowed:</p>\r\n\r\n<ul>\r\n	<li><code>dotted</code>&nbsp;- Defines a dotted border</li>\r\n	<li><code>dashed</code>&nbsp;- Defines a dashed border</li>\r\n	<li><code>solid</code>&nbsp;- Defines a solid border</li>\r\n	<li><code>double</code>&nbsp;- Defines a double border</li>\r\n	<li><code>groove</code>&nbsp;- Defines a 3D grooved border. The effect depends on the border-color value</li>\r\n	<li><code>ridge</code>&nbsp;- Defines a 3D ridged border. The effect depends on the border-color value</li>\r\n	<li><code>inset</code>&nbsp;- Defines a 3D inset border. The effect depends on the border-color value</li>\r\n	<li><code>outset</code>&nbsp;- Defines a 3D outset border. The effect depends on the border-color value</li>\r\n	<li><code>none</code>&nbsp;- Defines no border</li>\r\n	<li><code>hidden</code>&nbsp;- Defines a hidden border</li>\r\n</ul>\r\n\r\n<p>The&nbsp;<code>border-style</code>&nbsp;property can have from one to four values (for the top border, right border, bottom border, and the left border).</p>', 5, 38),
(11, '<p>The CSS background properties are used to define the background effects for elements.</p>\r\n\r\n<p>CSS background properties:</p>\r\n\r\n<ul>\r\n	<li>background-color</li>\r\n	<li>background-image</li>\r\n	<li>background-repeat</li>\r\n	<li>background-attachment</li>\r\n	<li>background-position</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>Background Color</h2>\r\n\r\n<p>The&nbsp;<code>background-color</code>&nbsp;property specifies the background color of an element.</p>\r\n\r\n<p>The background color of a page is set like this:</p>', 4, 37),
(12, '<h2>CSS Syntax</h2>\r\n\r\n<p>A CSS rule-set consists of a selector and a declaration block:</p>\r\n\r\n<p><img alt=\"CSS selector\" src=\"https://www.w3schools.com/css/selector.gif\" /></p>\r\n\r\n<p>The selector points to the HTML element you want to style.</p>\r\n\r\n<p>The declaration block contains one or more declarations separated by semicolons.</p>\r\n\r\n<p>Each declaration includes a CSS property name and a value, separated by a colon.</p>\r\n\r\n<p>A CSS declaration always ends with a semicolon, and declaration blocks are surrounded by curly braces.</p>\r\n\r\n<p>In the following example all &lt;p&gt; elements will be center-aligned, with a red text color:</p>', 3, 36),
(13, '<h2>CSS Syntax</h2>\r\n\r\n<p>A CSS rule-set consists of a selector and a declaration block:</p>\r\n\r\n<p><img alt=\"CSS selector\" src=\"https://www.w3schools.com/css/selector.gif\" /></p>\r\n\r\n<p>The selector points to the HTML element you want to style.</p>\r\n\r\n<p>The declaration block contains one or more declarations separated by semicolons.</p>\r\n\r\n<p>Each declaration includes a CSS property name and a value, separated by a colon.</p>\r\n\r\n<p>A CSS declaration always ends with a semicolon, and declaration blocks are surrounded by curly braces.</p>\r\n\r\n<p>In the following example all &lt;p&gt; elements will be center-aligned, with a red text color</p>', 2, 32),
(14, '<h2>What is CSS?</h2>\r\n\r\n<ul>\r\n	<li><strong>CSS</strong>&nbsp;stands for&nbsp;<strong>C</strong>ascading&nbsp;<strong>S</strong>tyle&nbsp;<strong>S</strong>heets</li>\r\n	<li>CSS describes&nbsp;<strong>how HTML elements are to be displayed on screen, paper, or in other media</strong></li>\r\n	<li>CSS&nbsp;<strong>saves a lot of work</strong>. It can control the layout of multiple web pages all at once</li>\r\n	<li>External stylesheets are stored in&nbsp;<strong>CSS files</strong></li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>CSS Demo - One HTML Page - Multiple Styles!</h2>\r\n\r\n<p>Here we will show one HTML page displayed with four different stylesheets. Click on the &quot;Stylesheet 1&quot;, &quot;Stylesheet 2&quot;, &quot;Stylesheet 3&quot;, &quot;Stylesheet 4&quot; links below to see the different styles:</p>', 1, 31),
(15, '<p>kjd&ntilde;alsd</p>', 1, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_sub_category`
--

CREATE TABLE `table_sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `sub_category_order` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `table_sub_category`
--

INSERT INTO `table_sub_category` (`sub_category_id`, `sub_category_name`, `sub_category_order`, `category_id`) VALUES
(20, '1.Introduccion a html', 1, 7),
(21, '2. Estructura de HTML', 2, 7),
(22, '1. Una introduccion a la programacion.', 1, 10),
(23, '2. Variables de entorno', 2, 10),
(24, '1. Historia de las redes', 1, 12),
(25, '2. El modelo osi y sus 7 capas', 2, 12),
(26, 'Lecture 1: Introduction to HTML5', 1, 20),
(27, 'Lecture 2: HTML Paragraph', 2, 20),
(28, 'Lecture 2: HTML Paragraph', 2, 20),
(29, 'Lecture 2: HTML Paragraph', 2, 20),
(30, 'Lecture 2: HTML Paragraph', 2, 20),
(31, 'Lecture 1: Introduction to CSS3', 1, 21),
(32, 'Lecture 2: How to write CSS Styles Sheet', 2, 21),
(33, 'Lecture 3: HTML Editors', 3, 20),
(34, 'Lecture 4: HTML Basic Examples', 4, 20),
(35, 'Lecture 5: HTML Elements', 5, 20),
(36, 'Lecture 3: CSS Syntax and Selectors', 3, 21),
(37, 'Lecture 4: CSS Backgrounds', 4, 21),
(38, 'Lecture 5: CSS Borders', 5, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_top_category`
--

CREATE TABLE `table_top_category` (
  `top_category_id` int(11) NOT NULL,
  `top_category_name` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `top_category_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `table_top_category`
--

INSERT INTO `table_top_category` (`top_category_id`, `top_category_name`, `top_category_order`) VALUES
(9, 'Desarrollo WEB', 1),
(10, 'Redes y Telecomunicaciones', 2),
(11, 'Programacion', 3),
(12, 'Linux y Administracion', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_user`
--

CREATE TABLE `table_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `confirm_email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `table_user`
--

INSERT INTO `table_user` (`user_id`, `user_name`, `email`, `confirm_email`, `password`) VALUES
(4, 'jaimito', 'alcones@gmail.com', '20816884', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `table_admin`
--
ALTER TABLE `table_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indices de la tabla `table_category`
--
ALTER TABLE `table_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indices de la tabla `table_lecture`
--
ALTER TABLE `table_lecture`
  ADD PRIMARY KEY (`lecture_id`);

--
-- Indices de la tabla `table_sub_category`
--
ALTER TABLE `table_sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indices de la tabla `table_top_category`
--
ALTER TABLE `table_top_category`
  ADD PRIMARY KEY (`top_category_id`);

--
-- Indices de la tabla `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `table_admin`
--
ALTER TABLE `table_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `table_category`
--
ALTER TABLE `table_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `table_lecture`
--
ALTER TABLE `table_lecture`
  MODIFY `lecture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `table_sub_category`
--
ALTER TABLE `table_sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `table_top_category`
--
ALTER TABLE `table_top_category`
  MODIFY `top_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `table_user`
--
ALTER TABLE `table_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
