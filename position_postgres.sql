ALTER TABLE "public".desordenadas_dia DROP CONSTRAINT fk_desordenadas_dia_gps_transportista;

ALTER TABLE "public".desordenadas_hora DROP CONSTRAINT fk_desordenadas_hora_gps_transportista;

ALTER TABLE "public".desordenadas_mes DROP CONSTRAINT fk_desordenadas_mes_gps_transportista;

ALTER TABLE "public".desordenadas_semana DROP CONSTRAINT fk_desordenadas_semana_gps_transportista;

ALTER TABLE "public".gps_imei DROP CONSTRAINT fk_gps_imei_gps_transportista;

ALTER TABLE "public".gps_real_time DROP CONSTRAINT fk_gps_real_time_gps_transportista;

ALTER TABLE "public".stats_gps_dia_patente DROP CONSTRAINT fk_stats_gps_dia_patente_gps_transportista_0;

ALTER TABLE "public".stats_gps_dia_transportista DROP CONSTRAINT fk_stats_gps_hour_gps_transportista_0;

ALTER TABLE "public".stats_gps_hora_patente DROP CONSTRAINT fk_stats_gps_hora_patente_gps_transportista;

ALTER TABLE "public".stats_gps_hora_transportista DROP CONSTRAINT fk_stats_gps_hour_gps_transportista;

ALTER TABLE "public".stats_gps_mes_transportista DROP CONSTRAINT fk_stats_gps_hour_gps_transportista_2;

ALTER TABLE "public".stats_gps_semana_transportista DROP CONSTRAINT fk_stats_gps_hour_gps_transportista_1;

ALTER TABLE "public".users DROP COLUMN vence;

ALTER TABLE "public".users DROP COLUMN activo;

DROP TABLE "public".cnf_perfiles CASCADE;

DROP TABLE "public".cnf_tipo_accion CASCADE;

DROP TABLE "public".cnf_vistas CASCADE;

DROP TABLE "public".logs CASCADE;

DROP TABLE "public".trn_transportista CASCADE;

CREATE SEQUENCE "public".user_id_seq START WITH 1;

ALTER TABLE "public".desordenadas_dia ADD CONSTRAINT fk_desordenadas_dia_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".desordenadas_hora ADD CONSTRAINT fk_desordenadas_hora_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".desordenadas_mes ADD CONSTRAINT fk_desordenadas_mes_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".desordenadas_semana ADD CONSTRAINT fk_desordenadas_semana_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".gps_imei ADD CONSTRAINT fk_gps_imei_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".gps_real_time ADD CONSTRAINT fk_gps_real_time_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".stats_gps_dia_patente ADD total_cadenas integer  NOT NULL ;

COMMENT ON COLUMN "public".stats_gps_dia_patente.total_cadenas IS 'Total de cadenas para una patente por dia';

ALTER TABLE "public".stats_gps_dia_patente ADD total_cadenas_problemas integer  NOT NULL ;

COMMENT ON COLUMN "public".stats_gps_dia_patente.total_cadenas_problemas IS 'Total de cadenas para una patente con problemas por dia';

ALTER TABLE "public".stats_gps_dia_patente ADD CONSTRAINT fk_stats_gps_dia_patente_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".stats_gps_dia_patente ADD CONSTRAINT fk_stats_gps_dia_patente_gps_transportista_0 FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".stats_gps_dia_transportista ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_0 FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".stats_gps_hora_patente ADD total_cadenas integer  NOT NULL ;

COMMENT ON COLUMN "public".stats_gps_hora_patente.total_cadenas IS 'Total de cadenas para una patente por hora';

ALTER TABLE "public".stats_gps_hora_patente ADD total_cadenas_problemas integer  NOT NULL ;

COMMENT ON COLUMN "public".stats_gps_hora_patente.total_cadenas_problemas IS 'Total de cadenas con problemas por hora';

ALTER TABLE "public".stats_gps_hora_patente ADD CONSTRAINT fk_stats_gps_hora_patente_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".stats_gps_hora_transportista ADD CONSTRAINT fk_stats_gps_hour_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".stats_gps_mes_patente ADD total_cadenas integer  NOT NULL ;

