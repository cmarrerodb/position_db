
CREATE SEQUENCE "public".gb_perfiles_id_seq START WITH 1;

CREATE SEQUENCE "public".gps_imei_id_seq START WITH 1;

CREATE SEQUENCE "public".gps_imei_transportista_id_seq START WITH 1;

CREATE SEQUENCE "public".gps_proveedor_id_seq START WITH 1;

CREATE SEQUENCE "public".gps_real_time_id_seq START WITH 1;

CREATE SEQUENCE "public".gps_transportista_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_gps_day_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_gps_hour_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_gps_week_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_trafic_proveedor_day_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_trafic_proveedor_hour_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_trafic_proveedor_min_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_trafic_proveedor_month_id_seq START WITH 1;

CREATE SEQUENCE "public".trn_patentes_id_seq START WITH 1;

CREATE SEQUENCE "public".trn_patentes_transportista_id_seq START WITH 1;

CREATE SEQUENCE "public".user_id_seq START WITH 1;

CREATE  TABLE "public".gb_perfiles ( 
	id                   serial  NOT NULL ,
	nombre               varchar(150)  NOT NULL ,
	permisos             text  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_gb_perfiles_id PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public".gb_perfiles IS 'Perrfiles dfe usuario';

COMMENT ON COLUMN "public".gb_perfiles.id IS 'ID unico del registro';

COMMENT ON COLUMN "public".gb_perfiles.nombre IS 'Nombre del perfil del usuario';

COMMENT ON COLUMN "public".gb_perfiles.permisos IS 'Permisos del usuario';

COMMENT ON COLUMN "public".gb_perfiles.created_at IS 'Timestamp de creacion del registro';

COMMENT ON COLUMN "public".gb_perfiles.updated_at IS 'Timestamp de modificacion del registro';

COMMENT ON COLUMN "public".gb_perfiles.deleted_at IS 'Timestamp de borrado logico del registro';

CREATE  TABLE "public".gps_proveedor ( 
	id                   serial  NOT NULL ,
	razon_social         char(50)  NOT NULL ,
	email                char(50)  NOT NULL ,
	total                integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_gps_transportista_id_0 PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public".gps_proveedor IS 'Tabla del del provedor del dervicio GPS';

COMMENT ON COLUMN "public".gps_proveedor.id IS 'Identificaciu´ón ´único del registro';

COMMENT ON COLUMN "public".gps_proveedor.razon_social IS 'Razon sociual del proveedor del servicio GPS';

COMMENT ON COLUMN "public".gps_proveedor.email IS 'Email del contacto del proveedor del sdervicio GPS';

COMMENT ON COLUMN "public".gps_proveedor.total IS 'Cantidad total de vehiculos que maneja el proveedor del servicio GPS';

COMMENT ON COLUMN "public".gps_proveedor.created_at IS 'Timestamp de creaci´ón del registro';

COMMENT ON COLUMN "public".gps_proveedor.updated_at IS 'Timestamp de actiañizacion´ón del registro';

COMMENT ON COLUMN "public".gps_proveedor.deleted_at IS 'Timestamp de borrado logico´ón del registro';

CREATE  TABLE "public".stats_trafic_proveedor_day ( 
	id                   bigserial  NOT NULL ,
	proveedor_id         integer   ,
	fecha                date  NOT NULL ,
	cantidad             integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stats_trafic_proveedor_min_id_0 PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public".stats_trafic_proveedor_day IS 'Stadísitcas de tráfico del proveedor por minuto';

COMMENT ON COLUMN "public".stats_trafic_proveedor_day.id IS 'Identificador unico del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_day.proveedor_id IS 'ID dfeñpr';

COMMENT ON COLUMN "public".stats_trafic_proveedor_day.fecha IS 'Fecha de la data';

COMMENT ON COLUMN "public".stats_trafic_proveedor_day.cantidad IS 'Cantidad recibidos en la ventana de tiempo';

COMMENT ON COLUMN "public".stats_trafic_proveedor_day.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_day.updated_at IS 'Timestamp de la ultima actualización del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_day.deleted_at IS 'Timestamp del borrado logico del registro';

CREATE  TABLE "public".stats_trafic_proveedor_hour ( 
	id                   bigserial  NOT NULL ,
	proveedor_id         integer  NOT NULL ,
	fecha                date  NOT NULL ,
	hora                 smallint  NOT NULL ,
	cantidad             integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stats_trafic_proveedor_min_id_2 PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public".stats_trafic_proveedor_hour IS 'Stadísitcas de tráfico del proveedor por hora';

COMMENT ON COLUMN "public".stats_trafic_proveedor_hour.id IS 'Identificador unico del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_hour.proveedor_id IS 'ID del probeedpr';

COMMENT ON COLUMN "public".stats_trafic_proveedor_hour.fecha IS 'Fecha de la data';

COMMENT ON COLUMN "public".stats_trafic_proveedor_hour.hora IS 'Hora de la data';

COMMENT ON COLUMN "public".stats_trafic_proveedor_hour.cantidad IS 'Cantidad recibidos en la ventana de tiempo';

COMMENT ON COLUMN "public".stats_trafic_proveedor_hour.created_at IS 'Timestamp de creación del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_hour.updated_at IS 'Timestamp de última actualización del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_hour.deleted_at IS 'Timestamp del borrado logico del registro';

CREATE  TABLE "public".stats_trafic_proveedor_min ( 
	id                   bigserial  NOT NULL ,
	proveedor_id         integer  NOT NULL ,
	fecha                date  NOT NULL ,
	hora                 smallint  NOT NULL ,
	minuto               smallint  NOT NULL ,
	motor                smallint  NOT NULL ,
	cantidad             integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stats_trafic_proveedor_min_id PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public".stats_trafic_proveedor_min IS 'Stadísitcas de tráfico del proveedor por minuto';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.id IS 'Identificador unico del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.proveedor_id IS 'ID del probeedpr';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.fecha IS 'Fecha de la data';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.hora IS 'Hora de la data';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.minuto IS 'Minuto de la data (0 - 59)';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.motor IS 'Estado de ignici´ón del motor: 0 apagado  1 encendido';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.cantidad IS 'Cantidad recibidos en la ventana de tiempo';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.created_at IS 'Timestamp de creación del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.updated_at IS 'Timestamp de última actualización del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_min.deleted_at IS 'Timestamp del borrado logico del registro';

CREATE  TABLE "public".stats_trafic_proveedor_month ( 
	id                   bigserial  NOT NULL ,
	proveedor_id         integer   ,
	anio                 integer   ,
	mes                  smallint  NOT NULL ,
	cantidad             integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stats_trafic_proveedor_min_id_1 PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public".stats_trafic_proveedor_month IS 'Stadísitcas de tráfico del proveedor por mes';

COMMENT ON COLUMN "public".stats_trafic_proveedor_month.id IS 'Identificador unico del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_month.proveedor_id IS 'ID del proveedor de servio GPS';

COMMENT ON COLUMN "public".stats_trafic_proveedor_month.anio IS 'Aniode del mes';

COMMENT ON COLUMN "public".stats_trafic_proveedor_month.mes IS 'Mes de la data (1-12)';

COMMENT ON COLUMN "public".stats_trafic_proveedor_month.cantidad IS 'Cantidad recibidos en la ventana de tiempo';

COMMENT ON COLUMN "public".stats_trafic_proveedor_month.created_at IS 'Timestamp de creación del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_month.updated_at IS 'Timestamp de la ultima actualizacion del registro';

COMMENT ON COLUMN "public".stats_trafic_proveedor_month.deleted_at IS 'Timestamp del borrado logico del registro';

CREATE  TABLE "public".trn_patentes ( 
	id                   bigserial  NOT NULL ,
	transportista_id     serial  NOT NULL ,
	patente              char(6)   ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_trn_patentes_id PRIMARY KEY ( id ),
	CONSTRAINT "unq_trn_patentes_transportista-id" UNIQUE ( transportista_id ) 
 );

COMMENT ON TABLE "public".trn_patentes IS 'Tabla de patentes de los transportistas';

COMMENT ON COLUMN "public".trn_patentes.id IS 'ID unico del registro';

COMMENT ON COLUMN "public".trn_patentes.transportista_id IS 'ID del transportista al cualk pertenece la patente';

COMMENT ON COLUMN "public".trn_patentes.patente IS '´´umero de la patente';

COMMENT ON COLUMN "public".trn_patentes.created_at IS 'Timestamp de creacion del registro';

COMMENT ON COLUMN "public".trn_patentes.updated_at IS 'Timestamp de modificacion del registro';

COMMENT ON COLUMN "public".trn_patentes.deleted_at IS 'Timestamp de borrado logico del registro';

CREATE  TABLE "public"."user" ( 
	id                   integer GENERATED BY DEFAULT AS IDENTITY  NOT NULL ,
	perfil_id            integer  NOT NULL ,
	name                 varchar(255)  NOT NULL ,
	email                varchar(255)  NOT NULL ,
	email_verified_at    timestamp  NOT NULL ,
	"password"           varchar(255)  NOT NULL ,
	avatar               text   ,
	remember_token       varchar(100)   ,
	bloqueado            bool DEFAULT false  ,
	old_psw              text   ,
	two_steps            bool DEFAULT false  ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_user_id PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public"."user" IS 'Tabla de usuarios';

COMMENT ON COLUMN "public"."user".id IS 'ID unico del registro';

COMMENT ON COLUMN "public"."user".perfil_id IS 'ID del perfil del usuario';

COMMENT ON COLUMN "public"."user".name IS 'Nombre dek usuario';

COMMENT ON COLUMN "public"."user".email IS 'Emaik del usuario';

COMMENT ON COLUMN "public"."user".email_verified_at IS 'Timestamp de la verificacion del correo';

COMMENT ON COLUMN "public"."user"."password" IS 'Clave del usuario';

COMMENT ON COLUMN "public"."user".avatar IS 'Avatar deñ usuario';

COMMENT ON COLUMN "public"."user".remember_token IS 'Recordar toalen de usuario';

COMMENT ON COLUMN "public"."user".bloqueado IS 'Indica si el usuario est´á bloqueado o no';

COMMENT ON COLUMN "public"."user".old_psw IS 'Clave anterior';

COMMENT ON COLUMN "public"."user".two_steps IS 'Verificacion de dos factores';

COMMENT ON COLUMN "public"."user".created_at IS 'Timestamp de creacion del registro';

COMMENT ON COLUMN "public"."user".updated_at IS 'Timestamp de modificacion del registro';

COMMENT ON COLUMN "public"."user".deleted_at IS 'Timestamp de borrADO LOGICO del registro';

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
 );

COMMENT ON TABLE "public".gps_transportista IS 'Tabla del del transportista';

COMMENT ON COLUMN "public".gps_transportista.id IS 'Identificaciu´ón ´único del registro';

COMMENT ON COLUMN "public".gps_transportista.razon_social IS 'Razon sociual del proveedor del servicio GPS';

COMMENT ON COLUMN "public".gps_transportista.codigo IS 'Dodigo del transportista';

COMMENT ON COLUMN "public".gps_transportista.email IS 'Email del contacto del proveedor del sdervicio GPS';

COMMENT ON COLUMN "public".gps_transportista.total IS 'Cantidad total de vehiculos que maneja el proveedor del servicio GPS';

COMMENT ON COLUMN "public".gps_transportista.created_at IS 'Timestamp de creaci´ón del registro';

COMMENT ON COLUMN "public".gps_transportista.updated_at IS 'Timestamp de actiañizacion´ón del registro';

COMMENT ON COLUMN "public".gps_transportista.deleted_at IS 'Timestamp de borrado logico´ón del registro';

CREATE  TABLE "public".gps_imei ( 
	id                   bigserial  NOT NULL ,
	transportista_id     serial  NOT NULL ,
	proveedor_id         bigint   ,
	patente_id           bigint   ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_trn_patentes_id_0 PRIMARY KEY ( id ),
	CONSTRAINT "unq_trn_patentes_transportista-id_0" UNIQUE ( transportista_id ) 
 );

COMMENT ON TABLE "public".gps_imei IS 'Tabla de de IMEI vinculada a la patente y al transportista';

COMMENT ON COLUMN "public".gps_imei.id IS 'ID unico del registro';

COMMENT ON COLUMN "public".gps_imei.transportista_id IS 'ID del transportista al cualk pertenece la patente';

COMMENT ON COLUMN "public".gps_imei.proveedor_id IS 'ID del proveefor de servicio GPS coion el cual se relaciona el IMEI';

COMMENT ON COLUMN "public".gps_imei.patente_id IS 'ID de la patente con la cual se relaciona el IMWI';

COMMENT ON COLUMN "public".gps_imei.created_at IS 'Timestamp de creacion del registro';

COMMENT ON COLUMN "public".gps_imei.updated_at IS 'Timestamp de modificacion del registro';

COMMENT ON COLUMN "public".gps_imei.deleted_at IS 'Timestamp de borrado logico del registro';

CREATE  TABLE "public".gps_real_time ( 
	id                   bigserial  NOT NULL ,
	rejected             bool DEFAULT false  ,
	imei_id              bigint   ,
	transportista_id     bigint   ,
	proveedor_id         bigint   ,
	patente_id           bigint   ,
	timestamp_gps        timestamp   ,
	timestamp_sys        timestamp   ,
	frecuencia           time   ,
	latencia             integer  NOT NULL ,
	ordenada             smallint DEFAULT 1 NOT NULL ,
	motor                smallint DEFAULT 1 NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	raw_data             text  NOT NULL ,
	CONSTRAINT pk_gps_real_time_id PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public".gps_real_time IS 'Tabla de almacenamiento de toda la data entrante';

COMMENT ON COLUMN "public".gps_real_time.id IS 'Identificación única del registro';

COMMENT ON COLUMN "public".gps_real_time.rejected IS 'Cadena rechazada proveniente del gps';

COMMENT ON COLUMN "public".gps_real_time.imei_id IS 'ID del  IMEI';

COMMENT ON COLUMN "public".gps_real_time.proveedor_id IS 'ID del proveefor del dercivio de GPS';

COMMENT ON COLUMN "public".gps_real_time.patente_id IS 'ID de la patente';

COMMENT ON COLUMN "public".gps_real_time.timestamp_gps IS 'Timestamp en la cual se generó la señal en el GPS';

COMMENT ON COLUMN "public".gps_real_time.timestamp_sys IS 'Timestamp de la recepción de la data del GPS';

COMMENT ON COLUMN "public".gps_real_time.frecuencia IS 'Diferencia de tiempo entre el registro actual y el anterior';

COMMENT ON COLUMN "public".gps_real_time.latencia IS 'Latencia dek GPS';

COMMENT ON COLUMN "public".gps_real_time.ordenada IS 'Indica si la fecha de recpción del datos es posterior al dato anterior, en cuyo caso su valor es 1; si la fecha de recepción es naterior al registro previo, su valor es 0';

COMMENT ON COLUMN "public".gps_real_time.motor IS 'Indica si el dato fue enciado con el motor encendido o no; en caso de ser asi, su valor es 1, encaso contrario 0';

COMMENT ON COLUMN "public".gps_real_time.created_at IS 'Timestamp de creación del registro';

COMMENT ON COLUMN "public".gps_real_time.updated_at IS 'Timestamp de modificación del registro';

COMMENT ON COLUMN "public".gps_real_time.deleted_at IS 'Timestamp de borrado lógico del registro';

COMMENT ON COLUMN "public".gps_real_time.raw_data IS 'Data en bruto proveniente del GPS';

CREATE  TABLE "public".stats_gps_day ( 
	id                   bigserial  NOT NULL ,
	imei_id              bigint   ,
	proveedor_id         bigint   ,
	transportista_id     bigint   ,
	fecha                date  NOT NULL ,
	dia                  smallint  NOT NULL ,
	motor                smallint  NOT NULL ,
	frecuencia           integer  NOT NULL ,
	latencia             integer  NOT NULL ,
	ordenadas            integer  NOT NULL ,
	recibidas            integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stat_gps_hour_id_0 PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public".stats_gps_day IS 'Almacena las estadísticas por dia de la data enviada por lo sGPS';

COMMENT ON COLUMN "public".stats_gps_day.id IS 'Identificacion unica del registro';

COMMENT ON COLUMN "public".stats_gps_day.imei_id IS 'ID del imei';

COMMENT ON COLUMN "public".stats_gps_day.fecha IS 'Fecha de la hora';

COMMENT ON COLUMN "public".stats_gps_day.dia IS 'Día del mes en la cual se genera el resúmen de la estadística, para esa fecha (1 - 31)';

COMMENT ON COLUMN "public".stats_gps_day.motor IS 'Estado de ignici´ón del motor: 0 apagado  1 encendido';

COMMENT ON COLUMN "public".stats_gps_day.frecuencia IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_day.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_day.ordenadas IS 'Cantidad de registros ordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_day.recibidas IS 'Cantidad de registros recibidos durante esa hora del ´ia, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_day.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_day.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_day.deleted_at IS 'Timestamp del borrado lógico del registro';

CREATE  TABLE "public".stats_gps_hour ( 
	id                   bigserial  NOT NULL ,
	imei_id              bigint   ,
	transportista_id     bigint   ,
	proveedor_id         bigint   ,
	fecha                date  NOT NULL ,
	hora                 smallint  NOT NULL ,
	motor                smallint  NOT NULL ,
	frecuencia           integer  NOT NULL ,
	latencia             integer  NOT NULL ,
	ordenadas            integer  NOT NULL ,
	recibidas            integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stat_gps_hour_id PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public".stats_gps_hour IS 'Almacena las estadísticas por hora de la data enviada por lo sGPS';

COMMENT ON COLUMN "public".stats_gps_hour.id IS 'Identificacion unica del registro';

COMMENT ON COLUMN "public".stats_gps_hour.imei_id IS 'ID del imei';

COMMENT ON COLUMN "public".stats_gps_hour.fecha IS 'Fecha de la hora';

COMMENT ON COLUMN "public".stats_gps_hour.hora IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hour.motor IS 'Estado de ignici´ón del motor: 0 apagado  1 encendido';

COMMENT ON COLUMN "public".stats_gps_hour.frecuencia IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hour.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hour.ordenadas IS 'Cantidad de registros ordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hour.recibidas IS 'Cantidad de registros recibidos durante esa hora del ´ia, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hour.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_hour.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_hour.deleted_at IS 'Timestamp del borrado lógico del registro';

CREATE  TABLE "public".stats_gps_month ( 
	id                   bigserial  NOT NULL ,
	imei_id              bigint   ,
	transportista_id     bigint   ,
	proveedor_id         bigint   ,
	fecha                date  NOT NULL ,
	semana               smallint  NOT NULL ,
	motor                smallint  NOT NULL ,
	frecuencia           integer  NOT NULL ,
	latencia             integer  NOT NULL ,
	ordenadas            integer  NOT NULL ,
	recibidas            integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stat_gps_hour_id_2 PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public".stats_gps_month IS 'Almacena las estadísticas por mes de la data enviada por lo sGPS';

COMMENT ON COLUMN "public".stats_gps_month.id IS 'Identificacion unica del registro';

COMMENT ON COLUMN "public".stats_gps_month.imei_id IS 'ID del imei';

COMMENT ON COLUMN "public".stats_gps_month.fecha IS 'Fecha de la hora';

COMMENT ON COLUMN "public".stats_gps_month.semana IS 'Semana del año en la cual se genera el resúmen de la estadística, para esa fecha (1 - 52)';

COMMENT ON COLUMN "public".stats_gps_month.motor IS 'Estado de ignici´ón del motor: 0 apagado  1 encendido';

COMMENT ON COLUMN "public".stats_gps_month.frecuencia IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_month.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_month.ordenadas IS 'Cantidad de registros ordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_month.recibidas IS 'Cantidad de registros recibidos durante esa hora del ´ia, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_month.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_month.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_month.deleted_at IS 'Timestamp del borrado lógico del registro';

CREATE  TABLE "public".stats_gps_week ( 
	id                   bigserial  NOT NULL ,
	imei_id              bigint   ,
	transportista_id     bigint   ,
	proveedor_id         bigint   ,
	fecha                date  NOT NULL ,
	semana               smallint  NOT NULL ,
	motor                smallint  NOT NULL ,
	frecuencia           integer  NOT NULL ,
	latencia             integer  NOT NULL ,
	ordenadas            integer  NOT NULL ,
	recibidas            integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stat_gps_hour_id_1 PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public".stats_gps_week IS 'Almacena las estadísticas por semana de la data enviada por lo sGPS';

COMMENT ON COLUMN "public".stats_gps_week.id IS 'Identificacion unica del registro';

COMMENT ON COLUMN "public".stats_gps_week.imei_id IS 'ID del imei';

COMMENT ON COLUMN "public".stats_gps_week.fecha IS 'Fecha de la hora';

COMMENT ON COLUMN "public".stats_gps_week.semana IS 'Semana del año en la cual se genera el resúmen de la estadística, para esa fecha (1 - 52)';

COMMENT ON COLUMN "public".stats_gps_week.motor IS 'Estado de ignici´ón del motor: 0 apagado  1 encendido';

COMMENT ON COLUMN "public".stats_gps_week.frecuencia IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_week.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_week.ordenadas IS 'Cantidad de registros ordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_week.recibidas IS 'Cantidad de registros recibidos durante esa hora del ´ia, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_week.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_week.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_week.deleted_at IS 'Timestamp del borrado lógico del registro';

CREATE OR REPLACE FUNCTION public.delete(hstore, text[])
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_delete_array$function$
;

CREATE OR REPLACE FUNCTION public.delete(hstore, hstore)
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_delete_hstore$function$
;

CREATE OR REPLACE FUNCTION public.hstore(text[], text[])
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/hstore', $function$hstore_from_arrays$function$
;

CREATE OR REPLACE FUNCTION public.hstore(text[])
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS '$libdir/hstore', $function$hstore_from_array$function$
;

CREATE OR REPLACE FUNCTION public.hstore(record)
 RETURNS hstore
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE
AS '$libdir/hstore', $function$hstore_from_record$function$
;

ALTER TABLE "public".gps_imei ADD CONSTRAINT fk_gps_imei_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".gps_imei ADD CONSTRAINT fk_gps_imei_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".gps_imei ADD CONSTRAINT fk_gps_imei_trn_patentes FOREIGN KEY ( patente_id ) REFERENCES "public".trn_patentes( id );

ALTER TABLE "public".gps_real_time ADD CONSTRAINT fk_gps_real_time_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".gps_real_time ADD CONSTRAINT fk_gps_real_time_trn_patentes FOREIGN KEY ( imei_id ) REFERENCES "public".trn_patentes( id );

ALTER TABLE "public".gps_real_time ADD CONSTRAINT fk_gps_real_time_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".gps_real_time ADD CONSTRAINT fk_gps_real_time_gps_imei FOREIGN KEY ( patente_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".gps_transportista ADD CONSTRAINT fk_gps_transportista_trn_patentes FOREIGN KEY ( id ) REFERENCES "public".trn_patentes( transportista_id );

ALTER TABLE "public".stats_gps_day ADD CONSTRAINT fk_stats_gps_day_gps_imei FOREIGN KEY ( imei_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".stats_gps_hour ADD CONSTRAINT fk_stats_gps_hour_gps_imei FOREIGN KEY ( imei_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".stats_gps_month ADD CONSTRAINT fk_stats_gps_week_gps_imei_0 FOREIGN KEY ( imei_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".stats_gps_week ADD CONSTRAINT fk_stats_gps_week_gps_imei FOREIGN KEY ( imei_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".stats_trafic_proveedor_day ADD CONSTRAINT fk_stats_trafic_proveedor_day_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_trafic_proveedor_hour ADD CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor_0 FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_trafic_proveedor_min ADD CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_trafic_proveedor_month ADD CONSTRAINT fk_stats_trafic_proveedor_month_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public"."user" ADD CONSTRAINT fk_user_gb_perfiles FOREIGN KEY ( perfil_id ) REFERENCES "public".gb_perfiles( id );

