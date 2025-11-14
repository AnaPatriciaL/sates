/*
 Navicat Premium Data Transfer

 Source Server         : Programacion
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : sates

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 13/11/2025 09:11:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for siga_opciones
-- ----------------------------
DROP TABLE IF EXISTS `siga_opciones`;
CREATE TABLE `siga_opciones`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_opcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ruta` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icono` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ruta`(`ruta`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of siga_opciones
-- ----------------------------
INSERT INTO `siga_opciones` VALUES (1, 'Prospectos IE', 'ProspectosIE', 'mdi-account-search-outline', 'blue lighten-2', NULL);
INSERT INTO `siga_opciones` VALUES (2, 'Listas IE', 'ListasIE', 'mdi-note-check', 'yellow darken-2', NULL);
INSERT INTO `siga_opciones` VALUES (3, 'Comites IE', 'ComitesIE', 'mdi-filter-cog', 'pink darken-3', NULL);
INSERT INTO `siga_opciones` VALUES (4, 'Autorizados IE', 'AutorizadosIE', 'mdi-check-circle', 'green lighten-1', NULL);
INSERT INTO `siga_opciones` VALUES (5, 'Emitidas IE', 'EmitidasIE', 'mdi-file-document-multiple', 'lime lighten-1', NULL);
INSERT INTO `siga_opciones` VALUES (7, 'Usuarios', 'Usuarios', 'mdi-account', 'orange darken-3', NULL);
INSERT INTO `siga_opciones` VALUES (8, 'Permisos', 'Permisos', 'mdi-shield-account', 'red darken-4', NULL);

SET FOREIGN_KEY_CHECKS = 1;