COMMENT ON COLUMN "public".stats_gps_mes_patente.total_cadenas IS 'Total de cadenas para una patente por mes';

ALTER TABLE "public".stats_gps_mes_patente ADD total_patentes_problemas integer  NOT NULL ;

COMMENT ON COLUMN "public".stats_gps_mes_patente.total_patentes_problemas IS 'Total de cadenas para una patente con problemas por mes';

ALTER TABLE "public".stats_gps_mes_transportista ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_2 FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".stats_gps_semana_patente ADD total_cadenas integer  NOT NULL ;

COMMENT ON COLUMN "public".stats_gps_semana_patente.total_cadenas IS 'Total de cadenas para una patente por semana';

ALTER TABLE "public".stats_gps_semana_patente ADD total_cadenas_problemas integer  NOT NULL ;

COMMENT ON COLUMN "public".stats_gps_semana_patente.total_cadenas_problemas IS 'Total de cadenas para una patente con problemas por semana';

ALTER TABLE "public".stats_gps_semana_transportista ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_1 FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id )  ;

ALTER TABLE "public".trn_patentes ADD CONSTRAINT "unq_trn_patentes_transportista-id" UNIQUE ( transportista_id ) ;

ALTER TABLE "public".users ADD CONSTRAINT fk_user_gb_perfiles FOREIGN KEY ( perfil_id ) REFERENCES "public".gb_perfiles( id )  ;

CREATE  TABLE "public".gb_perfiles ( 
	id                   serial  NOT NULL ,
	nombre               varchar(150)  NOT NULL ,
	permisos             text  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_gb_perfiles_id PRIMARY KEY ( id )
 ) ;

COMMENT ON TABLE "public".gb_perfiles IS 'Perrfiles dfe usuario';

COMMENT ON COLUMN "public".gb_perfiles.id IS 'ID unico del registro';

COMMENT ON COLUMN "public".gb_perfiles.nombre IS 'Nombre del perfil del usuario';

COMMENT ON COLUMN "public".gb_perfiles.permisos IS 'Permisos del usuario';

COMMENT ON COLUMN "public".gb_perfiles.created_at IS 'Timestamp de creacion del registro';

COMMENT ON COLUMN "public".gb_perfiles.updated_at IS 'Timestamp de modificacion del registro';

COMMENT ON COLUMN "public".gb_perfiles.deleted_at IS 'Timestamp de borrado logico del registro';

CREATE  TABLE "public".gps_transportista ( 
	id                   serial  NOT NULL ,
	razon_social         char(50)  NOT NULL ,
	codigo               char(50)  NOT NULL ,
	email                char(50)  NOT NULL ,
	total                integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_gps_transportista_id PRIMARY KEY ( id )
 ) ;

COMMENT ON TABLE "public".gps_transportista IS 'Tabla del del transportista';

COMMENT ON COLUMN "public".gps_transportista.id IS 'Identificaciu´ón ´único del registro';

COMMENT ON COLUMN "public".gps_transportista.razon_social IS 'Razon sociual del proveedor del servicio GPS';

COMMENT ON COLUMN "public".gps_transportista.codigo IS 'Dodigo del transportista';

COMMENT ON COLUMN "public".gps_transportista.email IS 'Email del contacto del proveedor del sdervicio GPS';

COMMENT ON COLUMN "public".gps_transportista.total IS 'Cantidad total de vehiculos que maneja el proveedor del servicio GPS';

COMMENT ON COLUMN "public".gps_transportista.created_at IS 'Timestamp de creaci´ón del registro';

COMMENT ON COLUMN "public".gps_transportista.updated_at IS 'Timestamp de actiañizacion´ón del registro';

COMMENT ON COLUMN "public".gps_transportista.deleted_at IS 'Timestamp de borrado logico´ón del registro';

CREATE OR REPLACE FUNCTION public.akeys(hstore)
 RETURNS text[]
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_akeys$function$
;;

