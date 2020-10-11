-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 09 Eki 2020, 21:33:36
-- Sunucu sürümü: 10.3.22-MariaDB
-- PHP Sürümü: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `baykushafizatekn_baykus`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `site_title` char(70) COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_meta` char(160) COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` char(160) COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_mail` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_mail_sifre` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_mail_host` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_mail_port` char(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `firma_telefon` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `firma_telefon1` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `firma_telefon2` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `whatsapp` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `firma_fax` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `firma_email` varchar(40) COLLATE utf8_turkish_ci DEFAULT NULL,
  `firma_adres` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `google_maps` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `instagram` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `twitter` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `gplus` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `pinterest` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `firma_adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `renk` varchar(55) COLLATE utf8_turkish_ci DEFAULT NULL,
  `copyright` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `footer_adres` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `logo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `footer_logo` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `site_title`, `site_meta`, `site_description`, `banner_resim`, `site_mail`, `site_mail_sifre`, `site_mail_host`, `site_mail_port`, `google_analytics`, `firma_telefon`, `firma_telefon1`, `firma_telefon2`, `whatsapp`, `firma_fax`, `firma_email`, `firma_adres`, `google_maps`, `facebook`, `instagram`, `twitter`, `gplus`, `linkedin`, `pinterest`, `firma_adi`, `renk`, `copyright`, `footer_adres`, `logo`, `footer_logo`) VALUES
