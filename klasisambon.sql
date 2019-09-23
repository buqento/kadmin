/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : klasisambon

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 01/12/2018 00:41:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for artikel
-- ----------------------------
DROP TABLE IF EXISTS `artikel`;
CREATE TABLE `artikel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `konten` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kategori_id` int(3) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for biodata
-- ----------------------------
DROP TABLE IF EXISTS `biodata`;
CREATE TABLE `biodata`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jenis_kelamin` smallint(1) NOT NULL,
  `tempat_lahir` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `golongan_id` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pendidikan_id` smallint(1) NOT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `cacat_id` smallint(1) NOT NULL,
  `jemaat_id` smallint(6) NOT NULL,
  `sektor_id` smallint(6) NOT NULL,
  `unit_id` smallint(6) NOT NULL,
  `status_pernikahan` smallint(1) NOT NULL,
  `status_hidup` smallint(1) NOT NULL,
  `status_baptis` smallint(1) NOT NULL,
  `status_sidi` smallint(1) NOT NULL,
  `pekerjaan_id` smallint(1) NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for biodata_majelis
-- ----------------------------
DROP TABLE IF EXISTS `biodata_majelis`;
CREATE TABLE `biodata_majelis`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jabatan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telepon` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pendidikan_id` smallint(1) NOT NULL,
  `pekerjaan` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_aktif` smallint(1) NOT NULL DEFAULT 1,
  `jenis_kelamin` smallint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cacat
-- ----------------------------
DROP TABLE IF EXISTS `cacat`;
CREATE TABLE `cacat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jemaat_id` int(3) NOT NULL,
  `judul` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_jam` datetime(0) NOT NULL,
  `tempat` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for golongan
-- ----------------------------
DROP TABLE IF EXISTS `golongan`;
CREATE TABLE `golongan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for jemaat
-- ----------------------------
DROP TABLE IF EXISTS `jemaat`;
CREATE TABLE `jemaat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jemaat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_gereja` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telepon` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gambar` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `visi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `misi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for kategori_produk
-- ----------------------------
DROP TABLE IF EXISTS `kategori_produk`;
CREATE TABLE `kategori_produk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for kategori_usaha
-- ----------------------------
DROP TABLE IF EXISTS `kategori_usaha`;
CREATE TABLE `kategori_usaha`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `pekerjaan`;
CREATE TABLE `pekerjaan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pendidikan
-- ----------------------------
DROP TABLE IF EXISTS `pendidikan`;
CREATE TABLE `pendidikan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for produk_kelembagaan
-- ----------------------------
DROP TABLE IF EXISTS `produk_kelembagaan`;
CREATE TABLE `produk_kelembagaan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NOT NULL,
  `jemaat_id` int(11) NOT NULL,
  `nama_file` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sektor
-- ----------------------------
DROP TABLE IF EXISTS `sektor`;
CREATE TABLE `sektor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jemaat_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jemaat_id` smallint(6) NULL DEFAULT NULL,
  `sektor_id` smallint(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for usaha
-- ----------------------------
DROP TABLE IF EXISTS `usaha`;
CREATE TABLE `usaha`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kategori_usaha_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_admin
-- ----------------------------
DROP TABLE IF EXISTS `user_admin`;
CREATE TABLE `user_admin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `authKey` char(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for wirausaha
-- ----------------------------
DROP TABLE IF EXISTS `wirausaha`;
CREATE TABLE `wirausaha`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biodata_id` int(11) NOT NULL,
  `kategori_usaha_id` int(11) NOT NULL,
  `usaha_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- View structure for summary_biodata
-- ----------------------------
DROP VIEW IF EXISTS `summary_biodata`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `summary_biodata` AS SELECT 
biodata.nama, 
biodata.jemaat_id,
biodata.sektor_id,
biodata.unit_id,
biodata.jenis_kelamin,
YEAR(CURRENT_DATE) - YEAR(biodata.tanggal_lahir) AS umur 
FROM biodata ;

-- ----------------------------
-- Function structure for rangeumur
-- ----------------------------
DROP FUNCTION IF EXISTS `rangeumur`;
delimiter ;;
CREATE FUNCTION `rangeumur`(`dari` int,`ke` int, `jenkel` int)
 RETURNS int(11)
BEGIN
	#Routine body goes here...
	DECLARE result INT;
	SET result = (select COUNT(*) FROM summary_biodata WHERE jenis_kelamin=jenkel AND umur BETWEEN dari AND ke);

	RETURN result;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for rangeumur_jemaat
-- ----------------------------
DROP FUNCTION IF EXISTS `rangeumur_jemaat`;
delimiter ;;
CREATE FUNCTION `rangeumur_jemaat`(`dari` int,`ke` int, `jenkel` int, `jemaat` int)
 RETURNS int(11)
BEGIN
	#Routine body goes here...
	DECLARE result INT;
	SET result = (select COUNT(*) FROM summary_biodata WHERE jenis_kelamin=jenkel AND jemaat_id=jemaat AND umur BETWEEN dari AND ke);

	RETURN result;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for rangeumur_sektor
-- ----------------------------
DROP FUNCTION IF EXISTS `rangeumur_sektor`;
delimiter ;;
CREATE FUNCTION `rangeumur_sektor`(`dari` int, `ke` int, `jenkel` int, `jemaat` int, `sektor` int)
 RETURNS int(11)
BEGIN
	#Routine body goes here...
	DECLARE result INT;
	SET result = (select COUNT(*) FROM summary_biodata WHERE jenis_kelamin=jenkel AND jemaat_id=jemaat AND sektor_id=sektor AND umur BETWEEN dari AND ke);

	RETURN result;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for rangeumur_unit
-- ----------------------------
DROP FUNCTION IF EXISTS `rangeumur_unit`;
delimiter ;;
CREATE FUNCTION `rangeumur_unit`(`dari` int, `ke` int, `jenkel` int, `jemaat` int, `sektor` int, `unit` int)
 RETURNS int(11)
BEGIN
	#Routine body goes here...
	DECLARE result INT;
	SET result = (select COUNT(*) FROM summary_biodata WHERE jenis_kelamin=jenkel AND jemaat_id=jemaat AND sektor_id=sektor AND unit_id=unit AND umur BETWEEN dari AND ke);

	RETURN result;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