CREATE OR REPLACE FUNCTION public.avals(hstore)
 RETURNS text[]
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_avals$function$
;;

CREATE OR REPLACE FUNCTION public.defined(hstore, text)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_defined$function$
;;

CREATE OR REPLACE FUNCTION public.delete(hstore, hstore)
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_delete_hstore$function$
;;

CREATE OR REPLACE FUNCTION public.delete(hstore, text[])
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_delete_array$function$
;;

CREATE OR REPLACE FUNCTION public.delete(hstore, text)
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_delete$function$
;;

CREATE OR REPLACE FUNCTION public.each(hs hstore, OUT key text, OUT value text)
 RETURNS SETOF record
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_each$function$
;;

CREATE OR REPLACE FUNCTION public.exist(hstore, text)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_exists$function$
;;

CREATE OR REPLACE FUNCTION public.exists_all(hstore, text[])
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_exists_all$function$
;;

CREATE OR REPLACE FUNCTION public.exists_any(hstore, text[])
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_exists_any$function$
;;

CREATE OR REPLACE FUNCTION public.fetchval(hstore, text)
 RETURNS text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_fetchval$function$
;;

CREATE OR REPLACE FUNCTION public.ghstore_compress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$ghstore_compress$function$
;;

CREATE OR REPLACE FUNCTION public.ghstore_consistent(internal, hstore, smallint, oid, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$ghstore_consistent$function$
;;

CREATE OR REPLACE FUNCTION public.ghstore_decompress(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$ghstore_decompress$function$
;;

CREATE OR REPLACE FUNCTION public.ghstore_in(cstring)
 RETURNS ghstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$ghstore_in$function$
;;

CREATE OR REPLACE FUNCTION public.ghstore_out(ghstore)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$ghstore_out$function$
;;

CREATE OR REPLACE FUNCTION public.ghstore_penalty(internal, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$ghstore_penalty$function$
;;

CREATE OR REPLACE FUNCTION public.ghstore_picksplit(internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$ghstore_picksplit$function$
;;

CREATE OR REPLACE FUNCTION public.ghstore_same(ghstore, ghstore, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$ghstore_same$function$
;;

CREATE OR REPLACE FUNCTION public.ghstore_union(internal, internal)
 RETURNS ghstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$ghstore_union$function$
;;

CREATE OR REPLACE FUNCTION public.gin_consistent_hstore(internal, smallint, hstore, integer, internal, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$gin_consistent_hstore$function$
;;

CREATE OR REPLACE FUNCTION public.gin_extract_hstore(hstore, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$gin_extract_hstore$function$
;;

CREATE OR REPLACE FUNCTION public.gin_extract_hstore_query(hstore, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$gin_extract_hstore_query$function$
;;

CREATE OR REPLACE FUNCTION public.hs_concat(hstore, hstore)
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_concat$function$
;;

CREATE OR REPLACE FUNCTION public.hs_contained(hstore, hstore)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_contained$function$
;;

CREATE OR REPLACE FUNCTION public.hs_contains(hstore, hstore)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_contains$function$
;;

CREATE OR REPLACE FUNCTION public.hstore(record)
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/hstore', $function$hstore_from_record$function$
;;

CREATE OR REPLACE FUNCTION public.hstore(text[])
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_from_array$function$
;;

CREATE OR REPLACE FUNCTION public.hstore(text[], text[])
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/hstore', $function$hstore_from_arrays$function$
;;

CREATE OR REPLACE FUNCTION public.hstore(text, text)
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/hstore', $function$hstore_from_text$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_cmp(hstore, hstore)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_cmp$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_eq(hstore, hstore)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_eq$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_ge(hstore, hstore)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_ge$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_gt(hstore, hstore)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_gt$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_hash(hstore)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_hash$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_hash_extended(hstore, bigint)
 RETURNS bigint
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_hash_extended$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_in(cstring)
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_in$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_le(hstore, hstore)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_le$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_lt(hstore, hstore)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_lt$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_ne(hstore, hstore)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_ne$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_out(hstore)
 RETURNS cstring
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_out$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_recv(internal)
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_recv$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_send(hstore)
 RETURNS bytea
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_send$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_to_array(hstore)
 RETURNS text[]
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_to_array$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_to_json(hstore)
 RETURNS json
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_to_json$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_to_json_loose(hstore)
 RETURNS json
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_to_json_loose$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_to_jsonb(hstore)
 RETURNS jsonb
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_to_jsonb$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_to_jsonb_loose(hstore)
 RETURNS jsonb
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_to_jsonb_loose$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_to_matrix(hstore)
 RETURNS text[]
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_to_matrix$function$
;;

CREATE OR REPLACE FUNCTION public.hstore_version_diag(hstore)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_version_diag$function$
;;

CREATE OR REPLACE FUNCTION public.isdefined(hstore, text)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_defined$function$
;;

CREATE OR REPLACE FUNCTION public.isexists(hstore, text)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_exists$function$
;;

CREATE OR REPLACE FUNCTION public.populate_record(anyelement, hstore)
 RETURNS anyelement
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/hstore', $function$hstore_populate_record$function$
;;

CREATE OR REPLACE FUNCTION public.skeys(hstore)
 RETURNS SETOF text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_skeys$function$
;;

CREATE OR REPLACE FUNCTION public.slice(hstore, text[])
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_slice_to_hstore$function$
;;

CREATE OR REPLACE FUNCTION public.slice_array(hstore, text[])
 RETURNS text[]
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_slice_to_array$function$
;;

CREATE OR REPLACE FUNCTION public.svals(hstore)
 RETURNS SETOF text
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_svals$function$
;;

CREATE OR REPLACE FUNCTION public.tconvert(text, text)
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/hstore', $function$hstore_from_text$function$
;;

ALTER TABLE "public".cnf_colores ALTER COLUMN created_at SET DEFAULT current_timestamp;

ALTER TABLE "public".desordenadas_dia ALTER COLUMN created_at SET DEFAULT current_timestamp;

ALTER TABLE "public".desordenadas_hora ALTER COLUMN created_at SET DEFAULT current_timestamp;

ALTER TABLE "public".desordenadas_mes ALTER COLUMN created_at SET DEFAULT current_timestamp;

ALTER TABLE "public".desordenadas_semana ALTER COLUMN created_at SET DEFAULT current_timestamp;

ALTER TABLE "public".users ALTER COLUMN email_verified_at SET NOT NULL;

DROP SEQUENCE "public".cnf_colores_id_seq;

DROP SEQUENCE "public".cnf_tipo_accion_id_seq;

DROP SEQUENCE "public".cnf_vistas_seq;

DROP SEQUENCE "public".desordenadas_dia_id_seq;

DROP SEQUENCE "public".desordenadas_hora_id_seq;

DROP SEQUENCE "public".desordenadas_mes_id_seq;

DROP SEQUENCE "public".desordenadas_semana_id_seq;

DROP SEQUENCE "public".gb_perfiles_id_seq2;

DROP SEQUENCE "public".gps_imei_id_seq2;

DROP SEQUENCE "public".gps_imei_transportista_id_seq2;

DROP SEQUENCE "public".gps_proveedor_id_seq2;

DROP SEQUENCE "public".gps_real_time_id_seq2;

DROP SEQUENCE "public".logs_id_seq;

DROP SEQUENCE "public".stats_gps_dia_patente_id_seq;

DROP SEQUENCE "public".stats_gps_dia_transportista_id_seq;

DROP SEQUENCE "public".stats_gps_hora_patente_id_seq;

DROP SEQUENCE "public".stats_gps_hora_transportista_id_seq;

DROP SEQUENCE "public".stats_gps_mes_patente_id_seq;

DROP SEQUENCE "public".stats_gps_mes_transportista_id_seq;

DROP SEQUENCE "public".stats_gps_semana_patente_id_seq;

DROP SEQUENCE "public".stats_gps_semana_transportista_id_seq;

DROP SEQUENCE "public".stats_trafic_proveedor_day_id_seq2;

DROP SEQUENCE "public".stats_trafic_proveedor_hour_id_seq2;

DROP SEQUENCE "public".stats_trafic_proveedor_min_id_seq2;

DROP SEQUENCE "public".stats_trafic_proveedor_month_id_seq2;

DROP SEQUENCE "public".trn_patentes_id_seq2;

DROP SEQUENCE "public".trn_patentes_transportista_id_seq2;

DROP SEQUENCE "public".trn_transportista_id_seq;

DROP SEQUENCE "public".users_id_seq;

COMMENT ON TABLE "public".cnf_colores IS 'Configuraci´ón de rango de colores de las patentes desarodenadas';

COMMENT ON COLUMN "public".desordenadas_dia.fecha IS 'Fecha de receepción de la cadena';

COMMENT ON COLUMN "public".desordenadas_dia.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".desordenadas_dia.updated_at IS 'Timestamp de modificación del registro';

COMMENT ON COLUMN "public".desordenadas_hora.fecha IS 'Fecha de receepción de la cadena';

COMMENT ON COLUMN "public".desordenadas_hora.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".desordenadas_hora.updated_at IS 'Timestamp de modificación del registro';

COMMENT ON COLUMN "public".desordenadas_mes.fecha IS 'Fecha de receepción de la cadena';

COMMENT ON COLUMN "public".desordenadas_mes.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".desordenadas_mes.updated_at IS 'Timestamp de modificación del registro';

COMMENT ON COLUMN "public".desordenadas_semana.fecha IS 'Fecha de receepción de la cadena';

COMMENT ON COLUMN "public".desordenadas_semana.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".desordenadas_semana.updated_at IS 'Timestamp de modificación del registro';

COMMENT ON COLUMN "public".gps_imei.imei IS 'C´ódigo IMEI del equipo';

COMMENT ON COLUMN "public".gps_proveedor.id IS 'Identificaciu´ón ´único del registro';

COMMENT ON COLUMN "public".gps_proveedor.created_at IS 'Timestamp de creaci´ón del registro';

COMMENT ON COLUMN "public".gps_proveedor.updated_at IS 'Timestamp de actiañizacion´ón del registro';

COMMENT ON COLUMN "public".gps_proveedor.deleted_at IS 'Timestamp de borrado logico´ón del registro';

COMMENT ON COLUMN "public".gps_real_time.id IS 'Identificación única del registro';

COMMENT ON COLUMN "public".gps_real_time.timestamp_gps IS 'Timestamp en la cual se generó la señal en el GPS';

COMMENT ON COLUMN "public".gps_real_time.timestamp_sys IS 'Timestamp de la recepción de la data del GPS';

COMMENT ON COLUMN "public".gps_real_time.ordenada IS 'Indica si la fecha de recpción del datos es posterior al dato anterior, en cuyo caso su valor es 1; si la fecha de recepción es naterior al registro previo, su valor es 0';

COMMENT ON COLUMN "public".gps_real_time.created_at IS 'Timestamp de creación del registro';

COMMENT ON COLUMN "public".gps_real_time.updated_at IS 'Timestamp de modificación del registro';

COMMENT ON COLUMN "public".gps_real_time.deleted_at IS 'Timestamp de borrado lógico del registro';

COMMENT ON TABLE "public".stats_gps_dia_patente IS 'Almacena las estadísticas por dia de la data por patente';

COMMENT ON COLUMN "public".stats_gps_dia_patente.dia IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_dia_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';

COMMENT ON COLUMN "public".stats_gps_dia_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';

COMMENT ON COLUMN "public".stats_gps_dia_patente.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_dia_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_dia_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_dia_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_dia_patente.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_dia_patente.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_dia_patente.deleted_at IS 'Timestamp del borrado lógico del registro';

COMMENT ON TABLE "public".stats_gps_dia_transportista IS 'Almacena las estadísticas por hora de la data enviada por transportista';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.dia IS 'Dia del mes en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.deleted_at IS 'Timestamp del borrado lógico del registro';

COMMENT ON TABLE "public".stats_gps_hora_patente IS 'Almacena las estadísticas por hora de la data enviada por patente';

COMMENT ON COLUMN "public".stats_gps_hora_patente.hora IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hora_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';

COMMENT ON COLUMN "public".stats_gps_hora_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';

COMMENT ON COLUMN "public".stats_gps_hora_patente.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hora_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_hora_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_hora_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hora_patente.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_hora_patente.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_hora_patente.deleted_at IS 'Timestamp del borrado lógico del registro';

COMMENT ON TABLE "public".stats_gps_hora_transportista IS 'Almacena las estadísticas por hora de la data enviada por lo sGPS transportista';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.hora IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.deleted_at IS 'Timestamp del borrado lógico del registro';

COMMENT ON TABLE "public".stats_gps_mes_patente IS 'Almacena las estadísticas por mes de la data por patente';

COMMENT ON COLUMN "public".stats_gps_mes_patente.mes IS 'Mes del año en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_mes_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';

COMMENT ON COLUMN "public".stats_gps_mes_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';

COMMENT ON COLUMN "public".stats_gps_mes_patente.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_mes_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_mes_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_mes_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_mes_patente.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_mes_patente.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_mes_patente.deleted_at IS 'Timestamp del borrado lógico del registro';

COMMENT ON TABLE "public".stats_gps_mes_transportista IS 'Almacena las estadísticas por mes de la data enviada por transportista';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.mes IS 'Mes del año en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.deleted_at IS 'Timestamp del borrado lógico del registro';

COMMENT ON TABLE "public".stats_gps_semana_patente IS 'Almacena las estadísticas por semana de la data POR PATENTE';

COMMENT ON COLUMN "public".stats_gps_semana_patente.semana IS 'Semana del año en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_semana_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';

COMMENT ON COLUMN "public".stats_gps_semana_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';

COMMENT ON COLUMN "public".stats_gps_semana_patente.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_semana_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_semana_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_semana_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_semana_patente.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_semana_patente.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_semana_patente.deleted_at IS 'Timestamp del borrado lógico del registro';

COMMENT ON TABLE "public".stats_gps_semana_transportista IS 'Almacena las estadísticas por semana de la data enviada por transportista';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.semana IS 'Semana del año en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.deleted_at IS 'Timestamp del borrado lógico del registro';

COMMENT ON TABLE "public".stats_trafic_proveedor_day IS 'Stadísitcas de tráfico del proveedor por minuto';

COMMENT ON COLUMN "public".stats_trafic_proveedor_day.proveedor_id IS 'ID dfeñpr';

COMMENT ON COLUMN "public".stats_trafic_proveedor_day.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_day.updated_at IS 'Timestamp de la ultima actualización del registro';

COMMENT ON TABLE "public".stats_trafic_proveedor_hour IS 'Stadísitcas de tráfico del proveedor por hora';

COMMENT ON COLUMN "public".stats_trafic_proveedor_hour.created_at IS 'Timestamp de creación del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_hour.updated_at IS 'Timestamp de última actualización del registro';

COMMENT ON TABLE "public".stats_trafic_proveedor_min IS 'Stadísitcas de tráfico del proveedor por minuto';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.motor IS 'Estado de ignici´ón del motor: 0 apagado  1 encendido';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.created_at IS 'Timestamp de creación del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.updated_at IS 'Timestamp de última actualización del registro';

COMMENT ON TABLE "public".stats_trafic_proveedor_month IS 'Stadísitcas de tráfico del proveedor por mes';

COMMENT ON COLUMN "public".stats_trafic_proveedor_month.created_at IS 'Timestamp de creación del registro';

COMMENT ON COLUMN "public".trn_patentes.patente IS '´´umero de la patente';

COMMENT ON COLUMN "public".users.avatar IS 'Avatar deñ usuario';

COMMENT ON COLUMN "public".users.bloqueado IS 'Indica si el usuario est´á bloqueado o no';

ALTER TABLE "public".gps_transportista ADD CONSTRAINT fk_gps_transportista_trn_patentes FOREIGN KEY ( id ) REFERENCES "public".trn_patentes( transportista_id )  ;