(1, 'Baykuş Hafıza Teknikleri', 'Baykuş Hafıza Teknikleri', 'Baykuş Hafıza Teknikleri', NULL, '#', '#', '#', '#', '#', '0552 686 4493', '0850 473 1058', '0850 473 1058', '0552 686 4493', '0850 473 1058', 'baykushafizateknikleri@gmail.com', 'Koza Mah. Atatürk Bulv. Dumankaya Modern Vadi A6 Blok No:20K Daire:17 Esenyurt / İSTANBUL', '                  	                  	                  	                  	                  	                  	                  	                  	                  	                  	                  	                  	                  	                  	                  	                  	 \r\n                   \r\n                   \r\n                   \r\n                   \r\n                   \r\n                   \r\n                   \r\n                   \r\n                   \r\n                   \r\n                   \r\n                   \r\n                   \r\n                   \r\n                   \r\n                  ', 'https://facebook.com/baykushizliokuma', 'https://instagram.com/baykusegitim', 'https://www.youtube.com/channel/UCnW1xBUjNjAwhCOn7JA9m7Q', '#', '#', '#', 'Baykuş Hafıza Teknikleri', '#', '#', '#', '5046-logo.jpg', '8614-footerlogo.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

CREATE TABLE `duyurular` (
  `id` int(11) NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `sira` int(11) NOT NULL,
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `adi_en` text COLLATE utf8_turkish_ci NOT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci NOT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci NOT NULL,
  `tarih` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ulke` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `ulke_en` text COLLATE utf8_turkish_ci NOT NULL,
  `ulke_fr` text COLLATE utf8_turkish_ci NOT NULL,
  `ulke_ar` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `duyurular`
--

INSERT INTO `duyurular` (`id`, `adi`, `sira`, `aciklama`, `resim`, `durum`, `adi_en`, `adi_fr`, `adi_ar`, `aciklama_en`, `aciklama_fr`, `aciklama_ar`, `tarih`, `ulke`, `ulke_en`, `ulke_fr`, `ulke_ar`) VALUES
(82, '60 M3 Beton Santrali Yüklemesi', 1, '', '39_Beton-Santrali-Yuklemesi.jpg', 1, '60 M3 Concrete Plant Loading', '60 m3 de béton Installation de l\'usine', '60 M3 تركيب محطة الخرسانة', '', '', '', '2016', 'Cezayir', 'Algeria', 'Algérie', 'الجزائر'),
(10, '120 M3 Beton Santrali Yüklemesi', 2, '', '4152_120-M3-Beton-Santrali.jpg', 1, '120 M3 Concrete Plant Loading', '120 m3 de béton Installation de l\'usine', '120 M3 تركيب محطة الخرسانة', '', '', '', '2008', 'Cezayir', 'Algeria', 'Algérie', 'الجزائر');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ebulten`
--

CREATE TABLE `ebulten` (
  `id` int(11) NOT NULL,
  `mail` text COLLATE utf8_turkish_ci NOT NULL,
  `tarih` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fotograf_galeri`
--

CREATE TABLE `fotograf_galeri` (
  `id` int(11) NOT NULL,
  `kategori` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` int(11) DEFAULT NULL,
  `resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_de` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `fotograf_galeri`
--

INSERT INTO `fotograf_galeri` (`id`, `kategori`, `adi`, `sira`, `resim`, `durum`, `adi_en`, `adi_fr`, `adi_ar`, `adi_ru`, `adi_de`, `linki`, `banner_resim`, `linki_en`, `linki_fr`, `linki_ar`, `linki_ru`, `linki_de`) VALUES
(31, NULL, 'Mekanik Salmastralar', 1, '954-.jpg', 0, NULL, NULL, NULL, NULL, NULL, '', 'resim-yok', NULL, NULL, NULL, NULL, NULL),
(32, NULL, 'Kartuş Salmastralar', 2, '138-.jpg', 0, NULL, NULL, NULL, NULL, NULL, '', 'resim-yok', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fotograf_galeri_kategori`
--

CREATE TABLE `fotograf_galeri_kategori` (
  `id` int(11) NOT NULL,
  `kategori_adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_title` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` int(11) DEFAULT NULL,
  `kategori_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_linki` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_linki_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_linki_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_linki_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_linki_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_linki_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `ustid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `fotograf_galeri_kategori`
--

INSERT INTO `fotograf_galeri_kategori` (`id`, `kategori_adi`, `seo`, `site_title`, `site_description`, `sira`, `kategori_resim`, `durum`, `banner_resim`, `kategori_adi_en`, `kategori_adi_fr`, `kategori_adi_ar`, `kategori_adi_ru`, `kategori_adi_de`, `kategori_linki`, `kategori_linki_en`, `kategori_linki_fr`, `kategori_linki_ar`, `kategori_linki_ru`, `kategori_linki_de`, `ustid`) VALUES
(22, 'asd', 'asd', 'asd', 'asd', 0, '482-asd.jpg', 0, '3206-asd.jpg', '', '', '', '', 'asdasd', '', '', '', '', '', '', 0),
(23, 'asdasd', 'asdasd', '', '', 1, '991-asdasd.jpg', 0, NULL, '', '', '', '', '', '', '', '', '', '', '', 0),
(24, 'asdasd', 'asdasd', '', '', 1, '243-asdasd.jpg', 0, 'resim-yok', '', '', '', '', '', '', '', '', '', '', '', 0),
(25, 'asdasd', 'asdasd', '', '', 1, '599-asdasd.jpg', 0, '635-asdasd.jpg', 'asdasd', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`id`, `urun_id`, `resim`) VALUES
(1198, 469, '7092_asdad.PNG'),
(1197, 469, '9594_ronaldo.jpg'),
(1196, 26, '4172_ronaldo.jpg'),
(1199, 471, '8118_1e0e4.jpg'),
(1200, 471, '2069_pic1.jpg'),
(1201, 535, '776_941-referans.png'),
(1202, 535, '7018_ehliyet-sinavi.jpg'),
(1222, 547, '9093_images.jpg'),
(1205, 553, '2740_images.jpg'),
(1206, 553, '8227_Motorlu-Perde-4.jpg'),
(1207, 560, '1299_a.jpg'),
(1208, 560, '6466_images.jpg'),
(1209, 559, '5197_a.jpg'),
(1210, 559, '2945_images.jpg'),
(1211, 558, '3719_images.jpg'),
(1214, 557, '3394_p.jpg'),
(1213, 557, '1241_images.jpg'),
(1215, 556, '1708_a.jpg'),
(1216, 556, '6665_images.jpg'),
(1217, 555, '4545_a.jpg'),
(1218, 555, '1770_images.jpg'),
(1219, 554, '6576_kisbahcesi-perdesi5.jpg'),
(1220, 554, '922_kis-bahcesi-perdesi-1030x684.jpg'),
(1221, 547, '5731_r.jpg'),
(1227, 595, '5901_1.jpg'),
(1228, 595, '3473_2.jpg'),
(1229, 596, '3141_2.jpg'),
(1230, 596, '8691_22.jpg'),
(1231, 597, '1509_3.jpg'),
(1232, 597, '9804_33.jpg'),
(1233, 598, '7856_4.jpg'),
(1234, 598, '8417_44.jpg'),
(1235, 599, '4246_5.jpg'),
(1236, 599, '1988_55.jpg'),
(1237, 600, '8165_6.jpg'),
(1238, 600, '6524_66.jpg'),
(1239, 601, '847_7.jpg'),
(1240, 601, '2545_77.jpg'),
(1241, 602, '4818_8.jpg'),
(1242, 602, '8788_88.jpg'),
(1243, 603, '5706_9.jpg'),
(1244, 603, '3167_99.jpg'),
(1245, 604, '88_10.jpg'),
(1246, 604, '8166_1010.jpg'),
(1247, 605, '3681_11.jpg'),
(1248, 605, '6797_1111.jpg'),
(1249, 606, '5004_12.jpg'),
(1250, 606, '3372_1212.jpg'),
(1251, 607, '8281_13.jpg'),
(1252, 607, '9255_1313.jpg'),
(1253, 608, '3485_14.jpg'),
(1254, 608, '8773_1414.jpg'),
(1255, 609, '9067_15.jpg'),
(1256, 609, '1667_1515.jpg'),
(1257, 610, '3365_16.jpg'),
(1258, 610, '4575_1616.jpg'),
(1259, 611, '564_17.jpg'),
(1260, 611, '8904_1717.jpg'),
(1261, 612, '2331_18.jpg'),
(1262, 612, '2144_1818.jpg'),
(1263, 613, '3469_19.jpg'),
(1264, 613, '5698_1919.jpg'),
(1265, 614, '6217_20.jpg'),
(1266, 614, '614_2020.jpg'),
(1267, 615, '584_21.jpg'),
(1268, 615, '6369_2121.jpg'),
(1269, 616, '3067_2222.jpg'),
(1270, 616, '8138_22222.jpg'),
(1271, 617, '591_23.jpg'),
(1272, 617, '4252_2323.jpg'),
(1273, 618, '1641_24.jpg'),
(1274, 618, '3465_2424.jpg'),
(1275, 619, '710_25.jpg'),
(1276, 619, '7105_2525.jpg'),
(1277, 620, '2886_26.jpg'),
(1278, 620, '9072_2626.jpg'),
(1279, 621, '7990_27.jpg'),
(1280, 621, '3161_2727.jpg'),
(1281, 622, '2085_28.jpg'),
(1282, 622, '8313_2828.jpg'),
(1283, 623, '5235_29.jpg'),
(1284, 623, '2702_2929.jpg'),
(1285, 624, '3097_30.jpg'),
(1286, 624, '6238_3030.jpg'),
(1287, 625, '2741_31.jpg'),
(1288, 625, '8378_3131.jpg'),
(1289, 626, '5540_32.jpg'),
(1290, 626, '3271_3232.jpg'),
(1291, 627, '442_333.jpg'),
(1292, 627, '1640_3333.jpg'),
(1293, 628, '547_34.jpg'),
(1294, 628, '725_3434.jpg'),
(1295, 629, '2148_35.jpg'),
(1296, 629, '5922_3535.jpg'),
(1297, 630, '5550_36.jpg'),
(1298, 630, '4205_3636.jpg'),
(1299, 631, '454_37.jpg'),
(1300, 631, '5474_3737.jpg'),
(1301, 632, '7830_38.jpg'),
(1302, 632, '6904_3838.jpg'),
(1303, 633, '6235_39.jpg'),
(1304, 633, '7234_3939.jpg'),
(1305, 634, '1303_40.jpg'),
(1306, 634, '7133_4040.jpg'),
(1307, 635, '4297_41.jpg'),
(1308, 635, '6207_4141.jpg'),
(1309, 636, '1556_42.jpg'),
(1310, 636, '9091_4242.jpg'),
(1311, 637, '444_43.jpg'),
(1312, 637, '5523_4343.jpg'),
(1313, 638, '2318_444.jpg'),
(1314, 638, '3425_4444.jpg'),
(1315, 639, '5915_45.jpg'),
(1316, 639, '7769_4545.jpg'),
(1317, 640, '7590_46.jpg'),
(1318, 640, '3171_4646.jpg'),
(1319, 641, '1864_47.jpg'),
(1320, 641, '524_4747.jpg'),
(1321, 642, '2615_48.jpg'),
(1322, 642, '1572_4848.jpg'),
(1323, 643, '4228_49.jpg'),
(1324, 643, '5693_4949.jpg'),
(1325, 644, '3570_50.jpg'),
(1326, 644, '7460_5050.jpg'),
(1327, 645, '154_51.jpg'),
(1328, 645, '3735_5151.jpg'),
(1329, 646, '1312_52.jpg'),
(1330, 646, '5269_5252.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri_kat`
--

CREATE TABLE `galeri_kat` (
  `id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeri_kat`
--

INSERT INTO `galeri_kat` (`id`, `urun_id`, `resim`) VALUES
(57, 23, '6334_asdad.PNG'),
(56, 23, '8343_ronaldo.jpg'),
(55, 23, '1015_ronaldo.jpg'),
(54, 25, '4760_ronaldo.jpg'),
(49, 468, '6153_ronaldo.jpg'),
(50, 468, '2013_asdad.PNG'),
(51, 468, '9806_ay.jpg'),
(53, 25, '5367_asdad.PNG'),
(58, 28, '9064_02.jpg'),
(59, 28, '8341_01.jpg'),
(60, 28, '915_03.jpg'),
(61, 28, '2375_amkcocu.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri_pro`
--

CREATE TABLE `galeri_pro` (
  `id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeri_pro`
--

INSERT INTO `galeri_pro` (`id`, `urun_id`, `resim`) VALUES
(134, 23, '1481_asdad.PNG'),
(133, 23, '5809_ronaldo.jpg'),
(136, 36, '1691_aslii.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri_sayfa`
--

CREATE TABLE `galeri_sayfa` (
  `id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeri_sayfa`
--

INSERT INTO `galeri_sayfa` (`id`, `urun_id`, `resim`) VALUES
(134, 23, '1481_asdad.PNG'),
(133, 23, '5809_ronaldo.jpg'),
(135, 21, '917_ehliyet-sinavi.jpg'),
(136, 21, '5444_ehliyet-randevu-1024x537.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri_sube`
--

CREATE TABLE `galeri_sube` (
  `id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galeri_sube`
--

INSERT INTO `galeri_sube` (`id`, `urun_id`, `resim`) VALUES
(134, 23, '1481_asdad.PNG'),
(133, 23, '5809_ronaldo.jpg'),
(135, 21, '917_ehliyet-sinavi.jpg'),
(136, 21, '5444_ehliyet-randevu-1024x537.jpg'),
(138, 38, '2221_bb.jpg'),
(140, 37, '8397_omer.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE `haberler` (
  `id` int(11) NOT NULL,
  `kategori` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` int(11) DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_title` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`id`, `kategori`, `adi`, `sira`, `aciklama`, `resim`, `durum`, `adi_en`, `adi_fr`, `adi_ar`, `adi_ru`, `adi_de`, `seo`, `banner_resim`, `site_title`, `site_description`, `aciklama_en`, `aciklama_fr`, `aciklama_ar`, `aciklama_ru`, `aciklama_de`, `hit`) VALUES
(51, NULL, 'Hızlı Okuma Nasıl Olur? Faydası Varmıdır?', 1, '<div>\r\n	<p>\r\n		Hızlı okuma; bireylerin kısa zaman diliminde &ccedil;ok daha fazla kelime okumasıdır. Hızlı okuma demek sadece kelimelerin hızlı okunması değil aynı zamanda okunan metnin daha hızlı ve daha iyi anlaşılması demektir.<br />\r\n		<br />\r\n		Hızlı okuma alışkanlığı doğuştan var olan bir yetenek değildir. Sonradan bazı &ouml;zel teknik ve becerileri b&uuml;nyesinde bulunduran eğitimler sonrası kazanılır.<br />\r\n		<br />\r\n		Hızlı okuma alışkanlığına sahip olan bir birey yaptığı işe odaklanır. &Ccedil;&uuml;nk&uuml; hızlı okuma eğitim programa kapsamında g&ouml;z kaslarını hızlı &ccedil;alıştırma vardır.<br />\r\n		<br />\r\n		&bull; Hızlı kitap okuma teknikleri ile okuma hızı en az 2 kat artırılır.<br />\r\n		&bull; Anlayarak hızlı okuma teknikleri sayesinde sınavlarda ekstra zaman artırırsınız.<br />\r\n		&bull; Roman, hikaye, gazete, dergi ve raporları daha konsantre ve hızlı bir şekilde okursunuz.<br />\r\n		&bull; Hızlı okuma, okuma alışkanlıklarınızı disipline eder.<br />\r\n		&bull; Hızlı okuma, g&ouml;z egzersizleri ile g&ouml;rme keskinliğinizi artırır.<br />\r\n		&bull; Hızlı okuma kursları hafızanızı g&uuml;&ccedil;lendirerek okuduklarınızın kalıcı olmasını sağlar.<br />\r\n		&bull; Hızlı okuma, daha hızlı d&uuml;ş&uuml;nmenizi ve karar vermenizi sağlar.<br />\r\n		&bull; Hızlı okuma, kelimeleri tek tek değil gruplandırarak okumanızı sağlar.</p>\r\n	<p>\r\n		&nbsp;</p>\r\n	<p>\r\n		Baykuş Hızlı Okuma ve Anlama Programı ile okuma hızınızı kolayca 3 katına &ccedil;ıkartabilirsiniz. Baykuş Hızlı Okuma ve Anlama Programı ile g&uuml;nde 20 dakikanızı egzersizlere ayırarak ve haftada 4-5 g&uuml;n &ccedil;alışarak 2/3 haftada okuma hızınızı en az 2 kat arttırırsınız.</p>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '249-hizli-okuma-nasil-olur-faydasi-varmidir.png', 0, NULL, NULL, NULL, NULL, NULL, 'hizli-okuma-nasil-olur-faydasi-varmidir', 'resim-yok', '', 'Hızlı Okuma, Hızlı Okuma Faydaları', NULL, NULL, NULL, NULL, NULL, 0),
(52, NULL, 'Hafıza Teknikleri Geliştirmenin Faydaları', 2, '<p>\r\n	* Yaratıcı d&uuml;ş&uuml;nme g&uuml;c&uuml;nde g&ouml;zle g&ouml;r&uuml;l&uuml;r artış.<br />\r\n	* Beynin sağ ve sol loblarını dengede tutmayı &ouml;ğretir.<br />\r\n	* G&ouml;rd&uuml;ğ&uuml;n&uuml;z durum, olay veya nesneleri, duyduğunuz sesleri ve okuduğunuz bilgileri kolay kolay unutmazsınız.<br />\r\n	* Telefon numaralarını ve simaları akılda tutmak artık daha kolay olur.<br />\r\n	* Hafızanıza g&uuml;venmeyi &ouml;ğrenirsiniz.<br />\r\n	* Hafızanıza olan g&uuml;veninizle beraber kendinize olan &ouml;zg&uuml;veniniz de artar ve toplum karşısında konuşma yapmaktan &ccedil;ekinmezsiniz. Konuşmalarınızda kağıda bağımlı olmak derdinden kurtulursunuz.<br />\r\n	* &Ouml;ğrendiğiniz yeni kelimelerin anlamlarını ve yazım şekillerini unutmayacağınızdan aynı şeyi defalarca araştırmak zorunda kalmazsınız.<br />\r\n	* &Ouml;ğrenmeyle hafıza ve beyin arasındaki ilişkiyi kolaylıkla kavrayabilirsiniz.<br />\r\n	<br />\r\n	BAŞLICA HAFIZA TEKNİKLERİ:</p>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Bağlama (Hikayeleştime) Hafıza Tekniği</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Hafıza Sarayı Tekniği</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Loci (Oda) Hafıza Tekniği</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Akıl &Ccedil;ivileri Hafıza Tekniği</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Akrostiş Hafıza Tekniği</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Kanban Hafıza Tekniği</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Feynman Hafıza Tekniği</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					İsimleri-Y&uuml;zleri Hafızaya Alma</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Leitner Kutusu &Ouml;ğrenme Tekniği</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Pomodore Ders &Ccedil;alışma Tekniği</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Cornell Not Alma Tekniği</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Swiss Cheese Zaman Y&ouml;netimi Tekniği</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Ses Kaydı Tekrar Tekniği</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td nowrap=\"nowrap\">\r\n				<p>\r\n					Zeigarnik Etkisi; Tamamlanmamış Keşkelerin Zihin Muhasebesi</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Baykuş Hafıza Teknikleri Programı ile unutmaya son!</p>\r\n<p>\r\n	Baykuş Hafıza Teknikleri Programının İ&ccedil;eriğindeki;</p>\r\n<p>\r\n	14 farklı Kısa s&uuml;reli Bellek geliştirme egzersizleri;</p>\r\n<p>\r\n	12 Temel Hafızaya alma tekniği ile zihninizin g&uuml;c&uuml;n&uuml; yeniden keşfedeceksiniz.</p>\r\n<p>\r\n	* Daha az zamanda daha &ccedil;ok bilgiyi &ouml;ğrenip;</p>\r\n<p>\r\n	* Daha uzun s&uuml;rede hafızanızda tutup;</p>\r\n<p>\r\n	* Daha kolay hatırlayacaksınız!</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '424-hafiza-teknikleri-gelistirmenin-faydalari.png', 0, NULL, NULL, NULL, NULL, NULL, 'hafiza-teknikleri-gelistirmenin-faydalari', 'resim-yok', '', 'Hafıza Teknikleri Geliştirmenin Faydaları', NULL, NULL, NULL, NULL, NULL, 0),
(53, NULL, 'Zihin Haritaları Nedir, Ne İşe Yarar?', 3, '<p>\r\n	Zihin haritalama bireylerin ve kurumların &ouml;ğrenmelerini, verimliliklerini arttıran, yaratıcı ve etkili bir tekniktir. Fikirleri ve i&ccedil; g&ouml;r&uuml;leri kağıt &uuml;zerinde yakalamaya yarayan, devrimsel bir sistemdir.<br />\r\n	<br />\r\n	&bull; Beynin potansiyelini a&ccedil;ığa &ccedil;ıkarabilmek i&ccedil;in, evrensel anahtar sağlayan grafik tekniğidir.<br />\r\n	&bull; Beynin korteksinde bulunan t&uuml;m alanları tek bir y&ouml;ntemle devreye sokar.<br />\r\n	&bull; Beynin d&uuml;ş&uuml;nd&uuml;ğ&uuml; gibi &ouml;ğrenmeyi sağlayan &ccedil;alışma tekniğidir.<br />\r\n	&bull; Akılda tutulması gereken bilginin b&uuml;t&uuml;nl&uuml;ğ&uuml;n&uuml; sağlar.<br />\r\n	&bull; Detayların daha iyi g&ouml;r&uuml;lmesini sağlar.<br />\r\n	&bull; Beynin sağ ve sol tarafını bir arada kullanmayı sağlar.<br />\r\n	&bull; Kelimelerin resme d&ouml;n&uuml;şmesini sağladığından, bilginin s&uuml;rekli olarak hatırlanmasına yardımcı olur.<br />\r\n	&bull; D&uuml;ş&uuml;ncelerin kağıda d&ouml;k&uuml;ld&uuml;ğ&uuml; somut ve hızlı hatırlama tekniğidir.<br />\r\n	&bull; Tasarımı ve şekilleri kişiye ait olan bilgidir.<br />\r\n	<br />\r\n	&nbsp;</p>\r\n<p>\r\n	Zihin haritası nerelerde kullanılır?</p>\r\n<p>\r\n	Bu y&ouml;ntem sadece hızlı not alma tekniği değildir. Kullanım alanı olduk&ccedil;a geniştir. Bu alanların bazıları şunlardır;<br />\r\n	&bull;&nbsp;Hedef oluşturmak:&nbsp;Kişiler g&uuml;nl&uuml;k işlerini, planlamalarını ya da uzun vadeli hedeflerini belirlerken zihin haritasından faydalanabilir.<br />\r\n	&bull;&nbsp;Toplantı hazırlığı:&nbsp;Toplantıdan &ouml;nce &uuml;zerinde durulması gereken konular bu y&ouml;ntemle belirlenebilir ve toplantıda sunulabilir.<br />\r\n	&bull;&nbsp;Sunum hazırlığı: Kişiler sunum yapmayı pek sevmezler. Topluluk &ouml;n&uuml;nde konuşmaktan, konuşacaklarını unutmaktan, hata yapmaktan &ccedil;ekinirler. Zihin haritası sayesinde konuların belirlenmesi ve akılda kalıcı y&ouml;ntemler tespit edilmesi kolaydır.<br />\r\n	&bull;&nbsp;Raporlama: Bir konu hakkında rapor hazırlandığında, bu tekniği kullanabilirsiniz. Bu teknikle raporu daha iyi toparlayabilir, etkili bir rapor hazırlayabilirsiniz.</p>\r\n<p>\r\n	&bull;&nbsp;Birleştirme: Birbirine benzer olan şeyleri zihninizde bir araya getirerek, bir b&uuml;t&uuml;nl&uuml;k sağlayabilirsiniz.<br />\r\n	&bull;&nbsp;Not tutma:&nbsp;Bu zihin haritasının en fazla kullanıldığı alandır. Bununla kısa bir &ccedil;alışmayla bilgileri hatırlayabilirsiniz.<br />\r\n	&bull;&nbsp;Beyin fırtınaları:&nbsp;Bu yaratıcı d&uuml;ş&uuml;nmede, yeni fikirlerin oluşturulmasında olduk&ccedil;a etkilidir. Zihin haritasıyla birlikte kullanıldığında, daha g&uuml;&ccedil;l&uuml; hale gelir.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '778-zihin-haritalari-nedir-ne-ise-yarar.jpg', 0, NULL, NULL, NULL, NULL, NULL, 'zihin-haritalari-nedir-ne-ise-yarar', 'resim-yok', '', 'Zihin Haritaları Nedir, Ne İşe Yarar?', NULL, NULL, NULL, NULL, NULL, 0),
(54, NULL, 'Pratik Kısa Süreli Hafıza Geliştirme Çalışmaları Nelerdir?', 4, '<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Kısa s&uuml;reli hafıza, belli miktarda bilgiyi kısa s&uuml;reliğine muhafaza etmemize imk&acirc;n tanıyan bellek mekanizması olarak tanımlanabilir. Kısa s&uuml;reli hafıza &ccedil;abucak kaybolan işlenmiş bilgileri ge&ccedil;ici olarak tutar ya da onları uzun s&uuml;reli belleğe &ccedil;evirir. Kısa s&uuml;reli belleğin iki temel &ouml;zelliği vardır; sınırlı bir kapasite ve sonu olan bir devam s&uuml;resi</p>\r\n<p>\r\n	<strong>Baykuş Hafıza teknikleri Programındaki</strong> Kısa s&uuml;reli <strong>hafıza geliştirme</strong> ve <strong>dikkat arttırma</strong> egzersizleri; uzun s&uuml;reli belleğe erişmek i&ccedil;in bir giriş kapısı g&ouml;revi g&ouml;r&uuml;r. İlkokul 2.sınıftan itibaren heryaş gurubu &ouml;ğrenciler bu &ccedil;alışmaları hi&ccedil; sıkılmadan zevkle yapabilirler.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<ul>\r\n	<li>\r\n		Harf Takip &Ccedil;alışması</li>\r\n	<li>\r\n		Sayı Kodlama &Ccedil;alışması</li>\r\n	<li>\r\n		Sayı Takip &Ccedil;alışması</li>\r\n	<li>\r\n		Kutu Takip &Ccedil;alışması</li>\r\n	<li>\r\n		&Ccedil;ift el sağ-sol beyin etkinleştirme &ccedil;izim &ccedil;alışması</li>\r\n</ul>\r\n<ul>\r\n	<li>\r\n		Emoji Yakalama Oyunu</li>\r\n	<li>\r\n		Eşleştirme Oyunu</li>\r\n	<li>\r\n		B&ouml;lme Oyunu</li>\r\n	<li>\r\n		&Ccedil;ıkarma Oyunu</li>\r\n	<li>\r\n		Toplama Oyunu</li>\r\n</ul>\r\n<ul>\r\n	<li>\r\n		Kelimeleri Hafızalama &ccedil;alışması</li>\r\n	<li>\r\n		Atas&ouml;zlerini Hafızalama &ccedil;alışması</li>\r\n	<li>\r\n		Alışveriş Listem &ccedil;alışması</li>\r\n	<li>\r\n		Hafıza Tablosu &ccedil;alışması</li>\r\n</ul>\r\n', '676-pratik-kisa-sureli-hafiza-gelistirme-calismalari-nelerdir.png', 0, NULL, NULL, NULL, NULL, NULL, 'pratik-kisa-sureli-hafiza-gelistirme-calismalari-nelerdir', 'resim-yok', '', 'Pratik Kısa Süreli Hafıza Geliştirme Çalışmaları Nelerdir?', NULL, NULL, NULL, NULL, NULL, 0),
(55, NULL, 'LGS ve YKS Sınavlarına Hazırlanan Öğrenciler Hızlı Okuma ve Hafıza Teknikleri Eğitimini Neden Almalıdır?', 5, '<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; LGS ve YKS sınavlarına hazırlanan &ouml;ğrenciler i&ccedil;in Hızlı Okuma ve Hafıza Teknikleri eğitimlerini almak &ccedil;ok &ouml;nemlidir. Gerek LGS gerekse YKS sınavlarında okuduğumuz bir metnin ne kadarını anlayarak okuyabildiğimiz, bununla doğru orantılı olarak okuma s&uuml;remizde &ouml;nemlidir. <strong>Baykuş Hızlı Okuma ve Anlama Programındaki</strong> hızlı okuma eğitiminde algılama, konsantrasyon, anlama, hatırlama gibi &ouml;zelliklerin &uuml;st&uuml;nde durup kişinin daha iyi bir okuyucu olmasını sağlıyoruz. &Ccedil;ok hızlı okuyarak zamandan tasarruf etmek m&uuml;mk&uuml;n. Ancak, bununla beraber &ccedil;ok daha kısa zamanda, &ccedil;ok daha hızlı okunulan metinlerin hafızada tutulabilmesi de gerekmektedir.</p>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Hafıza teknikleri ile bireyler; g&uuml;nl&uuml;k hayatta ihtiya&ccedil; duyulacak bilgileri hatırlamayı kolaylaştırmak ve dikkati toplamak i&ccedil;in testler, objeler, hik&acirc;yeler gibi ara&ccedil;lar kullanılabilmektedir. Alıştırma egzersizleri, dikkat geliştirme teknikleri, g&ouml;rsel hafızayı geliştirme, yabancı kelimeleri akılda tutma gibi eğitimler ve &ccedil;ok daha fazlası ger&ccedil;ekleştirilebilmektedir. Bu anlattıklarımızın hepsi tek bir yerde toplandığını d&uuml;ş&uuml;n&uuml;rsek;&nbsp;<strong>Baykuş Hızlı Okuma Programı </strong>ile 3 haftada 3 kata kadar okuma hızınızı arttırabilir ve <strong>Baykuş Hafıza Teknikleri Programı</strong> ile kısa s&uuml;reli ve uzun s&uuml;reli belleğinizi g&uuml;&ccedil;lendirip unutmayı unutabilirsiniz.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '950-lgs-ve-yks-sinavlarina-hazirlanan-ogrenciler-hizli-okuma-ve-hafiza-teknikleri-egitimini-neden-almalidir.png', 0, NULL, NULL, NULL, NULL, NULL, 'lgs-ve-yks-sinavlarina-hazirlanan-ogrenciler-hizli-okuma-ve-hafiza-teknikleri-egitimini-neden-almalidir', 'resim-yok', '', 'LGS ve YKS Sınavlarında Hızlı Okuma ve Hafıza Teknikleri Eğitiminin Faydaları', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haber_kategori`
--

CREATE TABLE `haber_kategori` (
  `id` int(15) NOT NULL,
  `sira` int(15) NOT NULL,
  `kategori_adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `tarih` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_title` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `ustid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `haber_kategori`
--

INSERT INTO `haber_kategori` (`id`, `sira`, `kategori_adi`, `kategori_resim`, `durum`, `tarih`, `kategori_adi_en`, `kategori_adi_fr`, `kategori_adi_ar`, `kategori_adi_ru`, `kategori_adi_de`, `seo`, `banner_resim`, `site_title`, `site_description`, `aciklama`, `aciklama_en`, `aciklama_fr`, `aciklama_ar`, `aciklama_ru`, `aciklama_de`, `ustid`) VALUES
(270, 1, 'Haberler', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'haberler', 'resim-yok', '', '', '', NULL, NULL, NULL, NULL, NULL, 0),
(271, 2, 'Etkinlikler', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'etkinlikler', 'resim-yok', '', '', '', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizmetgaleri`
--

CREATE TABLE `hizmetgaleri` (
  `id` int(11) NOT NULL,
  `kategori` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `sira` int(11) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL,
  `adi_en` text COLLATE utf8_turkish_ci NOT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci NOT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci NOT NULL,
  `linki` text COLLATE utf8_turkish_ci NOT NULL,
  `linki_en` text COLLATE utf8_turkish_ci NOT NULL,
  `linki_fr` text COLLATE utf8_turkish_ci NOT NULL,
  `linki_ar` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hizmetgaleri`
--

INSERT INTO `hizmetgaleri` (`id`, `kategori`, `adi`, `sira`, `resim`, `durum`, `adi_en`, `adi_fr`, `adi_ar`, `linki`, `linki_en`, `linki_fr`, `linki_ar`) VALUES
(22, NULL, '', 0, 'lib/images/hizmetgaleri/k2.PNG', 0, '', '', '', '', '', '', ''),
(21, NULL, '', 0, 'lib/images/hizmetgaleri/s1.jpg', 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizmetler`
--

CREATE TABLE `hizmetler` (
  `id` int(11) NOT NULL,
  `kategori` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` int(11) DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `icon` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_title` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizmet_kategori`
--

CREATE TABLE `hizmet_kategori` (
  `id` int(15) NOT NULL,
  `sira` int(15) DEFAULT NULL,
  `kategori_adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `tarih` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_title` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `ustid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hizmet_kategori`
--

INSERT INTO `hizmet_kategori` (`id`, `sira`, `kategori_adi`, `kategori_resim`, `durum`, `tarih`, `kategori_adi_en`, `kategori_adi_fr`, `kategori_adi_ar`, `kategori_adi_ru`, `kategori_adi_de`, `seo`, `banner_resim`, `site_title`, `site_description`, `aciklama`, `aciklama_en`, `aciklama_fr`, `aciklama_ar`, `aciklama_ru`, `aciklama_de`, `ustid`) VALUES
(258, 2, 'Türkiyede Fuarlar', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'turkiyede-fuarlar', 'resim-yok', '', '', '', NULL, NULL, NULL, NULL, NULL, 0),
(257, 1, 'Dünyada Fuarlar', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'dunyada-fuarlar', 'resim-yok', '', '', '', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `idari_kadro`
--

CREATE TABLE `idari_kadro` (
  `id` int(11) NOT NULL,
  `sira` text COLLATE utf8_turkish_ci NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(2) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `unvan` text COLLATE utf8_turkish_ci NOT NULL,
  `twitter` text COLLATE utf8_turkish_ci NOT NULL,
  `facebook` text COLLATE utf8_turkish_ci NOT NULL,
  `mail` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisim`
--

CREATE TABLE `iletisim` (
  `id` int(11) NOT NULL,
  `ad` text COLLATE utf8_turkish_ci NOT NULL,
  `mail` text COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `tarih` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ip_adresi`
--

CREATE TABLE `ip_adresi` (
  `id` int(11) NOT NULL,
  `ip` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `urun_id` text NOT NULL,
  `zaman` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `ip_adresi`
--

INSERT INTO `ip_adresi` (`id`, `ip`, `urun_id`, `zaman`) VALUES
(505, '::1', '28', '13.12.2019'),
(506, '::1', '26', '13.12.2019'),
(507, '::1', '32', '13.12.2019'),
(508, '::1', '25', '13.12.2019'),
(509, '::1', '553', '10.01.2020'),
(510, '::1', '555', '15.01.2020'),
(511, '::1', '547', '15.01.2020'),
(512, '::1', '558', '15.01.2020'),
(513, '::1', '560', '15.01.2020'),
(514, '::1', '37', '21.01.2020');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `koseler`
--

CREATE TABLE `koseler` (
  `id` int(11) NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `sira` int(11) NOT NULL,
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `id` int(11) NOT NULL,
  `ad_soyad` text COLLATE utf8_turkish_ci NOT NULL,
  `firma_adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `firma_gorevi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sektoru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `eposta` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `uyelik_tarihi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `son_giris` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kurslar`
--

CREATE TABLE `kurslar` (
  `id` int(11) NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `sira` int(11) NOT NULL,
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `markalar`
--

CREATE TABLE `markalar` (
  `id` int(11) NOT NULL,
  `sira` text COLLATE utf8_turkish_ci NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(2) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `sira` text COLLATE utf8_turkish_ci NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(2) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `ustu` varchar(11) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `referanslar`
--

CREATE TABLE `referanslar` (
  `id` int(11) NOT NULL,
  `kategori` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` int(11) DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_en` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_fr` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_ar` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_ru` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_de` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `referans_kategori`
--

CREATE TABLE `referans_kategori` (
  `id` int(15) NOT NULL,
  `sira` int(15) DEFAULT NULL,
  `kategori_adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `tarih` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_title` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `ustid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `referans_kategori`
--

INSERT INTO `referans_kategori` (`id`, `sira`, `kategori_adi`, `kategori_resim`, `durum`, `tarih`, `kategori_adi_en`, `kategori_adi_fr`, `kategori_adi_ar`, `kategori_adi_ru`, `kategori_adi_de`, `seo`, `site_title`, `banner_resim`, `site_description`, `aciklama`, `aciklama_en`, `aciklama_fr`, `aciklama_ar`, `aciklama_ru`, `aciklama_de`, `ustid`) VALUES
(256, 1, 'wwww', '447-wwww.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'wwww', '', 'resim-yok', '', '<p>\r\n	asds</p>\r\n', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE `sayfalar` (
  `id` int(11) NOT NULL,
  `adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` int(11) DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_title` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `adi`, `sira`, `seo`, `banner_resim`, `site_title`, `site_description`, `aciklama`, `resim`, `durum`, `adi_en`, `adi_fr`, `adi_ar`, `adi_ru`, `adi_de`, `aciklama_en`, `aciklama_fr`, `aciklama_ar`, `aciklama_ru`, `aciklama_de`) VALUES
(21, 'Baykuş Hafıza Teknikleri', 1, 'baykus-hafiza-teknikleri', '67697-kurumsal.jpg', 'asd', 'Baykuş Hafıza Teknikleri', '<div style=\"text-align: justify;\">\r\n	<strong>Baykuş Eğitim Yazılımları:<span style=\"white-space: pre;\"> </span></strong></div>\r\n<div style=\"text-align: justify;\">\r\n	&nbsp;</div>\r\n<div style=\"text-align: justify;\">\r\n	&Ouml;ğrencilerin okul derslerine ve LGS ve YKS/TYT Sınavlarına hazırlanmalarında; &ouml;ğrenmelerini daha aktif, zevkli ve kalıcı hale getirmelerini ve &ouml;ğrencilerin hedeflerine en kolay y&ouml;nden ulaşmalarına y&ouml;nelik eğitim-&ouml;ğretim yazılımları yapar ve bu alanda &ccedil;ağın gerektirdiği dijital i&ccedil;erikler &uuml;retmek i&ccedil;in tamamı tecr&uuml;beli &ouml;ğretmenler tarafından deneyimlenmiş &ccedil;alışmaları &ouml;ğrencilerin hizmetine sunar.<span style=\"white-space:pre\"> </span></div>\r\n<div style=\"text-align: justify;\">\r\n	&nbsp;</div>\r\n<div style=\"text-align: justify;\">\r\n	&nbsp;</div>\r\n<div style=\"text-align: justify;\">\r\n	<strong>Baykuş Eğitim Yazılımları:<span style=\"white-space:pre\"> </span></strong></div>\r\n<div style=\"text-align: justify;\">\r\n	&nbsp;</div>\r\n<div style=\"text-align: justify;\">\r\n	Hızlı okuyan, Kitap okumayı seven;<span style=\"white-space:pre\"> </span></div>\r\n<div style=\"text-align: justify;\">\r\n	Okuduğunu anlayan ve Hafıza teknikleri ile &ouml;ğrendiklerini kolayca aklında tutabilen;<span style=\"white-space:pre\"> </span></div>\r\n<div style=\"text-align: justify;\">\r\n	Ders &ccedil;alışma ve not alma teknikleriyle derslerini sıkılmadan, zorlanmadan ve daha severek yapan;<span style=\"white-space:pre\"> </span></div>\r\n<div style=\"text-align: justify;\">\r\n	Farkındalık d&uuml;zeyi y&uuml;ksek;<span style=\"white-space:pre\"> </span></div>\r\n<div style=\"text-align: justify;\">\r\n	&Ccedil;alışma disiplini kazanmış;<span style=\"white-space:pre\"> </span></div>\r\n<div style=\"text-align: justify;\">\r\n	&Ouml;zg&uuml;ven ve Motivasyonu y&uuml;ksek &ouml;ğrenciler yetişmesinde hizmet etmeyi sorumluluk duyar.<span style=\"white-space:pre\"> </span></div>\r\n<div style=\"text-align: justify;\">\r\n	&nbsp;</div>\r\n<div style=\"text-align: justify;\">\r\n	Unutmayalım ki! &quot;Kendimi Tanıyorum, Neyi Nasıl &Ccedil;alışacağımı Biliyorum, Kontrol Bende!&quot; duygusu ulusal &ccedil;apta sınava hazırlanan bir &ouml;ğrenci i&ccedil;in en &ouml;nemli motivasyonlardan biridir. Hızlı okuyan ve ders &ccedil;alışma-hafızalama tekniklerini bilen &ouml;ğrenciler; Hedeflerine daha kısa s&uuml;rede ve daha az emek harcayarak bilin&ccedil;li bir şekilde kendilerini ger&ccedil;ekleştirerek ulaşır&quot;<span style=\"white-space: pre;\"> </span></div>\r\n<div style=\"text-align: justify;\">\r\n	&nbsp;</div>\r\n<div style=\"text-align: justify;\">\r\n	&nbsp;</div>\r\n<div style=\"text-align: justify;\">\r\n	<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 100%\">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<div>\r\n						<div style=\"text-align: left;\">\r\n							Hesap Adı<span style=\"white-space: pre;\"> </span><span style=\"white-space: pre;\"> : </span>Baykuş Eğitim Yazılımları Danışmanlık Ltd Şti<span style=\"white-space: pre;\"> </span></div>\r\n					</div>\r\n					<div style=\"text-align: left;\">\r\n						Banka İsmi : Halkbank Bah&ccedil;eşehir Şubesi<span style=\"white-space: pre;\"> </span></div>\r\n					<div style=\"text-align: left;\">\r\n						İBAN No :&nbsp;TR78 0001 2001 2720 0010 1008 99</div>\r\n					<div style=\"text-align: left;\">\r\n						Esenyurt V.D.<span style=\"white-space: pre;\"> : </span>Vergi No: 1551107199<span style=\"white-space: pre;\"> </span></div>\r\n				</td>\r\n				<td>\r\n					<p style=\"text-align: center;\">\r\n						<strong><span style=\"text-align: right;\">Yakup YİĞİT</span></strong></p>\r\n					<p style=\"text-align: center;\">\r\n						Rehber &Ouml;ğretmen &amp; Kişisel Gelişim Uzmanı<span style=\"text-align: right; white-space: pre;\"> </span></p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<div style=\"text-align: justify;\">\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div style=\"text-align: right;\">\r\n	&nbsp;</div>\r\n<div style=\"text-align: right;\">\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n', '839-baykus-hafiza-teknikleri.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'kullanici', 2, 'kullanici', 'resim-yok', '', '', '<p>\r\n	<span style=\"font-size:18px;\"><span style=\"color: rgb(28, 52, 62); font-family: Roboto, sans-serif; font-weight: 700;\">Mesafeli Satış S&ouml;zleşmesi:</span></span></p>\r\n<p>\r\n	Bu s&ouml;zleşme BAYKUŞ EĞİTİM YAZILIMLARI LTD. ŞTİ. (bundan sonra; Baykuş Hafıza Teknikleri Programı - http://www.baykushafizateknikleri.com eğitim sitesi olarak anılacaktır) ile s&ouml;zleşmeyi okuyup kabul linkini tıklayan kişi (bundan sonra KULLANICI olarak anılacaktır) arasında aşağıda detayları a&ccedil;ıklanan Online Uzaktan Eğitim Hizmeti i&ccedil;in imzalanmıştır.</p>\r\n<p>\r\n	<br />\r\n	Son KULLANICI bu hizmet s&ouml;zleşmesini okuyup kabul ettikten sonra bu &uuml;r&uuml;n kullanabilir ve/veya bu hizmetten yararlanabilir ve sadece bu anlaşmada ge&ccedil;en maddelerde belirtilmiş haklara sahiptir<br />\r\n	<br />\r\n	&Ouml;nemli! Bu hizmeti ilk defa kullanmadan &ouml;nce Hizmet S&ouml;zleşmesinin tamamını dikkatle okuyunuz. Son KULLANICI bu Hizmeti ilk kullanımından veya &ccedil;alıştırmasından itibaren burada ge&ccedil;en anlaşma koşullarından haberdar kabul edilir. Bu metni okuduğu, anladığı ve buradaki koşullarla bağlı olduğunu kabul etmiş sayılır. Bu h&uuml;k&uuml;mleri kabul etmemeniz halinde hizmetten yararlanamaz, izleyemez, dersleri takip edemez ve kullanamazsınız. Bu koşullar dışındaki kullanım halleri telif haklarının ihlali olarak nitelendirilecektir.<br />\r\n	<br />\r\n	Bu hizmetle ilgili t&uuml;m fikri ve sınai haklar Baykuş Hafıza Teknikleri Programı - http://www.baykushafizateknikleri.com eğitim sitesine ait olup, eserin izinsiz olarak kullanılması, &ccedil;oğaltılması, yayılması, satışa sunulması ve benzeri durumlarda ilgili kişi veya kişiler hakkında hukuki ve cezai yaptırımlara başvurulacaktır.<br />\r\n	<br />\r\n	<span style=\"color:#000000;\"><strong>KULLANICI Lisansı:</strong></span><br />\r\n	<br />\r\n	Baykuş Hafıza Teknikleri Programı - http://www.baykushafizateknikleri.com eğitim sitesinin i&ccedil;indeki sunumların, yazılımların, grafik KULLANICI arabirimlerinin, seslerin ve videoların son KULLANICI tarafından aşağıda belirtilen h&uuml;k&uuml;mlere uygun olarak kullanılmasını şart koşar:<br />\r\n	<br />\r\n	Lisans hakkı, son KULLANICI&rsquo; ya m&uuml;nhasıran eserin kullanma hakkı sağlamaktadır. &quot;Kullanım Hakkı&quot;, &uuml;r&uuml;n&uuml;n kullanılmasını, saklanmasını, y&uuml;klenmesini, &ccedil;alıştırılmasını ve g&ouml;r&uuml;nt&uuml;lenmesini satın alındığı s&uuml;rece i&ccedil;ermektedir. Lisans hakkı tanınan son KULLANICI eserde değişiklik yapamaz, eseri &ccedil;oğaltamaz, eseri yayamaz, başkalarının kullanımına sunamaz, eserden yararlanarak yeni bir eser oluşturamaz, eserin lisans ya da kontrol &ouml;zelliklerinden herhangi birini devre dışı bırakamaz.<br />\r\n	<br />\r\n	KULLANICI Hakları:<br />\r\n	<br />\r\n	Bu &uuml;r&uuml;n ister bireysel, ister kurumsal olarak satın alınmış olunsun, Baykuş Hafıza Teknikleri Programı - http://www.baykushafizateknikleri.com tarafından tek bir ger&ccedil;ek kişi &uuml;zerine kaydedilir ve sadece o kişi tarafından belirtilen s&uuml;re i&ccedil;inde kullanılabilir.<br />\r\n	<br />\r\n	&Uuml;r&uuml;n hakkında yeterli bilgiye ve sistem gereksinimlerine sahip olduğuna inanan KULLANICI, şifre ve KULLANICI adını almak &uuml;zere www.baykushafizateknikleri.com adresine giriş yapar. &Uuml;ye kaydını ger&ccedil;ekleştirir.<br />\r\n	<br />\r\n	Sisteme giriş yapan kullanıcı satın almak istediği eğitimi se&ccedil;er, y&ouml;nergeleri takip ederek &ouml;deme işlemini ger&ccedil;ekleştirir ve eğitimi satın alır. Son kullanıcı almış olduğu bu eğitimi belirtilen s&uuml;re i&ccedil;inde takip eder. Bu hizmeti başkalarının kullanımına a&ccedil;amaz, kiraya veremez.<br />\r\n	<br />\r\n	<br />\r\n	<span style=\"color:#000000;\"><strong>Kullanım Kısıtlamaları:</strong></span><br />\r\n	<br />\r\n	Sunumlar, g&ouml;rseller, metinler ve konuşmaların b&uuml;t&uuml;n telif hakları Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesine aittir. KULLANICI; sunumları, g&ouml;rselleri, metinleri ya da konuşmaları Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesinden izin almadan kullanamaz.<br />\r\n	<br />\r\n	&Uuml;r&uuml;n&uuml;n toplu halde izinsiz g&ouml;sterimleri veya kullanımı olduğu takdirde g&ouml;sterimi yapan organizasyon, şirket veya kurum; faaliyete katılan her bir kişi i&ccedil;in gerekli olan kullanım bedelini Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesine &ouml;demekle y&uuml;k&uuml;ml&uuml;d&uuml;r. S&ouml;z konusu şifre bilgilerini veren ya da paylaşan KULLANICI doğacak olan hukuki ve cezai m&uuml;eyyidelerden sorumludur.<br />\r\n	<br />\r\n	Bu eğitimlerde veya i&ccedil;inden alınmış g&ouml;rsel malzemeyi, sunumları, sesleri, videoları ve ilgili olabilecek her t&uuml;rl&uuml; medyayı aynı veya alıntılanmış şekilde herhangi bir medya seklinde &ccedil;oğaltmak, kopyalamak, yayınlamak ya da dağıtmak kesinlikle yasaktır.<br />\r\n	<br />\r\n	<span style=\"color:#000000;\"><strong>S&ouml;zleşmenin Kabul&uuml;:</strong></span><br />\r\n	<br />\r\n	www.baykushafizateknikleri.com &uuml;yesi olmak istiyorsanız, &ouml;nce &uuml;yelik formunu doldurmanız ve www.baykushafizateknikleri.com Eğitim S&ouml;zleşmesi h&uuml;k&uuml;mlerine uymayı kabul ve taahh&uuml;t etmeniz gereklidir. Kararınıza g&ouml;re kayıt formunun altında bulunan &quot;s&ouml;zleşmeyi okudum kabul ediyorum&quot; se&ccedil;eneğini onaylamanız ve &Uuml;ye ol butonuna basmanız kayıt işleminiz i&ccedil;in yeterlidir.<br />\r\n	<br />\r\n	<span style=\"color:#000000;\"><strong>S&ouml;zleşme Konusu:</strong></span><br />\r\n	<br />\r\n	Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com &rsquo;un s&ouml;zleşmeyi onaylayan &uuml;yeye internet &uuml;zerinden Hafıza Teknikleri Geliştirme Şekilleri, Kısa S&uuml;reli Bellek Geliştirme Egzersizleri, Temel Hafızaya Alma Modelleri ve Uygulamaları eğitimlerinin uzaktan eğitim şeklinde sağlamasıdır.<br />\r\n	<br />\r\n	<span style=\"color:#000000;\"><strong>S&ouml;zleşme Bedeli ve &Ouml;deme:</strong></span><br />\r\n	<br />\r\n	S&ouml;zleşme bedeli t&uuml;m vergiler dahil, Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesinde yazılı olarak belirtilen online eğitim programı &uuml;cretlidir. İnternet sahifesinde g&ouml;sterilen şekilde gerekli işlemin tam olarak yapılması şarttır. Bu konuda &uuml;ye tarafından yapılabilecek hatalar nedeni ile &uuml;yelikte ve &ouml;demede &ccedil;ıkabilecek aksaklıklardan www.baykushafizateknikleri.com sorumlu değildir.<br />\r\n	<br />\r\n	İnternet &uuml;zerinden kredi kartı ile yapılan &ouml;demelerin bedelleri &uuml;yenin kredi kartından otomatik olarak &ccedil;ekilir. &Ouml;deme işlemi onaylandıktan sonra hafıza teknikleri eğitimi kullanıma a&ccedil;ılır. &Uuml;ye İsterse Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesinin banka hesabına eğitim bedelini yatırarak da eğitimleri satın alabilir. Bu durumda eğitim &uuml;cretin hesaba ge&ccedil;mesinin ardından 24 saat i&ccedil;erisinde kullanıma a&ccedil;ılır. Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesi indirim veya artırım &uuml;cret uygulamasını d&ouml;neme g&ouml;re değiştirme hakkına sahiptir.&nbsp;Kullanıcı &uuml;yelerin satın aldıkları &uuml;r&uuml;n&uuml;n satış, teslim ve iadesi ile ilgili olarak 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanun ve Mesafeli S&ouml;zleşmeler Y&ouml;netmeliği (RG:27.11.2014/29188) h&uuml;k&uuml;mleri ile y&uuml;r&uuml;rl&uuml;kteki diğer yasalara tabidir. Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesi tarafından satılan t&uuml;m &uuml;r&uuml;nler Mesafeli S&ouml;zleşmeler Y&ouml;netmeliği&rsquo;nin 14 maddesinin ğ bendinde sayılan Cayma Hakkının Kullanılamadığı Elektronik ortamda anında ifa edilen hizmetler veya t&uuml;keticiye anında teslim edilen gayri maddi mallardan olduğu i&ccedil;in &uuml;r&uuml;n satın alındıktan sonra hi&ccedil;bir şekilde iade s&ouml;z konusu olamaz.<br />\r\n	<br />\r\n	<span style=\"color:#000000;\"><strong>&Ouml;zel H&uuml;k&uuml;mler:</strong></span><br />\r\n	<br />\r\n	a)&nbsp;&Uuml;ye, s&ouml;zleşme kapsamında kendisine daha &ouml;nce başka &uuml;yelerce se&ccedil;ilmemiş bir KULLANICI adı ve şifre belirler. KULLANICI adı ve şifrenin se&ccedil;imi, korunması tamamıyla &uuml;yenin sorumluluğundadır. Şifre sadece &uuml;ye tarafından bilinir. Şifresini yanlış giren &uuml;ye, şifremi unuttum b&ouml;l&uuml;m&uuml;nden kendi e-mail adresine şifresinin g&ouml;nderilmesini sağlayabilir. Şifrenin se&ccedil;imi ve korunması tamamıyla KULLANICI&rsquo;nın sorumluluğundadır. www.baykushafizateknikleri.com şifresini yanlış kullananlardan doğacak problemlerden kesinlikle sorumlu değildir.<br />\r\n	<br />\r\n	b)&nbsp;KULLANICI&rsquo;nın &uuml;yeliği gerektiren servislere bağlanabilmesi i&ccedil;in KULLANICI adını ve şifresini doğru girmesi gereklidir. Bu işlem &uuml;ye girişi yapmak şeklinde tanımlanır. &Uuml;yenin faydalanacağı eğitimler, bedelini &ouml;dediği paketlere bağlı olarak giriş yaptıktan sonra &uuml;yeye g&ouml;sterilecektir.<br />\r\n	<br />\r\n	c)&nbsp;KULLANICI olma kişiseldir. Başkasına devredilemez ve kullandırılamaz.<br />\r\n	<br />\r\n	d)&nbsp;KULLANICI, Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com hizmetlerinden yararlandığı sırada, &Uuml;yelik formunda yer alan bilgilerin doğru olduğunu ve bu bilgilerin gerekli olduğu (şifre unutma gibi) durumlarda bilginin hatalı veya eksik olmasından doğacak zararlardan dolayı sorumluluğun kendisine ait olduğunu, bu hallerde &uuml;yeliğinin sona erebileceğini kabul eder. &Uuml;yeliğin devamı s&uuml;recinde Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesi tarafından istenilen gerekli bilgiler KULLANICI tarafından eksiksiz ve doğru olarak Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesine vermekle y&uuml;k&uuml;ml&uuml;d&uuml;r.<br />\r\n	<br />\r\n	KULLANICI bilgilerinde ki adres, telefon vb. gibi her t&uuml;rl&uuml; değişikliklerde Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesine bilgi vermek zorundadır.<br />\r\n	<br />\r\n	e)&nbsp;KULLANICI, www.baykushafizateknikleri.com tarafından verilen servislerin ve yazılımların telif hakkının Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesine ait olduğunu, bu yazılımları, dok&uuml;manları ya da servisleri hi&ccedil;bir şekilde izinsiz &ccedil;oğaltıp dağıtmayacağını, yayınlamayacağını, pazarlamayacağını kabul ve taahh&uuml;t eder.<br />\r\n	<br />\r\n	f)&nbsp;KULLANICI verilerinin, Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesinin ihmali g&ouml;r&uuml;lmeden yetkisiz kişilerce okunması nedeni ile meydana gelebilecek zararlardan &ouml;t&uuml;r&uuml; Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesinin sorumlu olmayacağını kabul eder.<br />\r\n	<br />\r\n	g)&nbsp;KULLANICI kurallara aykırı davrandığı takdirde www.baykushafizateknikleri.com gerekli m&uuml;dahalelerde bulunma, &uuml;yeyi servis dışına &ccedil;ıkarma ve &uuml;yeliğe son verme hakkına sahip olduğunu kabul eder.<br />\r\n	<br />\r\n	h)&nbsp;KULLANICI, hizmetin kullanımı ile ilgili internetten kaynaklanan sorunlardan Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesini sorumlu tutmayacağını kabul eder.<br />\r\n	<br />\r\n	ı)&nbsp;Online eğitim programı yalnızca bir bilgisayar ve telefonda veya bir tablet ve telefonda kullanılabilir.<br />\r\n	<br />\r\n	i)&nbsp;KULLANICI site geneline zarar verecek veya www.baykushafizateknikleri.com&rsquo; u başka sitelerle davalık duruma getirecek zarar verici iş ve eylemlerde bulunmayacağını taahh&uuml;t eder. Bulunulduğu takdirde bundan doğacak zararlardan sorumlu olacaktır.<br />\r\n	<br />\r\n	j)&nbsp;Online eğitim programında yer alan orijinal sanat eserleri ve tasarım &uuml;r&uuml;nlerinin t&uuml;m fikri hakları ilgili eser ve tasarım sahiplerinin olup 5846 sayılı kanuna g&ouml;re koruma altındadır. www.baykushizliokuma.com web sitesi i&ccedil;erisindeki her t&uuml;rl&uuml; yazılı ve g&ouml;rsel (video, fotoğraf, vs) i&ccedil;eriğin bilgisayara indirilmesi (download edilmesi), kopyalanması, &ccedil;oğaltılması, bir web sitesinde veya diğer herhangi bir mecrada yayınlanması, bir web sitesinin i&ccedil;inde frame, i-frame ve benzeri şekillerde g&ouml;sterimi, izin alınmadan link verilmesi yasaktır. Aksine davranışlar Fikir ve Sanat Eserleri Kanunu uyarınca su&ccedil; teşkil edecek olup, bu tip davranışlarda bulunan www. baykushizliokuma.com sitesinin kullanıcıları, www.baykushafizateknikleri.com web sitesinin sahibi olan BAYKUŞ EĞİTİM YAZILIMLARI LTD. ŞTİ.&#39;a cezai şart olarak her bir ihlal i&ccedil;in fazlaya ilişkin haklarımız saklı kalmak kaydıyla en az 500.000 TL&#39;yi (Beşy&uuml;zbin T&uuml;rk Lirası) &ouml;demeyi, bu cezai şartın fahiş olmadığını, ihlalin ve kusurun ağırlığına g&ouml;re Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesinin bu ceza miktarını artırabileceğini ve mahkemelerden tenkisini talep etmeyeceğini kabul, beyan ve taahh&uuml;t eder.<br />\r\n	<br />\r\n	<span style=\"color:#000000;\"><strong>Uygulanacak H&uuml;k&uuml;mler:</strong></span><br />\r\n	<br />\r\n	Bu s&ouml;zleşmeyle ilgili olarak &ccedil;ıkabilecek ihtilaflarda &ouml;ncelikle bu s&ouml;zleşmedeki h&uuml;k&uuml;mler ve bu s&ouml;zleşmede h&uuml;k&uuml;m bulunmayan hallerde ise T&uuml;rk Kanunları uygulanacaktır.<br />\r\n	<br />\r\n	Yetkili Mahkeme ve İcra Daireleri:<br />\r\n	<br />\r\n	İşbu s&ouml;zleşmenin uygulanmasından doğabilecek her t&uuml;rl&uuml; uyuşmazlıkların &ccedil;&ouml;z&uuml;m&uuml;nde İstanbul mahkeme ve icra m&uuml;d&uuml;rl&uuml;klerinin yetkili olduğu kararlaştırılmıştır.<br />\r\n	<br />\r\n	Copyright &copy; 2020 Baykuş Hafıza Teknikleri Programı-http://www.baykushafizateknikleri.com eğitim sitesi. T&uuml;m hakları saklıdır.<br />\r\n	<br />\r\n	Bu Hizmet S&ouml;zleşmesi ya da online eğitim programlarıyla ilgili herhangi bir konuda bilgi almak i&ccedil;in baykushafizateknikleri@gmail.com adresine e-posta g&ouml;nderebilirsiniz.</p>\r\n', 'resim-yok', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'gizli', 3, 'gizli', 'resim-yok', '', '', '<p>\r\n	<span style=\"font-size:18px;\"><span style=\"color:#000000;\"><strong>Gizlilik Politikamız:</strong></span></span></p>\r\n<p>\r\n	<br />\r\n	Bu gizlilik ilkeleri Baykuş Eğitim Yazılımları Ltd. Şti. tarafından, www.baykushafizateknikleri.com&rsquo;un gizlilik konusundaki sorumluluklarının tespiti i&ccedil;in hazırlanmıştır. Aşağıdaki maddeler&nbsp;<a href=\"http://www.baykushizliokuma.com/\" style=\"color:#000;\">www.baykushafizateknikleri.com</a>&nbsp;web sitesi &uuml;zerindeki bilgi toplama ve dağıtımı işlemlerinin kurallarını i&ccedil;ermektedir.<br />\r\n	<br />\r\n	IP adresiniz sunucularımızdaki sorunların giderilmesi ve internet sitemizi y&ouml;netmek, sizi ve alışveriş sepetinizi tanımak ve a&ccedil;ık demografik bilgilerinizin toplanması i&ccedil;in kullanılacaktır.<br />\r\n	<br />\r\n	<br />\r\n	Sitemizin &uuml;ye kayıt formunda kullanıcılarımız, iletişim bilgilerini (isim, adres, telefon, e-posta adresi ...gibi), ve kişiye &ouml;zel bilgilerini (T.C. kimlik numarası... vb.) girmelidir. Bu formda aldığımız iletişim bilgilerini kullanıcılarımıza, firmamız hakkında bilgi ve kampanya haberleri ve materyallerini g&ouml;ndermek i&ccedil;in kullanmaktayız.&nbsp;Sitemizde verdiğiniz kişisel ve iletişim bilgileriniz BAYKUŞ EĞİTİM YAZILIMLARI LTD. ŞTİ. dışında 3. şahıslarla paylaşılmamaktadır.&nbsp;Verdiğiniz bilgilerin gizliliğinin korunması kurumumuzun g&uuml;vencesindedir.<br />\r\n	<br />\r\n	İletişim bilgileri ayrıca sizlerle iletişime ge&ccedil;memiz gerektiğinde kullanılacaktır. Kullanıcılarımız isteklerine bağlı olarak sistemimizden kayıtlarını sildirebilirler. Kişiye &ouml;zel bilgiler kullanıcılarımızın sisteme girişlerinde ve diğer gerektiği durumlarda kişinin kimliğinin doğrulanmasında kullanılacaktır. İstatistiki bilgiler ve profil bilgileri ayrıca sitemizin i&ccedil;inde toplanmaktadır.<br />\r\n	&nbsp;</p>\r\n<p>\r\n	Hi&ccedil;bir şekilde&nbsp;sitemizde ve altyapısında kredi kartı bilgilerinize ait bilgiler tutulmamaktadır. Her yeni alışverişinizde bu bilgiler size tekrar sorulmakta ve sadece işleminizin onaylanması i&ccedil;in se&ccedil;miş olduğunuz ilgili Bankanın sanal pos&nbsp;alanına g&ouml;nderilmektedir.</p>\r\n', 'resim-yok', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'iade', 4, 'iade', 'resim-yok', '', '', '<p>\r\n	<span style=\"font-size:18px;\"><span style=\"color: rgb(28, 52, 62); font-family: Roboto, sans-serif; font-weight: 700;\">Teslimat, İptal ve İade Şartları:</span></span></p>\r\n<p>\r\n<p>\r\n	Baykuş Hafıza Teknikleri Programı Teslimat, İptal ve İade Kuralları<br />\r\n	<br />\r\n	1.&nbsp;Baykuş Hafıza Teknikleri Programı - http://www.baykushafizateknikleri.com eğitim sitesi &uuml;zerinden elektronik ortamda sipariş verdiğiniz takdirde, size sunulan &ouml;n bilgilendirme formunu ve mesafeli satış s&ouml;zleşmesini kabul etmiş sayılırsınız.<br />\r\n	<br />\r\n	2.&nbsp;Alıcılar, satın aldıkları eğitim programının satış ve teslimi ile ilgili olarak 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanun ve Mesafeli S&ouml;zleşmeler Y&ouml;netmeliği (RG:27.11.2014/29188) h&uuml;k&uuml;mleri ile y&uuml;r&uuml;rl&uuml;kteki diğer yasalara tabidir.<br />\r\n	3.&nbsp;Satın alınan her bir eğitim programı, 30 g&uuml;nl&uuml;k yasal s&uuml;reyi aşmamak kaydı ile alıcıya teslim edilir. Bu s&uuml;re i&ccedil;inde eğitim programı teslim edilmez ise, Alıcı s&ouml;zleşmeyi sona erdirebilir.<br />\r\n	<br />\r\n	4.&nbsp;Alıcı, satın aldığı eğitim programının bedelini &ouml;demez veya banka kayıtlarında iptal ederse, Satıcının eğitim programını teslim y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; sona erer.<br />\r\n	<br />\r\n	5.&nbsp;Eğitim programı teslim edildikten sonra, alıcının &ouml;deme yaptığı kredi kartının yetkisiz kişiler tarafından haksız olarak kullanıldığı tespit edilirse ve satılan program bedeli ilgili banka veya finans kuruluşu tarafından Satıcı&#39;ya &ouml;denmez ise, satıcı s&ouml;zleşmeyi sona erdirir.<br />\r\n	<br />\r\n	6.&nbsp;Satıcı&rsquo;nın &ouml;ng&ouml;remeyeceği m&uuml;cbir sebepler oluşursa ve eğitim programı s&uuml;resinde teslim edilemez ise, durum Alıcı&rsquo;ya bildirilir. Alıcı, siparişin iptalini veya engel ortadan kalkana dek teslimatın ertelenmesini talep edebilir. Alıcı siparişi iptal ederse; &ouml;demeyi nakit ile yapmış ise iptalinden itibaren 14 g&uuml;n i&ccedil;inde kendisine nakden bu &uuml;cret &ouml;denir. Alıcı, &ouml;demeyi kredi kartı ile yapmış ise ve iptal ederse, bu iptalden itibaren yine 14 g&uuml;n i&ccedil;inde &uuml;r&uuml;n bedeli bankaya iade edilir, ancak bankanın alıcının hesabına 2-3 hafta i&ccedil;erisinde aktarması olasıdır.<br />\r\n	<br />\r\n	7.&nbsp;Baykuş Hafıza Teknikleri Programı - http://www.baykushafizateknikleri.com eğitim sitesi tarafından satılan t&uuml;m eğitim programları Mesafeli S&ouml;zleşmeler Y&ouml;netmeliği&rsquo;nin 14 maddesinin ğ bendinde sayılan Cayma Hakkının Kullanılamadığı Elektronik ortamda anında ifa edilen hizmetler veya t&uuml;keticiye anında teslim edilen gayrimaddi mallardan olduğu i&ccedil;in &uuml;r&uuml;n satın alınıp eğitim programına erişim sağlandıktan sonra hi&ccedil;bir şekilde iade s&ouml;z konusu olamaz.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 'resim-yok', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `adsoyad` text COLLATE utf8_turkish_ci NOT NULL,
  `mail` text COLLATE utf8_turkish_ci NOT NULL,
  `telefon` text COLLATE utf8_turkish_ci NOT NULL,
  `kodu` text COLLATE utf8_turkish_ci NOT NULL,
  `konu` text COLLATE utf8_turkish_ci NOT NULL,
  `mesaj` text COLLATE utf8_turkish_ci NOT NULL,
  `id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `sira` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sss`
--

CREATE TABLE `sss` (
  `id` int(11) NOT NULL,
  `adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` int(11) DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT 0,
  `zaman` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subeler`
--

CREATE TABLE `subeler` (
  `id` int(11) NOT NULL,
  `adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` int(11) DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_title` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sube_telefon` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sube_adres` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `google_maps` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(11) NOT NULL,
  `kategori` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` int(11) DEFAULT NULL,
  `resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama1` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim2` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim3` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim4` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `fiyat` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `goster` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `saat` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `icon` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `alan1` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `alan2` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `alan3` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT 0,
  `site_title` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en1` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr1` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar1` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru1` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de1` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `video` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `onizleme` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `kategori`, `adi`, `sira`, `resim`, `durum`, `aciklama`, `aciklama1`, `resim2`, `resim3`, `resim4`, `fiyat`, `goster`, `tarih`, `saat`, `icon`, `adi_en`, `adi_fr`, `adi_ar`, `adi_ru`, `adi_de`, `alan1`, `alan2`, `alan3`, `seo`, `banner_resim`, `hit`, `site_title`, `site_description`, `aciklama_en`, `aciklama_en1`, `aciklama_fr`, `aciklama_fr1`, `aciklama_ar`, `aciklama_ar1`, `aciklama_ru`, `aciklama_ru1`, `aciklama_de`, `aciklama_de1`, `video`, `onizleme`) VALUES
(673, NULL, 'Hafıza Teknikleri Programı', 6, '213-hafiza-teknikleri-programi.jpg', 0, '', '', 'Dosya-yok', 'Dosya-yok', 'Dosya-yok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hafiza-teknikleri-programi', 'resim-yok', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, NULL, 'Hafıza Teknikleri Programı', 2, '661-hafiza-teknikleri-programi.jpg', 0, '', '', 'Dosya-yok', 'Dosya-yok', 'Dosya-yok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hafiza-teknikleri-programi', 'resim-yok', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, NULL, 'Hafıza Teknikleri Programı', 5, '632-hafiza-teknikleri-programi.jpg', 0, '', '', 'Dosya-yok', 'Dosya-yok', 'Dosya-yok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hafiza-teknikleri-programi', 'resim-yok', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(671, NULL, 'Hafıza Teknikleri Programı', 4, '783-hafiza-teknikleri-programi.jpg', 0, '', '', 'Dosya-yok', 'Dosya-yok', 'Dosya-yok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hafiza-teknikleri-programi', 'resim-yok', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, NULL, 'Hafıza Teknikleri Programı', 3, '822-hafiza-teknikleri-programi.jpg', 0, '', '', 'Dosya-yok', 'Dosya-yok', 'Dosya-yok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hafiza-teknikleri-programi', 'resim-yok', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, NULL, 'Hafıza Teknikleri Programı', 1, '733-hafiza-teknikleri-programi.jpg', 0, '', '', 'Dosya-yok', 'Dosya-yok', 'Dosya-yok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hafiza-teknikleri-programi', 'resim-yok', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_kategori`
--

CREATE TABLE `urun_kategori` (
  `id` int(15) NOT NULL,
  `sira` int(15) NOT NULL,
  `kategori_adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `tarih` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_title` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `ustid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun_kategori`
--

INSERT INTO `urun_kategori` (`id`, `sira`, `kategori_adi`, `kategori_resim`, `durum`, `tarih`, `kategori_adi_en`, `kategori_adi_fr`, `kategori_adi_ar`, `kategori_adi_ru`, `kategori_adi_de`, `seo`, `banner_resim`, `site_title`, `site_description`, `aciklama`, `aciklama_en`, `aciklama_fr`, `aciklama_ar`, `aciklama_ru`, `aciklama_de`, `ustid`) VALUES
(312, 1, 'Mekanik Salmastralar', '171-mekanik-salmastralar.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'mekanik-salmastralar', 'resim-yok', '', '', '', NULL, NULL, NULL, NULL, NULL, 0),
(313, 3, 'Mikser Salmastralar', '128-mikser-salmastralar.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'mikser-salmastralar', 'resim-yok', '', '', '', NULL, NULL, NULL, NULL, NULL, 0),
(316, 2, 'Döner Başlıklılar', '191-doner-basliklilar.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'doner-basliklilar', 'resim-yok', '', '', '', NULL, NULL, NULL, NULL, NULL, 0),
(315, 4, 'Kartuş Salmastralar', '868-kartus-salmastralar.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'kartus-salmastralar', 'resim-yok', '', '', '', NULL, NULL, NULL, NULL, NULL, 0),
(317, 5, 'Yumuşak Salmastralar', '619-yumusak-salmastralar.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'yumusak-salmastralar', 'resim-yok', '', '', '', NULL, NULL, NULL, NULL, NULL, 0),
(318, 0, 'Özel Salmastralar', '776-ozel-salmastralar.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ozel-salmastralar', 'resim-yok', '', '', '', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` int(11) DEFAULT NULL,
  `resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `linki` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazi`
--

CREATE TABLE `yazi` (
  `id` int(11) NOT NULL,
  `sira` text COLLATE utf8_turkish_ci NOT NULL,
  `adi` text COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(2) NOT NULL,
  `resim` text COLLATE utf8_turkish_ci NOT NULL,
  `aciklama` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetici`
--

CREATE TABLE `yonetici` (
  `id` int(11) NOT NULL,
  `ad_soyad` text COLLATE utf8_turkish_ci NOT NULL,
  `eposta` text COLLATE utf8_turkish_ci NOT NULL,
  `sifre` text COLLATE utf8_turkish_ci NOT NULL,
  `uyelik_tarihi` text COLLATE utf8_turkish_ci NOT NULL,
  `son_giris` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yonetici`
--

INSERT INTO `yonetici` (`id`, `ad_soyad`, `eposta`, `sifre`, `uyelik_tarihi`, `son_giris`) VALUES
(1, 'İlter Web Tasarım', 'info@ilterwebtasarim.com', '54e4958000a7ed39cd0c662e6872422350a91a40', '05.01.2015', '21.09.2020'),
(69, 'Baykuş Hafıza Teknikleri', 'baykushafizateknikleri@gmail.com', '646ec32e81067582d2222f2a0f4e25725c16864e', '03.09.2020', '22.09.2020');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetici_izin`
--

CREATE TABLE `yonetici_izin` (
  `id` int(11) NOT NULL,
  `urun_kat` int(3) NOT NULL DEFAULT 0,
  `urun` int(3) NOT NULL DEFAULT 0,
  `haber_kat` int(3) NOT NULL DEFAULT 0,
  `haber` int(3) NOT NULL DEFAULT 0,
  `hizmet_kat` int(3) NOT NULL DEFAULT 0,
  `hizmet` int(3) NOT NULL DEFAULT 0,
  `referans_kat` int(3) NOT NULL DEFAULT 0,
  `referans` int(3) NOT NULL DEFAULT 0,
  `galeri_kat` int(3) NOT NULL DEFAULT 0,
  `galeri` int(3) NOT NULL DEFAULT 0,
  `video` int(3) NOT NULL DEFAULT 0,
  `sayfa` int(3) NOT NULL DEFAULT 0,
  `slider` int(3) NOT NULL DEFAULT 0,
  `uye` int(3) NOT NULL DEFAULT 0,
  `sss` int(3) NOT NULL DEFAULT 0,
  `yorum` int(3) NOT NULL DEFAULT 0,
  `banner` int(3) NOT NULL DEFAULT 0,
  `sube` int(3) NOT NULL DEFAULT 0,
  `en` int(3) NOT NULL DEFAULT 0,
  `fr` int(3) NOT NULL DEFAULT 0,
  `ar` int(3) NOT NULL DEFAULT 0,
  `ru` int(3) NOT NULL DEFAULT 0,
  `de` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `yonetici_izin`
--

INSERT INTO `yonetici_izin` (`id`, `urun_kat`, `urun`, `haber_kat`, `haber`, `hizmet_kat`, `hizmet`, `referans_kat`, `referans`, `galeri_kat`, `galeri`, `video`, `sayfa`, `slider`, `uye`, `sss`, `yorum`, `banner`, `sube`, `en`, `fr`, `ar`, `ru`, `de`) VALUES
(1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `id` int(11) NOT NULL,
  `kategori` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` int(11) DEFAULT NULL,
  `aciklama` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(3) DEFAULT NULL,
  `adi_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_en` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_fr` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ar` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_ru` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama_de` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) NOT NULL DEFAULT 0,
  `unvan` text COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `kategori`, `adi`, `sira`, `aciklama`, `resim`, `durum`, `adi_en`, `adi_fr`, `adi_ar`, `adi_ru`, `adi_de`, `seo`, `aciklama_en`, `aciklama_fr`, `aciklama_ar`, `aciklama_ru`, `aciklama_de`, `hit`, `unvan`) VALUES
(31, NULL, 'Engin GEDİK	', 1, '<p>\r\n	<span style=\"font-size:10px;\">Merhaba. Ben 12. sınıf &ouml;ğrencisiyim ve Niğde&rsquo;de oturuyorum. Burada gidebileceğim profesyonel bir hafıza teknikleri kursu yoktu maalesef. TYT-AYT sınavı &ccedil;alışmalarımda neyi nasıl &ccedil;alışacağım konusunda sıkıntı yaşıyordum, neyi nasıl &ccedil;alışacağım yada ezberleyeceğim bir t&uuml;rl&uuml; bir d&uuml;zene sokamamıştım ve birazda zaman sıkıntısı &ccedil;ekiyordum, o y&uuml;zden kendimi geliştirmeye karar verdim. İnternette Baykuş Hafıza Teknikleri Programını g&ouml;rd&uuml;m. &Ccedil;ok kolay birşekilde aldım ve kullanmaya başladım İ&ccedil;eriğindeki egzersizler &ccedil;ok zevkli ve hafıza teknikleri anlatımları gayet anlaşılır. Şimdi daha d&uuml;zenli &ccedil;alışıyorum, en azından &uuml;zerimdeki sınav kaygısı bir nebze olsun azaldı, biraz daha kendime g&uuml;venim geldi. Program yapımcılarına &ccedil;ok tşk ederim herşey i&ccedil;in, t&uuml;m &uuml;niversite sınavına hazırlanan arkadaşlarıma tavsiye ederim.</span></p>\r\n', '26-engin-gedik.png', 0, NULL, NULL, NULL, NULL, NULL, 'engin-gedik', NULL, NULL, NULL, NULL, NULL, 0, '12.Sınıf YKS Öğrencisi	'),
(36, NULL, 'Gülşah AYDOĞAN', 2, '<p>\r\n	Merhaba arkadaşlar. Hafıza tekniklerini&nbsp; daha &ouml;nce duymuştum ve bu teknikleri &ouml;ğrenmek istiyordum. İyi bir Anadolu Lisesini kazanmak istiyorum. Bu tekniklerle derslerimde kullanmaya başladım, programın anlatım ve alıştırmaları g&uuml;zel ve a&ccedil;ıklayıcı. Umarım hedeflerime ulaşırım, Baykuş Hafıza Teknikleri Programının &ccedil;alışmalarıma faydalı olacağını d&uuml;ş&uuml;n&uuml;yorum. Bakalım neler olacak, herkese &ccedil;ok teşek&uuml;rler.<o:p></o:p></p>\r\n<p>\r\n	&nbsp;</p>\r\n', '398-gulsah-aydogan.png', 0, NULL, NULL, NULL, NULL, NULL, 'gulsah-aydogan', NULL, NULL, NULL, NULL, NULL, 0, '8.Sınıf LGS Öğrencisi'),
(37, NULL, 'Ayşe Demiryapan', 3, '<p>\r\n	Program &ouml;ncelikle &ouml;ğrenci dostu; kullanımı kolay ve işlevsel bir şekilde hazırlanmış. &Ouml;ğrencilerin sıkılmadan, rahat&ccedil;a ve isteyerek &ccedil;alışabilecekleri şekilde i&ccedil;erik ve alıştırmalardan oluşuyor. T&uuml;m &ouml;ğrencilere tavsiye eder ve emeği ge&ccedil;enlere &ccedil;ok teşekk&uuml;r ederim.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '864-ece-demiryapan.png', 0, NULL, NULL, NULL, NULL, NULL, 'ayse-demiryapan', NULL, NULL, NULL, NULL, NULL, 0, 'Rehber Öğretmen'),
(38, NULL, 'Emel ÇELİK', 4, '<p>\r\n	Programı internetten g&ouml;r&uuml;p aldım oğlum i&ccedil;in. &Ouml;nceleri &ccedil;alışmaz gibi gelmişti :)) &ouml;nyargılıydım biraz. Kullanımı kolay ve eğlenceli olduğu i&ccedil;in oğlum severek &ccedil;alışıyor, 5.sınıfta ingilizce derslerinde &ouml;zellikle kelime ezberlemesinde &ccedil;ok işe yarıyor. T&uuml;m Ortaokul velilerine tavsiye ederim.</p>\r\n', '379-emel-celik.png', 0, NULL, NULL, NULL, NULL, NULL, 'emel-celik', NULL, NULL, NULL, NULL, NULL, 0, '5.Sınıf Öğrenci Velisi');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `duyurular`
--
ALTER TABLE `duyurular`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ebulten`
--
ALTER TABLE `ebulten`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `fotograf_galeri`
--
ALTER TABLE `fotograf_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `fotograf_galeri_kategori`
--
ALTER TABLE `fotograf_galeri_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galeri_kat`
--
ALTER TABLE `galeri_kat`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galeri_pro`
--
ALTER TABLE `galeri_pro`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galeri_sayfa`
--
ALTER TABLE `galeri_sayfa`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galeri_sube`
--
ALTER TABLE `galeri_sube`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `haberler`
--
ALTER TABLE `haberler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `haber_kategori`
--
ALTER TABLE `haber_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hizmetgaleri`
--
ALTER TABLE `hizmetgaleri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hizmetler`
--
ALTER TABLE `hizmetler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hizmet_kategori`
--
ALTER TABLE `hizmet_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `idari_kadro`
--
ALTER TABLE `idari_kadro`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisim`
--
ALTER TABLE `iletisim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ip_adresi`
--
ALTER TABLE `ip_adresi`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `koseler`
--
ALTER TABLE `koseler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kurslar`
--
ALTER TABLE `kurslar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `markalar`
--
ALTER TABLE `markalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `referanslar`
--
ALTER TABLE `referanslar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `referans_kategori`
--
ALTER TABLE `referans_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sayfalar`
--
ALTER TABLE `sayfalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sss`
--
ALTER TABLE `sss`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `subeler`
--
ALTER TABLE `subeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_kategori`
--
ALTER TABLE `urun_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yazi`
--
ALTER TABLE `yazi`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yonetici`
--
ALTER TABLE `yonetici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yonetici_izin`
--
ALTER TABLE `yonetici_izin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayar`
--
ALTER TABLE `ayar`
  MODIFY `ayar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `duyurular`
--
ALTER TABLE `duyurular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Tablo için AUTO_INCREMENT değeri `ebulten`
--
ALTER TABLE `ebulten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `fotograf_galeri`
--
ALTER TABLE `fotograf_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `fotograf_galeri_kategori`
--
ALTER TABLE `fotograf_galeri_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1331;

--
-- Tablo için AUTO_INCREMENT değeri `galeri_kat`
--
ALTER TABLE `galeri_kat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Tablo için AUTO_INCREMENT değeri `galeri_pro`
--
ALTER TABLE `galeri_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- Tablo için AUTO_INCREMENT değeri `galeri_sayfa`
--
ALTER TABLE `galeri_sayfa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- Tablo için AUTO_INCREMENT değeri `galeri_sube`
--
ALTER TABLE `galeri_sube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- Tablo için AUTO_INCREMENT değeri `haberler`
--
ALTER TABLE `haberler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Tablo için AUTO_INCREMENT değeri `haber_kategori`
--
ALTER TABLE `haber_kategori`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- Tablo için AUTO_INCREMENT değeri `hizmetgaleri`
--
ALTER TABLE `hizmetgaleri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `hizmetler`
--
ALTER TABLE `hizmetler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Tablo için AUTO_INCREMENT değeri `hizmet_kategori`
--
ALTER TABLE `hizmet_kategori`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- Tablo için AUTO_INCREMENT değeri `idari_kadro`
--
ALTER TABLE `idari_kadro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `iletisim`
--
ALTER TABLE `iletisim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `ip_adresi`
--
ALTER TABLE `ip_adresi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- Tablo için AUTO_INCREMENT değeri `koseler`
--
ALTER TABLE `koseler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Tablo için AUTO_INCREMENT değeri `kurslar`
--
ALTER TABLE `kurslar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `markalar`
--
ALTER TABLE `markalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `referanslar`
--
ALTER TABLE `referanslar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- Tablo için AUTO_INCREMENT değeri `referans_kategori`
--
ALTER TABLE `referans_kategori`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- Tablo için AUTO_INCREMENT değeri `sayfalar`
--
ALTER TABLE `sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- Tablo için AUTO_INCREMENT değeri `sss`
--
ALTER TABLE `sss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Tablo için AUTO_INCREMENT değeri `subeler`
--
ALTER TABLE `subeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=674;

--
-- Tablo için AUTO_INCREMENT değeri `urun_kategori`
--
ALTER TABLE `urun_kategori`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- Tablo için AUTO_INCREMENT değeri `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- Tablo için AUTO_INCREMENT değeri `yazi`
--
ALTER TABLE `yazi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `yonetici`
--
ALTER TABLE `yonetici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Tablo için AUTO_INCREMENT değeri `yonetici_izin`
--
ALTER TABLE `yonetici_izin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
