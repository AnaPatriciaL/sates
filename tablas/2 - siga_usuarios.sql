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

 Date: 13/11/2025 09:11:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for siga_usuarios
-- ----------------------------
DROP TABLE IF EXISTS `siga_usuarios`;
CREATE TABLE `siga_usuarios`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contrasena` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `creado_en` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  `actualizado_en` timestamp(0) NOT NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `activo` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`usuario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of siga_usuarios
-- ----------------------------
INSERT INTO `siga_usuarios` VALUES (1, 'saulg', 'Saul Gonzalez', '$2y$10$ZvGP4wQASIFLVFNptz2mVO9sGBtt1Zael4IkcU/PPFc/Csn9R/tc.', '2024-11-01 15:08:56', '2024-11-13 12:43:58', 1);
INSERT INTO `siga_usuarios` VALUES (26, 'Lorena', 'Lorena Lopez Quintero', '$2y$10$LhkjxHAVJuQx4SjHNkKQXeOQwYfQqH.PfOvo1kCGRFzX1Qy5n/J.S', '2025-09-10 10:44:32', '2025-09-10 10:44:32', 1);
INSERT INTO `siga_usuarios` VALUES (27, 'Flavio', 'Flavio Paredes Ramos', '$2y$10$D2C/BwcJr1iOhQexC4CB6.GiRNUuNw11o3grQDFPVeC52YNtO5WKa', '2025-10-02 15:32:17', '2025-11-07 12:14:00', 1);
INSERT INTO `siga_usuarios` VALUES (28, 'JuanPablo', 'Juan Pablo Olmeda Quiroz', '$2y$10$n.YhbaUnk9rr5ZdSjnjmx.sMhVK1D7bq6V59vVYomY4tB/hbLls1K', '2025-10-25 13:49:08', '2025-10-25 13:49:08', 1);

SET FOREIGN_KEY_CHECKS = 1;
