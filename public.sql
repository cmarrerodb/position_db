/*
 Navicat Premium Data Transfer

 Source Server         : PGSQL-LOCAL
 Source Server Type    : PostgreSQL
 Source Server Version : 140008 (140008)
 Source Host           : localhost:5432
 Source Catalog        : position
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140008 (140008)
 File Encoding         : 65001

 Date: 06/11/2023 08:48:11
*/


-- ----------------------------
-- Sequence structure for cnf_colores_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cnf_colores_id_seq";
CREATE SEQUENCE "public"."cnf_colores_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cnf_tipo_accion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cnf_tipo_accion_id_seq";
CREATE SEQUENCE "public"."cnf_tipo_accion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for cnf_vistas_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."cnf_vistas_seq";
CREATE SEQUENCE "public"."cnf_vistas_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for desordenadas_dia_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."desordenadas_dia_id_seq";
CREATE SEQUENCE "public"."desordenadas_dia_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for desordenadas_hora_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."desordenadas_hora_id_seq";
CREATE SEQUENCE "public"."desordenadas_hora_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for desordenadas_mes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."desordenadas_mes_id_seq";
CREATE SEQUENCE "public"."desordenadas_mes_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for desordenadas_semana_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."desordenadas_semana_id_seq";
CREATE SEQUENCE "public"."desordenadas_semana_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gb_perfiles_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gb_perfiles_id_seq";
CREATE SEQUENCE "public"."gb_perfiles_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gb_perfiles_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gb_perfiles_id_seq1";
CREATE SEQUENCE "public"."gb_perfiles_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gb_perfiles_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gb_perfiles_id_seq2";
CREATE SEQUENCE "public"."gb_perfiles_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_imei_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_imei_id_seq";
CREATE SEQUENCE "public"."gps_imei_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_imei_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_imei_id_seq1";
CREATE SEQUENCE "public"."gps_imei_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_imei_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_imei_id_seq2";
CREATE SEQUENCE "public"."gps_imei_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_imei_transportista_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_imei_transportista_id_seq";
CREATE SEQUENCE "public"."gps_imei_transportista_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_imei_transportista_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_imei_transportista_id_seq1";
CREATE SEQUENCE "public"."gps_imei_transportista_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_imei_transportista_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_imei_transportista_id_seq2";
CREATE SEQUENCE "public"."gps_imei_transportista_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_proveedor_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_proveedor_id_seq";
CREATE SEQUENCE "public"."gps_proveedor_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_proveedor_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_proveedor_id_seq1";
CREATE SEQUENCE "public"."gps_proveedor_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_proveedor_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_proveedor_id_seq2";
CREATE SEQUENCE "public"."gps_proveedor_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_real_time_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_real_time_id_seq";
CREATE SEQUENCE "public"."gps_real_time_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_real_time_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_real_time_id_seq1";
CREATE SEQUENCE "public"."gps_real_time_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_real_time_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_real_time_id_seq2";
CREATE SEQUENCE "public"."gps_real_time_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_transportista_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_transportista_id_seq";
CREATE SEQUENCE "public"."gps_transportista_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gps_transportista_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gps_transportista_id_seq1";
CREATE SEQUENCE "public"."gps_transportista_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for logs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."logs_id_seq";
CREATE SEQUENCE "public"."logs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_day_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_day_id_seq";
CREATE SEQUENCE "public"."stats_gps_day_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_day_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_day_id_seq1";
CREATE SEQUENCE "public"."stats_gps_day_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_dia_patente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_dia_patente_id_seq";
CREATE SEQUENCE "public"."stats_gps_dia_patente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_dia_transportista_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_dia_transportista_id_seq";
CREATE SEQUENCE "public"."stats_gps_dia_transportista_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_hora_patente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_hora_patente_id_seq";
CREATE SEQUENCE "public"."stats_gps_hora_patente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_hora_transportista_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_hora_transportista_id_seq";
CREATE SEQUENCE "public"."stats_gps_hora_transportista_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_hour_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_hour_id_seq";
CREATE SEQUENCE "public"."stats_gps_hour_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_hour_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_hour_id_seq1";
CREATE SEQUENCE "public"."stats_gps_hour_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_mes_patente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_mes_patente_id_seq";
CREATE SEQUENCE "public"."stats_gps_mes_patente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_mes_transportista_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_mes_transportista_id_seq";
CREATE SEQUENCE "public"."stats_gps_mes_transportista_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_month_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_month_id_seq";
CREATE SEQUENCE "public"."stats_gps_month_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_semana_patente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_semana_patente_id_seq";
CREATE SEQUENCE "public"."stats_gps_semana_patente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_semana_transportista_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_semana_transportista_id_seq";
CREATE SEQUENCE "public"."stats_gps_semana_transportista_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_week_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_week_id_seq";
CREATE SEQUENCE "public"."stats_gps_week_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_gps_week_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_gps_week_id_seq1";
CREATE SEQUENCE "public"."stats_gps_week_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_trafic_proveedor_day_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_trafic_proveedor_day_id_seq";
CREATE SEQUENCE "public"."stats_trafic_proveedor_day_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_trafic_proveedor_day_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_trafic_proveedor_day_id_seq1";
CREATE SEQUENCE "public"."stats_trafic_proveedor_day_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_trafic_proveedor_day_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_trafic_proveedor_day_id_seq2";
CREATE SEQUENCE "public"."stats_trafic_proveedor_day_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_trafic_proveedor_hour_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_trafic_proveedor_hour_id_seq";
CREATE SEQUENCE "public"."stats_trafic_proveedor_hour_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_trafic_proveedor_hour_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_trafic_proveedor_hour_id_seq1";
CREATE SEQUENCE "public"."stats_trafic_proveedor_hour_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_trafic_proveedor_hour_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_trafic_proveedor_hour_id_seq2";
CREATE SEQUENCE "public"."stats_trafic_proveedor_hour_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_trafic_proveedor_min_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_trafic_proveedor_min_id_seq";
CREATE SEQUENCE "public"."stats_trafic_proveedor_min_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_trafic_proveedor_min_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_trafic_proveedor_min_id_seq1";
CREATE SEQUENCE "public"."stats_trafic_proveedor_min_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_trafic_proveedor_min_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_trafic_proveedor_min_id_seq2";
CREATE SEQUENCE "public"."stats_trafic_proveedor_min_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_trafic_proveedor_month_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_trafic_proveedor_month_id_seq";
CREATE SEQUENCE "public"."stats_trafic_proveedor_month_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_trafic_proveedor_month_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_trafic_proveedor_month_id_seq1";
CREATE SEQUENCE "public"."stats_trafic_proveedor_month_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for stats_trafic_proveedor_month_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."stats_trafic_proveedor_month_id_seq2";
CREATE SEQUENCE "public"."stats_trafic_proveedor_month_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for trn_patentes_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."trn_patentes_id_seq";
CREATE SEQUENCE "public"."trn_patentes_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for trn_patentes_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."trn_patentes_id_seq1";
CREATE SEQUENCE "public"."trn_patentes_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for trn_patentes_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."trn_patentes_id_seq2";
CREATE SEQUENCE "public"."trn_patentes_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for trn_patentes_transportista_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."trn_patentes_transportista_id_seq";
CREATE SEQUENCE "public"."trn_patentes_transportista_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for trn_patentes_transportista_id_seq1
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."trn_patentes_transportista_id_seq1";
CREATE SEQUENCE "public"."trn_patentes_transportista_id_seq1" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for trn_patentes_transportista_id_seq2
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."trn_patentes_transportista_id_seq2";
CREATE SEQUENCE "public"."trn_patentes_transportista_id_seq2" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for trn_transportista_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."trn_transportista_id_seq";
CREATE SEQUENCE "public"."trn_transportista_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
CREATE SEQUENCE "public"."users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for cnf_colores
-- ----------------------------
DROP TABLE IF EXISTS "public"."cnf_colores";
CREATE TABLE "public"."cnf_colores" (
  "id" int4 NOT NULL DEFAULT nextval('cnf_colores_id_seq'::regclass),
  "inicio" int2 NOT NULL,
  "final" int2 NOT NULL,
  "color" char(7) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" varchar(35) COLLATE "pg_catalog"."default" NOT NULL,
  "deleted_at" timestamp(6),
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "unidad" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."cnf_colores"."id" IS 'Id unico del registro';
COMMENT ON COLUMN "public"."cnf_colores"."inicio" IS 'Valor inicial del rango';
COMMENT ON COLUMN "public"."cnf_colores"."final" IS 'Valor final del rango';
COMMENT ON COLUMN "public"."cnf_colores"."color" IS 'Color a aplicar al rango, en hexadecimal';
COMMENT ON COLUMN "public"."cnf_colores"."descripcion" IS 'Descripcion de donde aplica el rango';
COMMENT ON COLUMN "public"."cnf_colores"."deleted_at" IS 'Timestamp de borrado logico del registro';
COMMENT ON COLUMN "public"."cnf_colores"."created_at" IS 'Timestamp de creacion del registro';
COMMENT ON COLUMN "public"."cnf_colores"."updated_at" IS 'Timestamp de moficiacion del registro';
COMMENT ON COLUMN "public"."cnf_colores"."unidad" IS 'Unidad del rango: 1 porcewntaje, 2 cantidad';
COMMENT ON TABLE "public"."cnf_colores" IS 'Configuraci´ón de rango de colores de las patentes desarodenadas';

-- ----------------------------
-- Table structure for cnf_perfiles
-- ----------------------------
DROP TABLE IF EXISTS "public"."cnf_perfiles";
CREATE TABLE "public"."cnf_perfiles" (
  "id" int4 NOT NULL DEFAULT nextval('gb_perfiles_id_seq2'::regclass),
  "nombre" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "permisos" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."cnf_perfiles"."id" IS 'ID unico del registro';
COMMENT ON COLUMN "public"."cnf_perfiles"."nombre" IS 'Nombre del perfil del usuario';
COMMENT ON COLUMN "public"."cnf_perfiles"."permisos" IS 'Permisos del usuario';
COMMENT ON COLUMN "public"."cnf_perfiles"."created_at" IS 'Timestamp de creacion del registro';
COMMENT ON COLUMN "public"."cnf_perfiles"."updated_at" IS 'Timestamp de modificacion del registro';
COMMENT ON COLUMN "public"."cnf_perfiles"."deleted_at" IS 'Timestamp de borrado logico del registro';
COMMENT ON TABLE "public"."cnf_perfiles" IS 'Perrfiles dfe usuario';

-- ----------------------------
-- Table structure for cnf_tipo_accion
-- ----------------------------
DROP TABLE IF EXISTS "public"."cnf_tipo_accion";
CREATE TABLE "public"."cnf_tipo_accion" (
  "id" int4 NOT NULL DEFAULT nextval('cnf_tipo_accion_id_seq'::regclass),
  "text" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for cnf_vistas
-- ----------------------------
DROP TABLE IF EXISTS "public"."cnf_vistas";
CREATE TABLE "public"."cnf_vistas" (
  "id" int4 NOT NULL DEFAULT nextval('cnf_vistas_seq'::regclass),
  "modulo" varchar(255) COLLATE "pg_catalog"."default",
  "vista" varchar(255) COLLATE "pg_catalog"."default",
  "fecha_creacion" time(6) DEFAULT now()
)
;

-- ----------------------------
-- Table structure for desordenadas_dia
-- ----------------------------
DROP TABLE IF EXISTS "public"."desordenadas_dia";
CREATE TABLE "public"."desordenadas_dia" (
  "id" int8 NOT NULL DEFAULT nextval('desordenadas_dia_id_seq'::regclass),
  "transportista_id" int4,
  "proveedor_id" int4,
  "patente_id" int4,
  "imei_id" int4,
  "fecha" date NOT NULL,
  "dia" int2 NOT NULL,
  "cant" int4 NOT NULL,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."desordenadas_dia"."id" IS 'ID unico del registro';
COMMENT ON COLUMN "public"."desordenadas_dia"."transportista_id" IS 'ID del transportista';
COMMENT ON COLUMN "public"."desordenadas_dia"."proveedor_id" IS 'ID del proveedor de servicio GPS';
COMMENT ON COLUMN "public"."desordenadas_dia"."patente_id" IS 'ID de la patente';
COMMENT ON COLUMN "public"."desordenadas_dia"."imei_id" IS 'Id del IMEI';
COMMENT ON COLUMN "public"."desordenadas_dia"."fecha" IS 'Fecha de receepción de la cadena';
COMMENT ON COLUMN "public"."desordenadas_dia"."dia" IS 'Hora del marco del tiempo a evaluar (0-31)';
COMMENT ON COLUMN "public"."desordenadas_dia"."cant" IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';
COMMENT ON COLUMN "public"."desordenadas_dia"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."desordenadas_dia"."updated_at" IS 'Timestamp de modificación del registro';
COMMENT ON COLUMN "public"."desordenadas_dia"."deleted_at" IS 'Timestamp del borrado logico del registro';
COMMENT ON TABLE "public"."desordenadas_dia" IS 'Tabla de cadenas desordenadas recibidas por dia';

-- ----------------------------
-- Table structure for desordenadas_hora
-- ----------------------------
DROP TABLE IF EXISTS "public"."desordenadas_hora";
CREATE TABLE "public"."desordenadas_hora" (
  "id" int8 NOT NULL DEFAULT nextval('desordenadas_hora_id_seq'::regclass),
  "transportista_id" int4,
  "proveedor_id" int4,
  "patente_id" int4,
  "imei_id" int4,
  "fecha" date NOT NULL,
  "hora" int2 NOT NULL,
  "cant" int4 NOT NULL,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."desordenadas_hora"."id" IS 'ID unico del registro';
COMMENT ON COLUMN "public"."desordenadas_hora"."transportista_id" IS 'ID del transportista';
COMMENT ON COLUMN "public"."desordenadas_hora"."proveedor_id" IS 'ID del proveedor de servicio GPS';
COMMENT ON COLUMN "public"."desordenadas_hora"."patente_id" IS 'ID de la patente';
COMMENT ON COLUMN "public"."desordenadas_hora"."imei_id" IS 'Id del IMEI';
COMMENT ON COLUMN "public"."desordenadas_hora"."fecha" IS 'Fecha de receepción de la cadena';
COMMENT ON COLUMN "public"."desordenadas_hora"."hora" IS 'Hora del marco del tiempo a evaluar (0-24)';
COMMENT ON COLUMN "public"."desordenadas_hora"."cant" IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';
COMMENT ON COLUMN "public"."desordenadas_hora"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."desordenadas_hora"."updated_at" IS 'Timestamp de modificación del registro';
COMMENT ON COLUMN "public"."desordenadas_hora"."deleted_at" IS 'Timestamp del borrado logico del registro';
COMMENT ON TABLE "public"."desordenadas_hora" IS 'Tabla de cadenas desordenadas recibidas por hora';

-- ----------------------------
-- Table structure for desordenadas_mes
-- ----------------------------
DROP TABLE IF EXISTS "public"."desordenadas_mes";
CREATE TABLE "public"."desordenadas_mes" (
  "id" int8 NOT NULL DEFAULT nextval('desordenadas_mes_id_seq'::regclass),
  "transportista_id" int4,
  "proveedor_id" int4,
  "patente_id" int4,
  "imei_id" int4,
  "fecha" date NOT NULL,
  "mes" int2 NOT NULL,
  "cant" int4 NOT NULL,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."desordenadas_mes"."id" IS 'ID unico del registro';
COMMENT ON COLUMN "public"."desordenadas_mes"."transportista_id" IS 'ID del transportista';
COMMENT ON COLUMN "public"."desordenadas_mes"."proveedor_id" IS 'ID del proveedor de servicio GPS';
COMMENT ON COLUMN "public"."desordenadas_mes"."patente_id" IS 'ID de la patente';
COMMENT ON COLUMN "public"."desordenadas_mes"."imei_id" IS 'Id del IMEI';
COMMENT ON COLUMN "public"."desordenadas_mes"."fecha" IS 'Fecha de receepción de la cadena';
COMMENT ON COLUMN "public"."desordenadas_mes"."mes" IS 'Mes del marco del tiempo a evaluar (0-12)';
COMMENT ON COLUMN "public"."desordenadas_mes"."cant" IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';
COMMENT ON COLUMN "public"."desordenadas_mes"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."desordenadas_mes"."updated_at" IS 'Timestamp de modificación del registro';
COMMENT ON COLUMN "public"."desordenadas_mes"."deleted_at" IS 'Timestamp del borrado logico del registro';
COMMENT ON TABLE "public"."desordenadas_mes" IS 'Tabla de cadenas desordenadas recibidas por mes';

-- ----------------------------
-- Table structure for desordenadas_semana
-- ----------------------------
DROP TABLE IF EXISTS "public"."desordenadas_semana";
CREATE TABLE "public"."desordenadas_semana" (
  "id" int8 NOT NULL DEFAULT nextval('desordenadas_semana_id_seq'::regclass),
  "transportista_id" int4,
  "proveedor_id" int4,
  "patente_id" int4,
  "imei_id" int4,
  "fecha" date NOT NULL,
  "semana" int2 NOT NULL,
  "cant" int4 NOT NULL,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."desordenadas_semana"."id" IS 'ID unico del registro';
COMMENT ON COLUMN "public"."desordenadas_semana"."transportista_id" IS 'ID del transportista';
COMMENT ON COLUMN "public"."desordenadas_semana"."proveedor_id" IS 'ID del proveedor de servicio GPS';
COMMENT ON COLUMN "public"."desordenadas_semana"."patente_id" IS 'ID de la patente';
COMMENT ON COLUMN "public"."desordenadas_semana"."imei_id" IS 'Id del IMEI';
COMMENT ON COLUMN "public"."desordenadas_semana"."fecha" IS 'Fecha de receepción de la cadena';
COMMENT ON COLUMN "public"."desordenadas_semana"."semana" IS 'Semana del marco del tiempo a evaluar (0-52)';
COMMENT ON COLUMN "public"."desordenadas_semana"."cant" IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';
COMMENT ON COLUMN "public"."desordenadas_semana"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."desordenadas_semana"."updated_at" IS 'Timestamp de modificación del registro';
COMMENT ON COLUMN "public"."desordenadas_semana"."deleted_at" IS 'Timestamp del borrado logico del registro';
COMMENT ON TABLE "public"."desordenadas_semana" IS 'Tabla de cadenas desordenadas recibidas por semana';

-- ----------------------------
-- Table structure for gps_imei
-- ----------------------------
DROP TABLE IF EXISTS "public"."gps_imei";
CREATE TABLE "public"."gps_imei" (
  "id" int8 NOT NULL DEFAULT nextval('gps_imei_id_seq2'::regclass),
  "transportista_id" int4 NOT NULL DEFAULT nextval('gps_imei_transportista_id_seq2'::regclass),
  "proveedor_id" int8,
  "patente_id" int8,
  "imei" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."gps_imei"."id" IS 'ID unico del registro';
COMMENT ON COLUMN "public"."gps_imei"."transportista_id" IS 'ID del transportista al cualk pertenece la patente';
COMMENT ON COLUMN "public"."gps_imei"."proveedor_id" IS 'ID del proveefor de servicio GPS coion el cual se relaciona el IMEI';
COMMENT ON COLUMN "public"."gps_imei"."patente_id" IS 'ID de la patente con la cual se relaciona el IMWI';
COMMENT ON COLUMN "public"."gps_imei"."imei" IS 'C´ódigo IMEI del equipo';
COMMENT ON COLUMN "public"."gps_imei"."created_at" IS 'Timestamp de creacion del registro';
COMMENT ON COLUMN "public"."gps_imei"."updated_at" IS 'Timestamp de modificacion del registro';
COMMENT ON COLUMN "public"."gps_imei"."deleted_at" IS 'Timestamp de borrado logico del registro';
COMMENT ON TABLE "public"."gps_imei" IS 'Tabla de de IMEI vinculada a la patente y al transportista';

-- ----------------------------
-- Table structure for gps_proveedor
-- ----------------------------
DROP TABLE IF EXISTS "public"."gps_proveedor";
CREATE TABLE "public"."gps_proveedor" (
  "id" int4 NOT NULL DEFAULT nextval('gps_proveedor_id_seq2'::regclass),
  "razon_social" char(50) COLLATE "pg_catalog"."default" NOT NULL,
  "email" char(50) COLLATE "pg_catalog"."default" NOT NULL,
  "total" int4 NOT NULL,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."gps_proveedor"."id" IS 'Identificaciu´ón ´único del registro';
COMMENT ON COLUMN "public"."gps_proveedor"."razon_social" IS 'Razon sociual del proveedor del servicio GPS';
COMMENT ON COLUMN "public"."gps_proveedor"."email" IS 'Email del contacto del proveedor del sdervicio GPS';
COMMENT ON COLUMN "public"."gps_proveedor"."total" IS 'Cantidad total de vehiculos que maneja el proveedor del servicio GPS';
COMMENT ON COLUMN "public"."gps_proveedor"."created_at" IS 'Timestamp de creaci´ón del registro';
COMMENT ON COLUMN "public"."gps_proveedor"."updated_at" IS 'Timestamp de actiañizacion´ón del registro';
COMMENT ON COLUMN "public"."gps_proveedor"."deleted_at" IS 'Timestamp de borrado logico´ón del registro';
COMMENT ON TABLE "public"."gps_proveedor" IS 'Tabla del del provedor del dervicio GPS';

-- ----------------------------
-- Table structure for gps_real_time
-- ----------------------------
DROP TABLE IF EXISTS "public"."gps_real_time";
CREATE TABLE "public"."gps_real_time" (
  "id" int8 NOT NULL DEFAULT nextval('gps_real_time_id_seq2'::regclass),
  "rejected" bool DEFAULT false,
  "imei_id" int8,
  "transportista_id" int8,
  "proveedor_id" int8,
  "patente_id" int8,
  "timestamp_gps" timestamp(6),
  "timestamp_sys" timestamp(6),
  "frecuencia" time(6),
  "latencia" int4 NOT NULL,
  "ordenada" int2 NOT NULL DEFAULT 1,
  "motor" int2 NOT NULL DEFAULT 1,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "raw_data" text COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."gps_real_time"."id" IS 'Identificación única del registro';
COMMENT ON COLUMN "public"."gps_real_time"."rejected" IS 'Cadena rechazada proveniente del gps';
COMMENT ON COLUMN "public"."gps_real_time"."imei_id" IS 'ID del  IMEI';
COMMENT ON COLUMN "public"."gps_real_time"."proveedor_id" IS 'ID del proveefor del dercivio de GPS';
COMMENT ON COLUMN "public"."gps_real_time"."patente_id" IS 'ID de la patente';
COMMENT ON COLUMN "public"."gps_real_time"."timestamp_gps" IS 'Timestamp en la cual se generó la señal en el GPS';
COMMENT ON COLUMN "public"."gps_real_time"."timestamp_sys" IS 'Timestamp de la recepción de la data del GPS';
COMMENT ON COLUMN "public"."gps_real_time"."frecuencia" IS 'Diferencia de tiempo entre el registro actual y el anterior';
COMMENT ON COLUMN "public"."gps_real_time"."latencia" IS 'Latencia dek GPS';
COMMENT ON COLUMN "public"."gps_real_time"."ordenada" IS 'Indica si la fecha de recpción del datos es posterior al dato anterior, en cuyo caso su valor es 1; si la fecha de recepción es naterior al registro previo, su valor es 0';
COMMENT ON COLUMN "public"."gps_real_time"."motor" IS 'Indica si el dato fue enciado con el motor encendido o no; en caso de ser asi, su valor es 1, encaso contrario 0';
COMMENT ON COLUMN "public"."gps_real_time"."created_at" IS 'Timestamp de creación del registro';
COMMENT ON COLUMN "public"."gps_real_time"."updated_at" IS 'Timestamp de modificación del registro';
COMMENT ON COLUMN "public"."gps_real_time"."deleted_at" IS 'Timestamp de borrado lógico del registro';
COMMENT ON COLUMN "public"."gps_real_time"."raw_data" IS 'Data en bruto proveniente del GPS';
COMMENT ON TABLE "public"."gps_real_time" IS 'Tabla de almacenamiento de toda la data entrante';

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS "public"."logs";
CREATE TABLE "public"."logs" (
  "id" int8 NOT NULL DEFAULT nextval('logs_id_seq'::regclass),
  "vista_id" int8 NOT NULL,
  "descripcion" text COLLATE "pg_catalog"."default" NOT NULL,
  "datos_previos" json,
  "datos_nuevos" json,
  "usuario_id" int8 NOT NULL,
  "accion_id" int4 NOT NULL,
  "fecha_creacion" timestamp(6) DEFAULT CURRENT_TIMESTAMP
)
;
COMMENT ON COLUMN "public"."logs"."id" IS 'Identificador';
COMMENT ON COLUMN "public"."logs"."vista_id" IS 'Identificador del 3pl';
COMMENT ON COLUMN "public"."logs"."descripcion" IS 'Descripcioon';
COMMENT ON COLUMN "public"."logs"."datos_previos" IS 'Data antes de cambio';
COMMENT ON COLUMN "public"."logs"."datos_nuevos" IS 'Data nueva';
COMMENT ON COLUMN "public"."logs"."usuario_id" IS 'Usuario que ejecuta Accion';
COMMENT ON COLUMN "public"."logs"."accion_id" IS 'Tipo de Accion ejecutada';
COMMENT ON COLUMN "public"."logs"."fecha_creacion" IS 'Fecha Registro';

-- ----------------------------
-- Table structure for stats_gps_dia_patente
-- ----------------------------
DROP TABLE IF EXISTS "public"."stats_gps_dia_patente";
CREATE TABLE "public"."stats_gps_dia_patente" (
  "id" int8 NOT NULL DEFAULT nextval('stats_gps_dia_patente_id_seq'::regclass),
  "transportista_id" int4,
  "proveedor_id" int8,
  "patente_id" int4,
  "imei_id" int4,
  "fecha" date NOT NULL,
  "dia" int2 NOT NULL,
  "frecuencia_motor_on" time(6) NOT NULL,
  "frecuencia_motor_off" time(6) NOT NULL,
  "latencia" int4 NOT NULL,
  "q_patetentes_no_ign" int4 NOT NULL,
  "q_patentes_no_deteccion" int4 NOT NULL,
  "q_desordenadas" int4 NOT NULL,
  "created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."id" IS 'Identificacion unica del registro';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."transportista_id" IS 'ID del transportista';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."proveedor_id" IS 'Id del prtoveedor del servicio de GPS';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."patente_id" IS 'ID de la patente';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."imei_id" IS 'ID del IMEI del equipo';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."fecha" IS 'Fecha de la hora';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."dia" IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."frecuencia_motor_on" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."frecuencia_motor_off" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."latencia" IS 'Latencia promedio durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."q_patetentes_no_ign" IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."q_patentes_no_deteccion" IS 'Patentes sin evcentos las ´últimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."q_desordenadas" IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."updated_at" IS 'Timestamp de la última modificación del registro';
COMMENT ON COLUMN "public"."stats_gps_dia_patente"."deleted_at" IS 'Timestamp del borrado lógico del registro';
COMMENT ON TABLE "public"."stats_gps_dia_patente" IS 'Almacena las estadísticas por dia de la data por patente';

-- ----------------------------
-- Table structure for stats_gps_dia_transportista
-- ----------------------------
DROP TABLE IF EXISTS "public"."stats_gps_dia_transportista";
CREATE TABLE "public"."stats_gps_dia_transportista" (
  "id" int8 NOT NULL DEFAULT nextval('stats_gps_dia_transportista_id_seq'::regclass),
  "transportista_id" int8,
  "proveedor_id" int4,
  "fecha" date NOT NULL,
  "dia" int2 NOT NULL,
  "frecuencia_motor_on" time(6) NOT NULL,
  "frecuencia_motor_off" time(6) NOT NULL,
  "latencia" int4 NOT NULL,
  "q_patetentes_no_ign" int4 NOT NULL,
  "q_patentes_no_deteccion" int4 NOT NULL,
  "q_desordenadas" int4 NOT NULL,
  "created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."id" IS 'Identificacion unica del registro';
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."proveedor_id" IS 'ID del proveedor del servicio GPS';
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."fecha" IS 'Fecha de la hora';
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."dia" IS 'Dia del mes en la cual se genera el resúmen de la estadística, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."frecuencia_motor_on" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."frecuencia_motor_off" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."latencia" IS 'Latencia promedio durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."q_patetentes_no_ign" IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."q_patentes_no_deteccion" IS 'Patentes sin evcentos las ´últimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."q_desordenadas" IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."updated_at" IS 'Timestamp de la última modificación del registro';
COMMENT ON COLUMN "public"."stats_gps_dia_transportista"."deleted_at" IS 'Timestamp del borrado lógico del registro';
COMMENT ON TABLE "public"."stats_gps_dia_transportista" IS 'Almacena las estadísticas por hora de la data enviada por transportista';

-- ----------------------------
-- Table structure for stats_gps_hora_patente
-- ----------------------------
DROP TABLE IF EXISTS "public"."stats_gps_hora_patente";
CREATE TABLE "public"."stats_gps_hora_patente" (
  "id" int8 NOT NULL DEFAULT nextval('stats_gps_hora_patente_id_seq'::regclass),
  "transportista_id" int4,
  "proveedor_id" int8,
  "patente_id" int4,
  "imei_id" int4,
  "fecha" date NOT NULL,
  "hora" int2 NOT NULL,
  "frecuencia_motor_on" time(6) NOT NULL,
  "frecuencia_motor_off" time(6) NOT NULL,
  "latencia" int4 NOT NULL,
  "q_patetentes_no_ign" int4 NOT NULL,
  "q_patentes_no_deteccion" int4 NOT NULL,
  "q_desordenadas" int4 NOT NULL,
  "created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."id" IS 'Identificacion unica del registro';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."transportista_id" IS 'ID del transportista';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."proveedor_id" IS 'Id del prtoveedor del servicio de GPS';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."patente_id" IS 'ID de la patente';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."imei_id" IS 'ID del imei del equipo';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."fecha" IS 'Fecha de la hora';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."hora" IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."frecuencia_motor_on" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."frecuencia_motor_off" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."latencia" IS 'Latencia promedio durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."q_patetentes_no_ign" IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."q_patentes_no_deteccion" IS 'Patentes sin evcentos las ´últimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."q_desordenadas" IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."updated_at" IS 'Timestamp de la última modificación del registro';
COMMENT ON COLUMN "public"."stats_gps_hora_patente"."deleted_at" IS 'Timestamp del borrado lógico del registro';
COMMENT ON TABLE "public"."stats_gps_hora_patente" IS 'Almacena las estadísticas por hora de la data enviada por patente';

-- ----------------------------
-- Table structure for stats_gps_hora_transportista
-- ----------------------------
DROP TABLE IF EXISTS "public"."stats_gps_hora_transportista";
CREATE TABLE "public"."stats_gps_hora_transportista" (
  "id" int8 NOT NULL DEFAULT nextval('stats_gps_hora_transportista_id_seq'::regclass),
  "transportista_id" int8,
  "proveedor_id" int4,
  "fecha" date NOT NULL,
  "hora" int2 NOT NULL,
  "frecuencia_motor_on" time(6) NOT NULL,
  "frecuencia_motor_off" time(6) NOT NULL,
  "latencia" int4 NOT NULL,
  "q_patetentes_no_ign" int4 NOT NULL,
  "q_patentes_no_deteccion" int4 NOT NULL,
  "q_desordenadas" int4 NOT NULL,
  "created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."id" IS 'Identificacion unica del registro';
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."proveedor_id" IS 'ID del proveedor de servicios GPS';
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."fecha" IS 'Fecha de la hora';
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."hora" IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."frecuencia_motor_on" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."frecuencia_motor_off" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."latencia" IS 'Latencia promedio durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."q_patetentes_no_ign" IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."q_patentes_no_deteccion" IS 'Patentes sin evcentos las ´últimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."q_desordenadas" IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."updated_at" IS 'Timestamp de la última modificación del registro';
COMMENT ON COLUMN "public"."stats_gps_hora_transportista"."deleted_at" IS 'Timestamp del borrado lógico del registro';
COMMENT ON TABLE "public"."stats_gps_hora_transportista" IS 'Almacena las estadísticas por hora de la data enviada por lo sGPS transportista';

-- ----------------------------
-- Table structure for stats_gps_mes_patente
-- ----------------------------
DROP TABLE IF EXISTS "public"."stats_gps_mes_patente";
CREATE TABLE "public"."stats_gps_mes_patente" (
  "id" int8 NOT NULL DEFAULT nextval('stats_gps_mes_patente_id_seq'::regclass),
  "transportista_id" int4,
  "proveedor_id" int8,
  "patente_id" int4,
  "imei_id" int4,
  "fecha" date NOT NULL,
  "mes" int2 NOT NULL,
  "frecuencia_motor_on" time(6) NOT NULL,
  "frecuencia_motor_off" time(6) NOT NULL,
  "latencia" int4 NOT NULL,
  "q_patetentes_no_ign" int4 NOT NULL,
  "q_patentes_no_deteccion" int4 NOT NULL,
  "q_desordenadas" int4 NOT NULL,
  "created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."id" IS 'Identificacion unica del registro';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."transportista_id" IS 'ID del transportista';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."proveedor_id" IS 'Id del prtoveedor del servicio de GPS';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."patente_id" IS 'ID de la patente';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."imei_id" IS 'ID del IMEI del equuipo GPS';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."fecha" IS 'Fecha de la hora';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."mes" IS 'Mes del año en la cual se genera el resúmen de la estadística, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."frecuencia_motor_on" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."frecuencia_motor_off" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."latencia" IS 'Latencia promedio durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."q_patetentes_no_ign" IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."q_patentes_no_deteccion" IS 'Patentes sin evcentos las ´últimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."q_desordenadas" IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."updated_at" IS 'Timestamp de la última modificación del registro';
COMMENT ON COLUMN "public"."stats_gps_mes_patente"."deleted_at" IS 'Timestamp del borrado lógico del registro';
COMMENT ON TABLE "public"."stats_gps_mes_patente" IS 'Almacena las estadísticas por mes de la data por patente';

-- ----------------------------
-- Table structure for stats_gps_mes_transportista
-- ----------------------------
DROP TABLE IF EXISTS "public"."stats_gps_mes_transportista";
CREATE TABLE "public"."stats_gps_mes_transportista" (
  "id" int8 NOT NULL DEFAULT nextval('stats_gps_mes_transportista_id_seq'::regclass),
  "transportista_id" int8,
  "proveedor_id" int4,
  "fecha" date NOT NULL,
  "mes" int2 NOT NULL,
  "frecuencia_motor_on" time(6) NOT NULL,
  "frecuencia_motor_off" time(6) NOT NULL,
  "latencia" int4 NOT NULL,
  "q_patetentes_no_ign" int4 NOT NULL,
  "q_patentes_no_deteccion" int4 NOT NULL,
  "q_desordenadas" int4 NOT NULL,
  "created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."id" IS 'Identificacion unica del registro';
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."proveedor_id" IS 'ID del proveedor del servicio GPS';
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."fecha" IS 'Fecha de la hora';
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."mes" IS 'Mes del año en la cual se genera el resúmen de la estadística, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."frecuencia_motor_on" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."frecuencia_motor_off" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."latencia" IS 'Latencia promedio durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."q_patetentes_no_ign" IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."q_patentes_no_deteccion" IS 'Patentes sin evcentos las ´últimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."q_desordenadas" IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."updated_at" IS 'Timestamp de la última modificación del registro';
COMMENT ON COLUMN "public"."stats_gps_mes_transportista"."deleted_at" IS 'Timestamp del borrado lógico del registro';
COMMENT ON TABLE "public"."stats_gps_mes_transportista" IS 'Almacena las estadísticas por mes de la data enviada por transportista';

-- ----------------------------
-- Table structure for stats_gps_semana_patente
-- ----------------------------
DROP TABLE IF EXISTS "public"."stats_gps_semana_patente";
CREATE TABLE "public"."stats_gps_semana_patente" (
  "id" int8 NOT NULL DEFAULT nextval('stats_gps_semana_patente_id_seq'::regclass),
  "transportista_id" int4,
  "proveedor_id" int8,
  "patente_id" int4,
  "imei_id" int4,
  "fecha" date NOT NULL,
  "semana" int2 NOT NULL,
  "frecuencia_motor_on" time(6) NOT NULL,
  "frecuencia_motor_off" time(6) NOT NULL,
  "latencia" int4 NOT NULL,
  "q_patetentes_no_ign" int4 NOT NULL,
  "q_patentes_no_deteccion" int4 NOT NULL,
  "q_desordenadas" int4 NOT NULL,
  "created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."id" IS 'Identificacion unica del registro';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."transportista_id" IS 'ID del transportista';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."proveedor_id" IS 'Id del prtoveedor del servicio de GPS';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."patente_id" IS 'ID de la patente';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."imei_id" IS 'ID del IMEI del equipo GPS';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."fecha" IS 'Fecha de la hora';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."semana" IS 'Semana del año en la cual se genera el resúmen de la estadística, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."frecuencia_motor_on" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."frecuencia_motor_off" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."latencia" IS 'Latencia promedio durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."q_patetentes_no_ign" IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."q_patentes_no_deteccion" IS 'Patentes sin evcentos las ´últimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."q_desordenadas" IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."updated_at" IS 'Timestamp de la última modificación del registro';
COMMENT ON COLUMN "public"."stats_gps_semana_patente"."deleted_at" IS 'Timestamp del borrado lógico del registro';
COMMENT ON TABLE "public"."stats_gps_semana_patente" IS 'Almacena las estadísticas por semana de la data POR PATENTE';

-- ----------------------------
-- Table structure for stats_gps_semana_transportista
-- ----------------------------
DROP TABLE IF EXISTS "public"."stats_gps_semana_transportista";
CREATE TABLE "public"."stats_gps_semana_transportista" (
  "id" int8 NOT NULL DEFAULT nextval('stats_gps_semana_transportista_id_seq'::regclass),
  "transportista_id" int8,
  "proveedor_id" int4,
  "fecha" date NOT NULL,
  "semana" int2 NOT NULL,
  "frecuencia_motor_on" time(6) NOT NULL,
  "frecuencia_motor_off" time(6) NOT NULL,
  "latencia" int4 NOT NULL,
  "q_patetentes_no_ign" int4 NOT NULL,
  "q_patentes_no_deteccion" int4 NOT NULL,
  "q_desordenadas" int4 NOT NULL,
  "created_at" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."id" IS 'Identificacion unica del registro';
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."proveedor_id" IS 'ID del proveedor del servicio GPS';
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."fecha" IS 'Fecha de la hora';
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."semana" IS 'Semana del año en la cual se genera el resúmen de la estadística, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."frecuencia_motor_on" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."frecuencia_motor_off" IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."latencia" IS 'Latencia promedio durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."q_patetentes_no_ign" IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."q_patentes_no_deteccion" IS 'Patentes sin evcentos las ´últimas 24 horas';
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."q_desordenadas" IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."updated_at" IS 'Timestamp de la última modificación del registro';
COMMENT ON COLUMN "public"."stats_gps_semana_transportista"."deleted_at" IS 'Timestamp del borrado lógico del registro';
COMMENT ON TABLE "public"."stats_gps_semana_transportista" IS 'Almacena las estadísticas por semana de la data enviada por transportista';

-- ----------------------------
-- Table structure for stats_trafic_proveedor_day
-- ----------------------------
DROP TABLE IF EXISTS "public"."stats_trafic_proveedor_day";
CREATE TABLE "public"."stats_trafic_proveedor_day" (
  "id" int8 NOT NULL DEFAULT nextval('stats_trafic_proveedor_day_id_seq2'::regclass),
  "proveedor_id" int4,
  "fecha" date NOT NULL,
  "cantidad" int4 NOT NULL,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."stats_trafic_proveedor_day"."id" IS 'Identificador unico del registro';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_day"."proveedor_id" IS 'ID dfeñpr';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_day"."fecha" IS 'Fecha de la data';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_day"."cantidad" IS 'Cantidad recibidos en la ventana de tiempo';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_day"."created_at" IS 'Timestamp de la creación del registro';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_day"."updated_at" IS 'Timestamp de la ultima actualización del registro';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_day"."deleted_at" IS 'Timestamp del borrado logico del registro';
COMMENT ON TABLE "public"."stats_trafic_proveedor_day" IS 'Stadísitcas de tráfico del proveedor por minuto';

-- ----------------------------
-- Table structure for stats_trafic_proveedor_hour
-- ----------------------------
DROP TABLE IF EXISTS "public"."stats_trafic_proveedor_hour";
CREATE TABLE "public"."stats_trafic_proveedor_hour" (
  "id" int8 NOT NULL DEFAULT nextval('stats_trafic_proveedor_hour_id_seq2'::regclass),
  "proveedor_id" int4 NOT NULL,
  "fecha" date NOT NULL,
  "hora" int2 NOT NULL,
  "cantidad" int4 NOT NULL,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."stats_trafic_proveedor_hour"."id" IS 'Identificador unico del registro';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_hour"."proveedor_id" IS 'ID del probeedpr';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_hour"."fecha" IS 'Fecha de la data';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_hour"."hora" IS 'Hora de la data';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_hour"."cantidad" IS 'Cantidad recibidos en la ventana de tiempo';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_hour"."created_at" IS 'Timestamp de creación del registro';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_hour"."updated_at" IS 'Timestamp de última actualización del registro';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_hour"."deleted_at" IS 'Timestamp del borrado logico del registro';
COMMENT ON TABLE "public"."stats_trafic_proveedor_hour" IS 'Stadísitcas de tráfico del proveedor por hora';

-- ----------------------------
-- Table structure for stats_trafic_proveedor_min
-- ----------------------------
DROP TABLE IF EXISTS "public"."stats_trafic_proveedor_min";
CREATE TABLE "public"."stats_trafic_proveedor_min" (
  "id" int8 NOT NULL DEFAULT nextval('stats_trafic_proveedor_min_id_seq2'::regclass),
  "proveedor_id" int4 NOT NULL,
  "fecha" date NOT NULL,
  "hora" int2 NOT NULL,
  "minuto" int2 NOT NULL,
  "motor" int2 NOT NULL,
  "cantidad" int4 NOT NULL,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."stats_trafic_proveedor_min"."id" IS 'Identificador unico del registro';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_min"."proveedor_id" IS 'ID del probeedpr';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_min"."fecha" IS 'Fecha de la data';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_min"."hora" IS 'Hora de la data';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_min"."minuto" IS 'Minuto de la data (0 - 59)';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_min"."motor" IS 'Estado de ignici´ón del motor: 0 apagado  1 encendido';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_min"."cantidad" IS 'Cantidad recibidos en la ventana de tiempo';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_min"."created_at" IS 'Timestamp de creación del registro';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_min"."updated_at" IS 'Timestamp de última actualización del registro';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_min"."deleted_at" IS 'Timestamp del borrado logico del registro';
COMMENT ON TABLE "public"."stats_trafic_proveedor_min" IS 'Stadísitcas de tráfico del proveedor por minuto';

-- ----------------------------
-- Table structure for stats_trafic_proveedor_month
-- ----------------------------
DROP TABLE IF EXISTS "public"."stats_trafic_proveedor_month";
CREATE TABLE "public"."stats_trafic_proveedor_month" (
  "id" int8 NOT NULL DEFAULT nextval('stats_trafic_proveedor_month_id_seq2'::regclass),
  "proveedor_id" int4,
  "anio" int4,
  "mes" int2 NOT NULL,
  "cantidad" int4 NOT NULL,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."stats_trafic_proveedor_month"."id" IS 'Identificador unico del registro';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_month"."proveedor_id" IS 'ID del proveedor de servio GPS';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_month"."anio" IS 'Aniode del mes';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_month"."mes" IS 'Mes de la data (1-12)';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_month"."cantidad" IS 'Cantidad recibidos en la ventana de tiempo';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_month"."created_at" IS 'Timestamp de creación del registro';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_month"."updated_at" IS 'Timestamp de la ultima actualizacion del registro';
COMMENT ON COLUMN "public"."stats_trafic_proveedor_month"."deleted_at" IS 'Timestamp del borrado logico del registro';
COMMENT ON TABLE "public"."stats_trafic_proveedor_month" IS 'Stadísitcas de tráfico del proveedor por mes';

-- ----------------------------
-- Table structure for trn_patentes
-- ----------------------------
DROP TABLE IF EXISTS "public"."trn_patentes";
CREATE TABLE "public"."trn_patentes" (
  "id" int8 NOT NULL DEFAULT nextval('trn_patentes_id_seq2'::regclass),
  "transportista_id" int4 NOT NULL DEFAULT nextval('trn_patentes_transportista_id_seq2'::regclass),
  "patente" char(6) COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."trn_patentes"."id" IS 'ID unico del registro';
COMMENT ON COLUMN "public"."trn_patentes"."transportista_id" IS 'ID del transportista al cualk pertenece la patente';
COMMENT ON COLUMN "public"."trn_patentes"."patente" IS '´´umero de la patente';
COMMENT ON COLUMN "public"."trn_patentes"."created_at" IS 'Timestamp de creacion del registro';
COMMENT ON COLUMN "public"."trn_patentes"."updated_at" IS 'Timestamp de modificacion del registro';
COMMENT ON COLUMN "public"."trn_patentes"."deleted_at" IS 'Timestamp de borrado logico del registro';
COMMENT ON TABLE "public"."trn_patentes" IS 'Tabla de patentes de los transportistas';

-- ----------------------------
-- Table structure for trn_transportista
-- ----------------------------
DROP TABLE IF EXISTS "public"."trn_transportista";
CREATE TABLE "public"."trn_transportista" (
  "id" int4 NOT NULL DEFAULT nextval('trn_transportista_id_seq'::regclass),
  "razon_social" char(50) COLLATE "pg_catalog"."default" NOT NULL,
  "codigo" char(50) COLLATE "pg_catalog"."default" NOT NULL,
  "email" char(50) COLLATE "pg_catalog"."default" NOT NULL,
  "total" int4 NOT NULL,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6)
)
;
COMMENT ON COLUMN "public"."trn_transportista"."id" IS 'Identificaciu´ón ´único del registro';
COMMENT ON COLUMN "public"."trn_transportista"."razon_social" IS 'Razon sociual del proveedor del servicio GPS';
COMMENT ON COLUMN "public"."trn_transportista"."codigo" IS 'Dodigo del transportista';
COMMENT ON COLUMN "public"."trn_transportista"."email" IS 'Email del contacto del proveedor del sdervicio GPS';
COMMENT ON COLUMN "public"."trn_transportista"."total" IS 'Cantidad total de vehiculos que maneja el proveedor del servicio GPS';
COMMENT ON COLUMN "public"."trn_transportista"."created_at" IS 'Timestamp de creación del registro';
COMMENT ON COLUMN "public"."trn_transportista"."updated_at" IS 'Timestamp de actiañizacion´ón del registro';
COMMENT ON COLUMN "public"."trn_transportista"."deleted_at" IS 'Timestamp de borrado logico´ón del registro';
COMMENT ON TABLE "public"."trn_transportista" IS 'Tabla del del transportista';

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
  "id" int4 NOT NULL GENERATED BY DEFAULT AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "perfil_id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email_verified_at" timestamp(6),
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "avatar" text COLLATE "pg_catalog"."default",
  "remember_token" varchar(100) COLLATE "pg_catalog"."default",
  "bloqueado" bool DEFAULT false,
  "old_psw" text COLLATE "pg_catalog"."default",
  "two_steps" bool DEFAULT false,
  "created_at" timestamp(6) DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp(6),
  "deleted_at" timestamp(6),
  "vence" date,
  "activo" bool DEFAULT false
)
;
COMMENT ON COLUMN "public"."users"."id" IS 'ID unico del registro';
COMMENT ON COLUMN "public"."users"."perfil_id" IS 'ID del perfil del usuario';
COMMENT ON COLUMN "public"."users"."name" IS 'Nombre dek usuario';
COMMENT ON COLUMN "public"."users"."email" IS 'Emaik del usuario';
COMMENT ON COLUMN "public"."users"."email_verified_at" IS 'Timestamp de la verificacion del correo';
COMMENT ON COLUMN "public"."users"."password" IS 'Clave del usuario';
COMMENT ON COLUMN "public"."users"."avatar" IS 'Avatar deñ usuario';
COMMENT ON COLUMN "public"."users"."remember_token" IS 'Recordar toalen de usuario';
COMMENT ON COLUMN "public"."users"."bloqueado" IS 'Indica si el usuario est´á bloqueado o no';
COMMENT ON COLUMN "public"."users"."old_psw" IS 'Clave anterior';
COMMENT ON COLUMN "public"."users"."two_steps" IS 'Verificacion de dos factores';
COMMENT ON COLUMN "public"."users"."created_at" IS 'Timestamp de creacion del registro';
COMMENT ON COLUMN "public"."users"."updated_at" IS 'Timestamp de modificacion del registro';
COMMENT ON COLUMN "public"."users"."deleted_at" IS 'Timestamp de borrADO LOGICO del registro';
COMMENT ON COLUMN "public"."users"."vence" IS 'fecha de vencimiento del password';
COMMENT ON COLUMN "public"."users"."activo" IS 'Boleano para determinar si esta activo o no el usuario';
COMMENT ON TABLE "public"."users" IS 'Tabla de usuarios';

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cnf_colores_id_seq"
OWNED BY "public"."cnf_colores"."id";
SELECT setval('"public"."cnf_colores_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cnf_tipo_accion_id_seq"
OWNED BY "public"."cnf_tipo_accion"."id";
SELECT setval('"public"."cnf_tipo_accion_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."cnf_vistas_seq"
OWNED BY "public"."cnf_vistas"."id";
SELECT setval('"public"."cnf_vistas_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."desordenadas_dia_id_seq"
OWNED BY "public"."desordenadas_dia"."id";
SELECT setval('"public"."desordenadas_dia_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."desordenadas_hora_id_seq"
OWNED BY "public"."desordenadas_hora"."id";
SELECT setval('"public"."desordenadas_hora_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."desordenadas_mes_id_seq"
OWNED BY "public"."desordenadas_mes"."id";
SELECT setval('"public"."desordenadas_mes_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."desordenadas_semana_id_seq"
OWNED BY "public"."desordenadas_semana"."id";
SELECT setval('"public"."desordenadas_semana_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gb_perfiles_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gb_perfiles_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gb_perfiles_id_seq2"
OWNED BY "public"."cnf_perfiles"."id";
SELECT setval('"public"."gb_perfiles_id_seq2"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gps_imei_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gps_imei_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gps_imei_id_seq2"
OWNED BY "public"."gps_imei"."id";
SELECT setval('"public"."gps_imei_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gps_imei_transportista_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gps_imei_transportista_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gps_imei_transportista_id_seq2"
OWNED BY "public"."gps_imei"."transportista_id";
SELECT setval('"public"."gps_imei_transportista_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gps_proveedor_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gps_proveedor_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gps_proveedor_id_seq2"
OWNED BY "public"."gps_proveedor"."id";
SELECT setval('"public"."gps_proveedor_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gps_real_time_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gps_real_time_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."gps_real_time_id_seq2"
OWNED BY "public"."gps_real_time"."id";
SELECT setval('"public"."gps_real_time_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gps_transportista_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gps_transportista_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."logs_id_seq"', 14, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_gps_day_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_gps_day_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stats_gps_dia_patente_id_seq"
OWNED BY "public"."stats_gps_dia_patente"."id";
SELECT setval('"public"."stats_gps_dia_patente_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stats_gps_dia_transportista_id_seq"
OWNED BY "public"."stats_gps_dia_transportista"."id";
SELECT setval('"public"."stats_gps_dia_transportista_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stats_gps_hora_patente_id_seq"
OWNED BY "public"."stats_gps_hora_patente"."id";
SELECT setval('"public"."stats_gps_hora_patente_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stats_gps_hora_transportista_id_seq"
OWNED BY "public"."stats_gps_hora_transportista"."id";
SELECT setval('"public"."stats_gps_hora_transportista_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_gps_hour_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_gps_hour_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stats_gps_mes_patente_id_seq"
OWNED BY "public"."stats_gps_mes_patente"."id";
SELECT setval('"public"."stats_gps_mes_patente_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stats_gps_mes_transportista_id_seq"
OWNED BY "public"."stats_gps_mes_transportista"."id";
SELECT setval('"public"."stats_gps_mes_transportista_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_gps_month_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stats_gps_semana_patente_id_seq"
OWNED BY "public"."stats_gps_semana_patente"."id";
SELECT setval('"public"."stats_gps_semana_patente_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stats_gps_semana_transportista_id_seq"
OWNED BY "public"."stats_gps_semana_transportista"."id";
SELECT setval('"public"."stats_gps_semana_transportista_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_gps_week_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_gps_week_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_trafic_proveedor_day_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_trafic_proveedor_day_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stats_trafic_proveedor_day_id_seq2"
OWNED BY "public"."stats_trafic_proveedor_day"."id";
SELECT setval('"public"."stats_trafic_proveedor_day_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_trafic_proveedor_hour_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_trafic_proveedor_hour_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stats_trafic_proveedor_hour_id_seq2"
OWNED BY "public"."stats_trafic_proveedor_hour"."id";
SELECT setval('"public"."stats_trafic_proveedor_hour_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_trafic_proveedor_min_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_trafic_proveedor_min_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stats_trafic_proveedor_min_id_seq2"
OWNED BY "public"."stats_trafic_proveedor_min"."id";
SELECT setval('"public"."stats_trafic_proveedor_min_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_trafic_proveedor_month_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."stats_trafic_proveedor_month_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."stats_trafic_proveedor_month_id_seq2"
OWNED BY "public"."stats_trafic_proveedor_month"."id";
SELECT setval('"public"."stats_trafic_proveedor_month_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."trn_patentes_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."trn_patentes_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."trn_patentes_id_seq2"
OWNED BY "public"."trn_patentes"."id";
SELECT setval('"public"."trn_patentes_id_seq2"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."trn_patentes_transportista_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."trn_patentes_transportista_id_seq1"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."trn_patentes_transportista_id_seq2"
OWNED BY "public"."trn_patentes"."transportista_id";
SELECT setval('"public"."trn_patentes_transportista_id_seq2"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."trn_transportista_id_seq"
OWNED BY "public"."trn_transportista"."id";
SELECT setval('"public"."trn_transportista_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."users_id_seq"
OWNED BY "public"."users"."id";
SELECT setval('"public"."users_id_seq"', 7, true);

-- ----------------------------
-- Primary Key structure for table cnf_colores
-- ----------------------------
ALTER TABLE "public"."cnf_colores" ADD CONSTRAINT "pk_cnf_colores_id" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cnf_perfiles
-- ----------------------------
ALTER TABLE "public"."cnf_perfiles" ADD CONSTRAINT "pk_gb_perfiles_id" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cnf_tipo_accion
-- ----------------------------
ALTER TABLE "public"."cnf_tipo_accion" ADD CONSTRAINT "gb_tipo_accion_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table cnf_vistas
-- ----------------------------
ALTER TABLE "public"."cnf_vistas" ADD CONSTRAINT "cnf_vistas_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table desordenadas_dia
-- ----------------------------
CREATE INDEX "idx_desordenadas_dia" ON "public"."desordenadas_dia" USING btree (
  "proveedor_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_dia_0" ON "public"."desordenadas_dia" USING btree (
  "transportista_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_dia_1" ON "public"."desordenadas_dia" USING btree (
  "patente_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_dia_2" ON "public"."desordenadas_dia" USING btree (
  "fecha" "pg_catalog"."date_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_dia_3" ON "public"."desordenadas_dia" USING btree (
  "dia" "pg_catalog"."int2_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_dia_4" ON "public"."desordenadas_dia" USING btree (
  "imei_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_dia_5" ON "public"."desordenadas_dia" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "transportista_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "patente_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "imei_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "fecha" "pg_catalog"."date_ops" ASC NULLS LAST,
  "dia" "pg_catalog"."int2_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table desordenadas_hora
-- ----------------------------
CREATE INDEX "idx_desordenadas_hora" ON "public"."desordenadas_hora" USING btree (
  "transportista_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_hora_0" ON "public"."desordenadas_hora" USING btree (
  "proveedor_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_hora_1" ON "public"."desordenadas_hora" USING btree (
  "patente_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_hora_2" ON "public"."desordenadas_hora" USING btree (
  "fecha" "pg_catalog"."date_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_hora_3" ON "public"."desordenadas_hora" USING btree (
  "hora" "pg_catalog"."int2_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_hora_4" ON "public"."desordenadas_hora" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "transportista_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "patente_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "imei_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "fecha" "pg_catalog"."date_ops" ASC NULLS LAST,
  "hora" "pg_catalog"."int2_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_hora_5" ON "public"."desordenadas_hora" USING btree (
  "imei_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table desordenadas_hora
-- ----------------------------
ALTER TABLE "public"."desordenadas_hora" ADD CONSTRAINT "pk_desordenadas_hora_id" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table desordenadas_mes
-- ----------------------------
CREATE INDEX "idx_desordenadas_mes" ON "public"."desordenadas_mes" USING btree (
  "transportista_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_mes_0" ON "public"."desordenadas_mes" USING btree (
  "proveedor_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_mes_1" ON "public"."desordenadas_mes" USING btree (
  "patente_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_mes_2" ON "public"."desordenadas_mes" USING btree (
  "imei_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_mes_3" ON "public"."desordenadas_mes" USING btree (
  "fecha" "pg_catalog"."date_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_mes_4" ON "public"."desordenadas_mes" USING btree (
  "mes" "pg_catalog"."int2_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_mes_5" ON "public"."desordenadas_mes" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "transportista_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "patente_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "imei_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "fecha" "pg_catalog"."date_ops" ASC NULLS LAST,
  "mes" "pg_catalog"."int2_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table desordenadas_semana
-- ----------------------------
CREATE INDEX "idx_desordenadas_semana" ON "public"."desordenadas_semana" USING btree (
  "transportista_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_semana_0" ON "public"."desordenadas_semana" USING btree (
  "proveedor_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_semana_1" ON "public"."desordenadas_semana" USING btree (
  "patente_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_semana_2" ON "public"."desordenadas_semana" USING btree (
  "imei_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_semana_3" ON "public"."desordenadas_semana" USING btree (
  "fecha" "pg_catalog"."date_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_semana_4" ON "public"."desordenadas_semana" USING btree (
  "semana" "pg_catalog"."int2_ops" ASC NULLS LAST
);
CREATE INDEX "idx_desordenadas_semana_5" ON "public"."desordenadas_semana" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "transportista_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "patente_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "imei_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "fecha" "pg_catalog"."date_ops" ASC NULLS LAST,
  "semana" "pg_catalog"."int2_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table gps_imei
-- ----------------------------
CREATE INDEX "idx_gps_imei_0" ON "public"."gps_imei" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "transportista_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "patente_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table gps_imei
-- ----------------------------
ALTER TABLE "public"."gps_imei" ADD CONSTRAINT "unq_trn_patentes_transportista-id_0" UNIQUE ("transportista_id");
ALTER TABLE "public"."gps_imei" ADD CONSTRAINT "idx_gps_imei" UNIQUE ("imei");

-- ----------------------------
-- Primary Key structure for table gps_imei
-- ----------------------------
ALTER TABLE "public"."gps_imei" ADD CONSTRAINT "pk_trn_patentes_id_0" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table gps_proveedor
-- ----------------------------
ALTER TABLE "public"."gps_proveedor" ADD CONSTRAINT "pk_gps_transportista_id_0" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table gps_real_time
-- ----------------------------
CREATE INDEX "idx_gps_real_time" ON "public"."gps_real_time" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "imei_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "transportista_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "patente_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table gps_real_time
-- ----------------------------
ALTER TABLE "public"."gps_real_time" ADD CONSTRAINT "pk_gps_real_time_id" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table logs
-- ----------------------------
ALTER TABLE "public"."logs" ADD CONSTRAINT "logs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table stats_gps_dia_patente
-- ----------------------------
CREATE INDEX "idx_stats_gps_hour_4" ON "public"."stats_gps_dia_patente" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table stats_gps_dia_patente
-- ----------------------------
ALTER TABLE "public"."stats_gps_dia_patente" ADD CONSTRAINT "pk_stat_gps_hour_id_4" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table stats_gps_dia_transportista
-- ----------------------------
CREATE INDEX "idx_stats_gps_hour_0" ON "public"."stats_gps_dia_transportista" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "transportista_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table stats_gps_dia_transportista
-- ----------------------------
ALTER TABLE "public"."stats_gps_dia_transportista" ADD CONSTRAINT "pk_stat_gps_hour_id_0" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table stats_gps_hora_patente
-- ----------------------------
CREATE INDEX "idx_stats_gps_hour_3" ON "public"."stats_gps_hora_patente" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table stats_gps_hora_patente
-- ----------------------------
ALTER TABLE "public"."stats_gps_hora_patente" ADD CONSTRAINT "pk_stat_gps_hour_id_3" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table stats_gps_hora_transportista
-- ----------------------------
CREATE INDEX "idx_stats_gps_hour" ON "public"."stats_gps_hora_transportista" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "transportista_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table stats_gps_hora_transportista
-- ----------------------------
ALTER TABLE "public"."stats_gps_hora_transportista" ADD CONSTRAINT "pk_stat_gps_hour_id" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table stats_gps_mes_patente
-- ----------------------------
CREATE INDEX "idx_stats_gps_hour_6" ON "public"."stats_gps_mes_patente" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table stats_gps_mes_patente
-- ----------------------------
ALTER TABLE "public"."stats_gps_mes_patente" ADD CONSTRAINT "pk_stat_gps_hour_id_6" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table stats_gps_mes_transportista
-- ----------------------------
CREATE INDEX "idx_stats_gps_hour_2" ON "public"."stats_gps_mes_transportista" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "transportista_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table stats_gps_mes_transportista
-- ----------------------------
ALTER TABLE "public"."stats_gps_mes_transportista" ADD CONSTRAINT "pk_stat_gps_hour_id_2" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table stats_gps_semana_patente
-- ----------------------------
CREATE INDEX "idx_stats_gps_hour_5" ON "public"."stats_gps_semana_patente" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table stats_gps_semana_patente
-- ----------------------------
ALTER TABLE "public"."stats_gps_semana_patente" ADD CONSTRAINT "pk_stat_gps_hour_id_5" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table stats_gps_semana_transportista
-- ----------------------------
CREATE INDEX "idx_stats_gps_hour_1" ON "public"."stats_gps_semana_transportista" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "transportista_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table stats_gps_semana_transportista
-- ----------------------------
ALTER TABLE "public"."stats_gps_semana_transportista" ADD CONSTRAINT "pk_stat_gps_hour_id_1" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table stats_trafic_proveedor_day
-- ----------------------------
CREATE INDEX "idx_stats_trafic_proveedor_day" ON "public"."stats_trafic_proveedor_day" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table stats_trafic_proveedor_day
-- ----------------------------
ALTER TABLE "public"."stats_trafic_proveedor_day" ADD CONSTRAINT "pk_stats_trafic_proveedor_min_id_0" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table stats_trafic_proveedor_hour
-- ----------------------------
CREATE INDEX "idx_stats_trafic_proveedor_hour" ON "public"."stats_trafic_proveedor_hour" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table stats_trafic_proveedor_hour
-- ----------------------------
ALTER TABLE "public"."stats_trafic_proveedor_hour" ADD CONSTRAINT "pk_stats_trafic_proveedor_min_id_2" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table stats_trafic_proveedor_min
-- ----------------------------
CREATE INDEX "idx_stats_trafic_proveedor_min" ON "public"."stats_trafic_proveedor_min" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table stats_trafic_proveedor_min
-- ----------------------------
ALTER TABLE "public"."stats_trafic_proveedor_min" ADD CONSTRAINT "pk_stats_trafic_proveedor_min_id" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table stats_trafic_proveedor_month
-- ----------------------------
CREATE INDEX "idx_stats_trafic_proveedor_month" ON "public"."stats_trafic_proveedor_month" USING btree (
  "id" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "proveedor_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table stats_trafic_proveedor_month
-- ----------------------------
ALTER TABLE "public"."stats_trafic_proveedor_month" ADD CONSTRAINT "pk_stats_trafic_proveedor_min_id_1" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table trn_patentes
-- ----------------------------
ALTER TABLE "public"."trn_patentes" ADD CONSTRAINT "idx_trn_patentes" UNIQUE ("patente");

-- ----------------------------
-- Primary Key structure for table trn_patentes
-- ----------------------------
ALTER TABLE "public"."trn_patentes" ADD CONSTRAINT "pk_trn_patentes_id" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table trn_transportista
-- ----------------------------
ALTER TABLE "public"."trn_transportista" ADD CONSTRAINT "pk_gps_transportista_id" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE INDEX "idx_user_0" ON "public"."users" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "perfil_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "idx_user" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD CONSTRAINT "pk_user_id" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table desordenadas_dia
-- ----------------------------
ALTER TABLE "public"."desordenadas_dia" ADD CONSTRAINT "fk_desordenadas_dia_gps_imei" FOREIGN KEY ("imei_id") REFERENCES "public"."gps_imei" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."desordenadas_dia" ADD CONSTRAINT "fk_desordenadas_dia_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."desordenadas_dia" ADD CONSTRAINT "fk_desordenadas_dia_gps_transportista" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."desordenadas_dia" ADD CONSTRAINT "fk_desordenadas_dia_trn_patentes" FOREIGN KEY ("patente_id") REFERENCES "public"."trn_patentes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table desordenadas_hora
-- ----------------------------
ALTER TABLE "public"."desordenadas_hora" ADD CONSTRAINT "fk_desordenadas_hora_gps_imei" FOREIGN KEY ("imei_id") REFERENCES "public"."gps_imei" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."desordenadas_hora" ADD CONSTRAINT "fk_desordenadas_hora_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."desordenadas_hora" ADD CONSTRAINT "fk_desordenadas_hora_gps_transportista" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."desordenadas_hora" ADD CONSTRAINT "fk_desordenadas_hora_trn_patentes" FOREIGN KEY ("patente_id") REFERENCES "public"."trn_patentes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table desordenadas_mes
-- ----------------------------
ALTER TABLE "public"."desordenadas_mes" ADD CONSTRAINT "fk_desordenadas_mes_gps_imei" FOREIGN KEY ("imei_id") REFERENCES "public"."gps_imei" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."desordenadas_mes" ADD CONSTRAINT "fk_desordenadas_mes_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."desordenadas_mes" ADD CONSTRAINT "fk_desordenadas_mes_gps_transportista" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."desordenadas_mes" ADD CONSTRAINT "fk_desordenadas_mes_trn_patentes" FOREIGN KEY ("patente_id") REFERENCES "public"."trn_patentes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table desordenadas_semana
-- ----------------------------
ALTER TABLE "public"."desordenadas_semana" ADD CONSTRAINT "fk_desordenadas_semana_gps_imei" FOREIGN KEY ("imei_id") REFERENCES "public"."gps_imei" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."desordenadas_semana" ADD CONSTRAINT "fk_desordenadas_semana_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."desordenadas_semana" ADD CONSTRAINT "fk_desordenadas_semana_gps_transportista" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."desordenadas_semana" ADD CONSTRAINT "fk_desordenadas_semana_trn_patentes" FOREIGN KEY ("patente_id") REFERENCES "public"."trn_patentes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table gps_imei
-- ----------------------------
ALTER TABLE "public"."gps_imei" ADD CONSTRAINT "fk_gps_imei_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."gps_imei" ADD CONSTRAINT "fk_gps_imei_gps_transportista" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."gps_imei" ADD CONSTRAINT "fk_gps_imei_trn_patentes" FOREIGN KEY ("patente_id") REFERENCES "public"."trn_patentes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table gps_real_time
-- ----------------------------
ALTER TABLE "public"."gps_real_time" ADD CONSTRAINT "fk_gps_real_time_gps_imei" FOREIGN KEY ("patente_id") REFERENCES "public"."gps_imei" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."gps_real_time" ADD CONSTRAINT "fk_gps_real_time_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."gps_real_time" ADD CONSTRAINT "fk_gps_real_time_gps_transportista" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."gps_real_time" ADD CONSTRAINT "fk_gps_real_time_trn_patentes" FOREIGN KEY ("imei_id") REFERENCES "public"."trn_patentes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table logs
-- ----------------------------
ALTER TABLE "public"."logs" ADD CONSTRAINT "fk_l_accion_id" FOREIGN KEY ("accion_id") REFERENCES "public"."cnf_tipo_accion" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."logs" ADD CONSTRAINT "fk_l_usuario_id" FOREIGN KEY ("usuario_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."logs" ADD CONSTRAINT "fk_l_vista_id" FOREIGN KEY ("vista_id") REFERENCES "public"."cnf_vistas" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stats_gps_dia_patente
-- ----------------------------
ALTER TABLE "public"."stats_gps_dia_patente" ADD CONSTRAINT "fk_stats_gps_dia_patente_gps_imei" FOREIGN KEY ("imei_id") REFERENCES "public"."gps_imei" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_dia_patente" ADD CONSTRAINT "fk_stats_gps_dia_patente_gps_transportista" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_dia_patente" ADD CONSTRAINT "fk_stats_gps_dia_patente_gps_transportista_0" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_dia_patente" ADD CONSTRAINT "fk_stats_gps_dia_patente_trn_patentes" FOREIGN KEY ("patente_id") REFERENCES "public"."trn_patentes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_dia_patente" ADD CONSTRAINT "fk_stats_gps_hora_proveedor_gps_proveedor_0" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stats_gps_dia_transportista
-- ----------------------------
ALTER TABLE "public"."stats_gps_dia_transportista" ADD CONSTRAINT "fk_stats_gps_dia_transportista_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_dia_transportista" ADD CONSTRAINT "fk_stats_gps_hour_gps_transportista_0" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stats_gps_hora_patente
-- ----------------------------
ALTER TABLE "public"."stats_gps_hora_patente" ADD CONSTRAINT "fk_stats_gps_hora_patente_gps_imei" FOREIGN KEY ("imei_id") REFERENCES "public"."gps_imei" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_hora_patente" ADD CONSTRAINT "fk_stats_gps_hora_patente_gps_transportista" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_hora_patente" ADD CONSTRAINT "fk_stats_gps_hora_patente_trn_patentes" FOREIGN KEY ("patente_id") REFERENCES "public"."trn_patentes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_hora_patente" ADD CONSTRAINT "fk_stats_gps_hora_proveedor_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stats_gps_hora_transportista
-- ----------------------------
ALTER TABLE "public"."stats_gps_hora_transportista" ADD CONSTRAINT "fk_stats_gps_hora_transportista_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_hora_transportista" ADD CONSTRAINT "fk_stats_gps_hour_gps_transportista" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stats_gps_mes_patente
-- ----------------------------
ALTER TABLE "public"."stats_gps_mes_patente" ADD CONSTRAINT "fk_stats_gps_hora_proveedor_gps_proveedor_2" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_mes_patente" ADD CONSTRAINT "fk_stats_gps_mes_patente_gps_imei" FOREIGN KEY ("imei_id") REFERENCES "public"."gps_imei" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_mes_patente" ADD CONSTRAINT "fk_stats_gps_mes_patente_trn_patentes" FOREIGN KEY ("patente_id") REFERENCES "public"."trn_patentes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stats_gps_mes_transportista
-- ----------------------------
ALTER TABLE "public"."stats_gps_mes_transportista" ADD CONSTRAINT "fk_stats_gps_hour_gps_transportista_2" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_mes_transportista" ADD CONSTRAINT "fk_stats_gps_mes_transportista_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stats_gps_semana_patente
-- ----------------------------
ALTER TABLE "public"."stats_gps_semana_patente" ADD CONSTRAINT "fk_stats_gps_hora_proveedor_gps_proveedor_1" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_semana_patente" ADD CONSTRAINT "fk_stats_gps_semana_patente_gps_imei" FOREIGN KEY ("imei_id") REFERENCES "public"."gps_imei" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_semana_patente" ADD CONSTRAINT "fk_stats_gps_semana_patente_trn_patentes" FOREIGN KEY ("patente_id") REFERENCES "public"."trn_patentes" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stats_gps_semana_transportista
-- ----------------------------
ALTER TABLE "public"."stats_gps_semana_transportista" ADD CONSTRAINT "fk_stats_gps_hour_gps_transportista_1" FOREIGN KEY ("transportista_id") REFERENCES "public"."trn_transportista" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."stats_gps_semana_transportista" ADD CONSTRAINT "fk_stats_gps_semana_transportista_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stats_trafic_proveedor_day
-- ----------------------------
ALTER TABLE "public"."stats_trafic_proveedor_day" ADD CONSTRAINT "fk_stats_trafic_proveedor_day_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stats_trafic_proveedor_hour
-- ----------------------------
ALTER TABLE "public"."stats_trafic_proveedor_hour" ADD CONSTRAINT "fk_stats_trafic_proveedor_min_gps_proveedor_0" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stats_trafic_proveedor_min
-- ----------------------------
ALTER TABLE "public"."stats_trafic_proveedor_min" ADD CONSTRAINT "fk_stats_trafic_proveedor_min_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table stats_trafic_proveedor_month
-- ----------------------------
ALTER TABLE "public"."stats_trafic_proveedor_month" ADD CONSTRAINT "fk_stats_trafic_proveedor_month_gps_proveedor" FOREIGN KEY ("proveedor_id") REFERENCES "public"."gps_proveedor" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
