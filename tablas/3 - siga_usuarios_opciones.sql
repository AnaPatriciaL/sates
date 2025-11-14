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

 Date: 13/11/2025 09:11:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for siga_usuarios_opciones
-- ----------------------------
DROP TABLE IF EXISTS `siga_usuarios_opciones`;
CREATE TABLE `siga_usuarios_opciones`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `opcion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `usuario_id`(`usuario_id`) USING BTREE,
  INDEX `opcion_id`(`opcion_id`) USING BTREE,
  CONSTRAINT `fk_suo_opcion` FOREIGN KEY (`opcion_id`) REFERENCES `siga_opciones` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_suo_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `siga_usuarios` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of siga_usuarios_opciones
-- ----------------------------
INSERT INTO `siga_usuarios_opciones` VALUES (12, 1, 1);
INSERT INTO `siga_usuarios_opciones` VALUES (13, 1, 2);
INSERT INTO `siga_usuarios_opciones` VALUES (14, 1, 3);
INSERT INTO `siga_usuarios_opciones` VALUES (15, 1, 4);
INSERT INTO `siga_usuarios_opciones` VALUES (16, 1, 5);
INSERT INTO `siga_usuarios_opciones` VALUES (17, 1, 7);
INSERT INTO `siga_usuarios_opciones` VALUES (18, 1, 8);
INSERT INTO `siga_usuarios_opciones` VALUES (19, 27, 1);
INSERT INTO `siga_usuarios_opciones` VALUES (20, 27, 2);
INSERT INTO `siga_usuarios_opciones` VALUES (21, 27, 3);
INSERT INTO `siga_usuarios_opciones` VALUES (22, 27, 4);
INSERT INTO `siga_usuarios_opciones` VALUES (23, 27, 5);
INSERT INTO `siga_usuarios_opciones` VALUES (24, 27, 7);
INSERT INTO `siga_usuarios_opciones` VALUES (25, 27, 8);

SET FOREIGN_KEY_CHECKS = 1;
