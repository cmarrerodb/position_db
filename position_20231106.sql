CREATE SCHEMA "public";

CREATE SEQUENCE "public".gb_perfiles_id_seq START WITH 1;

CREATE SEQUENCE "public".gb_perfiles_id_seq1 START WITH 1;

CREATE SEQUENCE "public".gps_imei_id_seq START WITH 1;

CREATE SEQUENCE "public".gps_imei_id_seq1 START WITH 1;

CREATE SEQUENCE "public".gps_imei_transportista_id_seq START WITH 1;

CREATE SEQUENCE "public".gps_imei_transportista_id_seq1 START WITH 1;

CREATE SEQUENCE "public".gps_proveedor_id_seq START WITH 1;

CREATE SEQUENCE "public".gps_proveedor_id_seq1 START WITH 1;

CREATE SEQUENCE "public".gps_real_time_id_seq START WITH 1;

CREATE SEQUENCE "public".gps_real_time_id_seq1 START WITH 1;

CREATE SEQUENCE "public".gps_transportista_id_seq START WITH 1;

CREATE SEQUENCE "public".gps_transportista_id_seq1 START WITH 1;

CREATE SEQUENCE "public".stats_gps_day_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_gps_day_id_seq1 START WITH 1;

CREATE SEQUENCE "public".stats_gps_hour_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_gps_hour_id_seq1 START WITH 1;

CREATE SEQUENCE "public".stats_gps_month_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_gps_week_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_gps_week_id_seq1 START WITH 1;

CREATE SEQUENCE "public".stats_trafic_proveedor_day_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_trafic_proveedor_day_id_seq1 START WITH 1;

CREATE SEQUENCE "public".stats_trafic_proveedor_hour_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_trafic_proveedor_hour_id_seq1 START WITH 1;

CREATE SEQUENCE "public".stats_trafic_proveedor_min_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_trafic_proveedor_min_id_seq1 START WITH 1;

CREATE SEQUENCE "public".stats_trafic_proveedor_month_id_seq START WITH 1;

CREATE SEQUENCE "public".stats_trafic_proveedor_month_id_seq1 START WITH 1;

CREATE SEQUENCE "public".trn_patentes_id_seq START WITH 1;

CREATE SEQUENCE "public".trn_patentes_id_seq1 START WITH 1;

CREATE SEQUENCE "public".trn_patentes_transportista_id_seq START WITH 1;

CREATE SEQUENCE "public".trn_patentes_transportista_id_seq1 START WITH 1;

CREATE SEQUENCE "public".user_id_seq START WITH 1;

CREATE  TABLE "public".cnf_colores ( 
	id                   serial  NOT NULL ,
	inicio               smallint  NOT NULL ,
	"final"              smallint  NOT NULL ,
	color                char(7)  NOT NULL ,
	descripcion          varchar(35)  NOT NULL ,
	deleted_at           timestamp   ,
	created_at           timestamp DEFAULT current_timestamp  ,
	updated_at           timestamp   ,
	unidad               integer  NOT NULL ,
	CONSTRAINT pk_cnf_colores_id PRIMARY KEY ( id )
 );

COMMENT ON TABLE "public".cnf_colores IS 'Configuraci´ón de rango de colores de las patentes desarodenadas';

COMMENT ON COLUMN "public".cnf_colores.id IS 'Id unico del registro';

COMMENT ON COLUMN "public".cnf_colores.inicio IS 'Valor inicial del rango';

COMMENT ON COLUMN "public".cnf_colores."final" IS 'Valor final del rango';

COMMENT ON COLUMN "public".cnf_colores.color IS 'Color a aplicar al rango, en hexadecimal';

COMMENT ON COLUMN "public".cnf_colores.descripcion IS 'Descripcion de donde aplica el rango';

COMMENT ON COLUMN "public".cnf_colores.deleted_at IS 'Timestamp de borrado logico del registro';

COMMENT ON COLUMN "public".cnf_colores.created_at IS 'Timestamp de creacion del registro';

COMMENT ON COLUMN "public".cnf_colores.updated_at IS 'Timestamp de moficiacion del registro';

COMMENT ON COLUMN "public".cnf_colores.unidad IS 'Unidad del rango: 1 porcewntaje, 2 cantidad';

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

CREATE INDEX idx_stats_trafic_proveedor_day ON "public".stats_trafic_proveedor_day ( id, proveedor_id );

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

CREATE INDEX idx_stats_trafic_proveedor_hour ON "public".stats_trafic_proveedor_hour ( id, proveedor_id );

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

CREATE INDEX idx_stats_trafic_proveedor_min ON "public".stats_trafic_proveedor_min ( id, proveedor_id );

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

CREATE INDEX idx_stats_trafic_proveedor_month ON "public".stats_trafic_proveedor_month ( id, proveedor_id );

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
	CONSTRAINT "unq_trn_patentes_transportista-id" UNIQUE ( transportista_id ) ,
	CONSTRAINT idx_trn_patentes UNIQUE ( patente ) 
 );

COMMENT ON TABLE "public".trn_patentes IS 'Tabla de patentes de los transportistas';

COMMENT ON COLUMN "public".trn_patentes.id IS 'ID unico del registro';

COMMENT ON COLUMN "public".trn_patentes.transportista_id IS 'ID del transportista al cualk pertenece la patente';

COMMENT ON COLUMN "public".trn_patentes.patente IS '´´umero de la patente';

COMMENT ON COLUMN "public".trn_patentes.created_at IS 'Timestamp de creacion del registro';

COMMENT ON COLUMN "public".trn_patentes.updated_at IS 'Timestamp de modificacion del registro';

COMMENT ON COLUMN "public".trn_patentes.deleted_at IS 'Timestamp de borrado logico del registro';

CREATE  TABLE "public".users ( 
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
	CONSTRAINT pk_user_id PRIMARY KEY ( id ),
	CONSTRAINT idx_user UNIQUE ( email ) 
 );

CREATE INDEX idx_user_0 ON "public".users ( id, perfil_id );

COMMENT ON TABLE "public".users IS 'Tabla de usuarios';

COMMENT ON COLUMN "public".users.id IS 'ID unico del registro';

COMMENT ON COLUMN "public".users.perfil_id IS 'ID del perfil del usuario';

COMMENT ON COLUMN "public".users.name IS 'Nombre dek usuario';

COMMENT ON COLUMN "public".users.email IS 'Emaik del usuario';

COMMENT ON COLUMN "public".users.email_verified_at IS 'Timestamp de la verificacion del correo';

COMMENT ON COLUMN "public".users."password" IS 'Clave del usuario';

COMMENT ON COLUMN "public".users.avatar IS 'Avatar deñ usuario';

COMMENT ON COLUMN "public".users.remember_token IS 'Recordar toalen de usuario';

COMMENT ON COLUMN "public".users.bloqueado IS 'Indica si el usuario est´á bloqueado o no';

COMMENT ON COLUMN "public".users.old_psw IS 'Clave anterior';

COMMENT ON COLUMN "public".users.two_steps IS 'Verificacion de dos factores';

COMMENT ON COLUMN "public".users.created_at IS 'Timestamp de creacion del registro';

COMMENT ON COLUMN "public".users.updated_at IS 'Timestamp de modificacion del registro';

COMMENT ON COLUMN "public".users.deleted_at IS 'Timestamp de borrADO LOGICO del registro';

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

CREATE  TABLE "public".stats_gps_dia_transportista ( 
	id                   bigserial  NOT NULL ,
	transportista_id     bigint   ,
	proveedor_id         integer   ,
	fecha                date  NOT NULL ,
	dia                  smallint  NOT NULL ,
	frecuencia_motor_on  time  NOT NULL ,
	frecuencia_motor_off time  NOT NULL ,
	latencia             integer  NOT NULL ,
	q_patetentes_no_ign  integer  NOT NULL ,
	q_patentes_no_deteccion integer  NOT NULL ,
	q_desordenadas       integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stat_gps_hour_id_0 PRIMARY KEY ( id )
 );

CREATE INDEX idx_stats_gps_hour_0 ON "public".stats_gps_dia_transportista ( id, transportista_id );

COMMENT ON TABLE "public".stats_gps_dia_transportista IS 'Almacena las estadísticas por hora de la data enviada por transportista';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.id IS 'Identificacion unica del registro';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.proveedor_id IS 'ID del proveedor del servicio GPS';

COMMENT ON COLUMN "public".stats_gps_dia_transportista.fecha IS 'Fecha de la hora';

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

CREATE  TABLE "public".stats_gps_hora_transportista ( 
	id                   bigserial  NOT NULL ,
	transportista_id     bigint   ,
	proveedor_id         integer   ,
	fecha                date  NOT NULL ,
	hora                 smallint  NOT NULL ,
	frecuencia_motor_on  time  NOT NULL ,
	frecuencia_motor_off time  NOT NULL ,
	latencia             integer  NOT NULL ,
	q_patetentes_no_ign  integer  NOT NULL ,
	q_patentes_no_deteccion integer  NOT NULL ,
	q_desordenadas       integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stat_gps_hour_id PRIMARY KEY ( id )
 );

CREATE INDEX idx_stats_gps_hour ON "public".stats_gps_hora_transportista ( id, transportista_id );

COMMENT ON TABLE "public".stats_gps_hora_transportista IS 'Almacena las estadísticas por hora de la data enviada por lo sGPS transportista';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.id IS 'Identificacion unica del registro';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.proveedor_id IS 'ID del proveedor de servicios GPS';

COMMENT ON COLUMN "public".stats_gps_hora_transportista.fecha IS 'Fecha de la hora';

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

CREATE  TABLE "public".stats_gps_mes_transportista ( 
	id                   bigserial  NOT NULL ,
	transportista_id     bigint   ,
	proveedor_id         integer   ,
	fecha                date  NOT NULL ,
	mes                  smallint  NOT NULL ,
	frecuencia_motor_on  time  NOT NULL ,
	frecuencia_motor_off time  NOT NULL ,
	latencia             integer  NOT NULL ,
	q_patetentes_no_ign  integer  NOT NULL ,
	q_patentes_no_deteccion integer  NOT NULL ,
	q_desordenadas       integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stat_gps_hour_id_2 PRIMARY KEY ( id )
 );

CREATE INDEX idx_stats_gps_hour_2 ON "public".stats_gps_mes_transportista ( id, transportista_id );

COMMENT ON TABLE "public".stats_gps_mes_transportista IS 'Almacena las estadísticas por mes de la data enviada por transportista';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.id IS 'Identificacion unica del registro';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.proveedor_id IS 'ID del proveedor del servicio GPS';

COMMENT ON COLUMN "public".stats_gps_mes_transportista.fecha IS 'Fecha de la hora';

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

CREATE  TABLE "public".stats_gps_semana_transportista ( 
	id                   bigserial  NOT NULL ,
	transportista_id     bigint   ,
	proveedor_id         integer   ,
	fecha                date  NOT NULL ,
	semana               smallint  NOT NULL ,
	frecuencia_motor_on  time  NOT NULL ,
	frecuencia_motor_off time  NOT NULL ,
	latencia             integer  NOT NULL ,
	q_patetentes_no_ign  integer  NOT NULL ,
	q_patentes_no_deteccion integer  NOT NULL ,
	q_desordenadas       integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stat_gps_hour_id_1 PRIMARY KEY ( id )
 );

CREATE INDEX idx_stats_gps_hour_1 ON "public".stats_gps_semana_transportista ( id, transportista_id );

COMMENT ON TABLE "public".stats_gps_semana_transportista IS 'Almacena las estadísticas por semana de la data enviada por transportista';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.id IS 'Identificacion unica del registro';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.proveedor_id IS 'ID del proveedor del servicio GPS';

COMMENT ON COLUMN "public".stats_gps_semana_transportista.fecha IS 'Fecha de la hora';

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

CREATE  TABLE "public".gps_imei ( 
	id                   bigserial  NOT NULL ,
	transportista_id     serial  NOT NULL ,
	proveedor_id         bigint   ,
	patente_id           bigint   ,
	imei                 varchar(15)  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_trn_patentes_id_0 PRIMARY KEY ( id ),
	CONSTRAINT "unq_trn_patentes_transportista-id_0" UNIQUE ( transportista_id ) ,
	CONSTRAINT idx_gps_imei UNIQUE ( imei ) 
 );

CREATE INDEX idx_gps_imei_0 ON "public".gps_imei ( id, transportista_id, proveedor_id, patente_id );

COMMENT ON TABLE "public".gps_imei IS 'Tabla de de IMEI vinculada a la patente y al transportista';

COMMENT ON COLUMN "public".gps_imei.id IS 'ID unico del registro';

COMMENT ON COLUMN "public".gps_imei.transportista_id IS 'ID del transportista al cualk pertenece la patente';

COMMENT ON COLUMN "public".gps_imei.proveedor_id IS 'ID del proveefor de servicio GPS coion el cual se relaciona el IMEI';

COMMENT ON COLUMN "public".gps_imei.patente_id IS 'ID de la patente con la cual se relaciona el IMWI';

COMMENT ON COLUMN "public".gps_imei.imei IS 'C´ódigo IMEI del equipo';

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

CREATE INDEX idx_gps_real_time ON "public".gps_real_time ( id, imei_id, transportista_id, proveedor_id, patente_id );

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

CREATE  TABLE "public".stats_gps_dia_patente ( 
	id                   bigserial  NOT NULL ,
	transportista_id     integer   ,
	proveedor_id         bigint   ,
	patente_id           integer   ,
	imei_id              integer   ,
	fecha                date  NOT NULL ,
	dia                  smallint  NOT NULL ,
	frecuencia_motor_on  time  NOT NULL ,
	frecuencia_motor_off time  NOT NULL ,
	latencia             integer  NOT NULL ,
	total_cadenas        integer  NOT NULL ,
	total_cadenas_problemas integer  NOT NULL ,
	q_patetentes_no_ign  integer  NOT NULL ,
	q_patentes_no_deteccion integer  NOT NULL ,
	q_desordenadas       integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stat_gps_hour_id_4 PRIMARY KEY ( id )
 );

CREATE INDEX idx_stats_gps_hour_4 ON "public".stats_gps_dia_patente ( id, proveedor_id );

COMMENT ON TABLE "public".stats_gps_dia_patente IS 'Almacena las estadísticas por dia de la data por patente';

COMMENT ON COLUMN "public".stats_gps_dia_patente.id IS 'Identificacion unica del registro';

COMMENT ON COLUMN "public".stats_gps_dia_patente.transportista_id IS 'ID del transportista';

COMMENT ON COLUMN "public".stats_gps_dia_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';

COMMENT ON COLUMN "public".stats_gps_dia_patente.patente_id IS 'ID de la patente';

COMMENT ON COLUMN "public".stats_gps_dia_patente.imei_id IS 'ID del IMEI del equipo';

COMMENT ON COLUMN "public".stats_gps_dia_patente.fecha IS 'Fecha de la hora';

COMMENT ON COLUMN "public".stats_gps_dia_patente.dia IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_dia_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';

COMMENT ON COLUMN "public".stats_gps_dia_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';

COMMENT ON COLUMN "public".stats_gps_dia_patente.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_dia_patente.total_cadenas IS 'Total de cadenas para una patente por dia';

COMMENT ON COLUMN "public".stats_gps_dia_patente.total_cadenas_problemas IS 'Total de cadenas para una patente con problemas por dia';

COMMENT ON COLUMN "public".stats_gps_dia_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_dia_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_dia_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_dia_patente.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_dia_patente.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_dia_patente.deleted_at IS 'Timestamp del borrado lógico del registro';

CREATE  TABLE "public".stats_gps_hora_patente ( 
	id                   bigserial  NOT NULL ,
	transportista_id     integer   ,
	proveedor_id         bigint   ,
	patente_id           integer   ,
	imei_id              integer   ,
	fecha                date  NOT NULL ,
	hora                 smallint  NOT NULL ,
	frecuencia_motor_on  time  NOT NULL ,
	frecuencia_motor_off time  NOT NULL ,
	latencia             integer  NOT NULL ,
	total_cadenas        integer  NOT NULL ,
	total_cadenas_problemas integer  NOT NULL ,
	q_patetentes_no_ign  integer  NOT NULL ,
	q_patentes_no_deteccion integer  NOT NULL ,
	q_desordenadas       integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stat_gps_hour_id_3 PRIMARY KEY ( id )
 );

CREATE INDEX idx_stats_gps_hour_3 ON "public".stats_gps_hora_patente ( id, proveedor_id );

COMMENT ON TABLE "public".stats_gps_hora_patente IS 'Almacena las estadísticas por hora de la data enviada por patente';

COMMENT ON COLUMN "public".stats_gps_hora_patente.id IS 'Identificacion unica del registro';

COMMENT ON COLUMN "public".stats_gps_hora_patente.transportista_id IS 'ID del transportista';

COMMENT ON COLUMN "public".stats_gps_hora_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';

COMMENT ON COLUMN "public".stats_gps_hora_patente.patente_id IS 'ID de la patente';

COMMENT ON COLUMN "public".stats_gps_hora_patente.imei_id IS 'ID del imei del equipo';

COMMENT ON COLUMN "public".stats_gps_hora_patente.fecha IS 'Fecha de la hora';

COMMENT ON COLUMN "public".stats_gps_hora_patente.hora IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hora_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';

COMMENT ON COLUMN "public".stats_gps_hora_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';

COMMENT ON COLUMN "public".stats_gps_hora_patente.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hora_patente.total_cadenas IS 'Total de cadenas para una patente por hora';

COMMENT ON COLUMN "public".stats_gps_hora_patente.total_cadenas_problemas IS 'Total de cadenas con problemas por hora';

COMMENT ON COLUMN "public".stats_gps_hora_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_hora_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_hora_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_hora_patente.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_hora_patente.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_hora_patente.deleted_at IS 'Timestamp del borrado lógico del registro';

CREATE  TABLE "public".stats_gps_mes_patente ( 
	id                   bigserial  NOT NULL ,
	transportista_id     integer   ,
	proveedor_id         bigint   ,
	patente_id           integer   ,
	imei_id              integer   ,
	fecha                date  NOT NULL ,
	mes                  smallint  NOT NULL ,
	frecuencia_motor_on  time  NOT NULL ,
	frecuencia_motor_off time  NOT NULL ,
	latencia             integer  NOT NULL ,
	total_cadenas        integer  NOT NULL ,
	total_patentes_problemas integer  NOT NULL ,
	q_patetentes_no_ign  integer  NOT NULL ,
	q_patentes_no_deteccion integer  NOT NULL ,
	q_desordenadas       integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stat_gps_hour_id_6 PRIMARY KEY ( id )
 );

CREATE INDEX idx_stats_gps_hour_6 ON "public".stats_gps_mes_patente ( id, proveedor_id );

COMMENT ON TABLE "public".stats_gps_mes_patente IS 'Almacena las estadísticas por mes de la data por patente';

COMMENT ON COLUMN "public".stats_gps_mes_patente.id IS 'Identificacion unica del registro';

COMMENT ON COLUMN "public".stats_gps_mes_patente.transportista_id IS 'ID del transportista';

COMMENT ON COLUMN "public".stats_gps_mes_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';

COMMENT ON COLUMN "public".stats_gps_mes_patente.patente_id IS 'ID de la patente';

COMMENT ON COLUMN "public".stats_gps_mes_patente.imei_id IS 'ID del IMEI del equuipo GPS';

COMMENT ON COLUMN "public".stats_gps_mes_patente.fecha IS 'Fecha de la hora';

COMMENT ON COLUMN "public".stats_gps_mes_patente.mes IS 'Mes del año en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_mes_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';

COMMENT ON COLUMN "public".stats_gps_mes_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';

COMMENT ON COLUMN "public".stats_gps_mes_patente.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_mes_patente.total_cadenas IS 'Total de cadenas para una patente por mes';

COMMENT ON COLUMN "public".stats_gps_mes_patente.total_patentes_problemas IS 'Total de cadenas para una patente con problemas por mes';

COMMENT ON COLUMN "public".stats_gps_mes_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_mes_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_mes_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_mes_patente.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_mes_patente.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_mes_patente.deleted_at IS 'Timestamp del borrado lógico del registro';

CREATE  TABLE "public".stats_gps_semana_patente ( 
	id                   bigserial  NOT NULL ,
	transportista_id     integer   ,
	proveedor_id         bigint   ,
	patente_id           integer   ,
	imei_id              integer   ,
	fecha                date  NOT NULL ,
	semana               smallint  NOT NULL ,
	frecuencia_motor_on  time  NOT NULL ,
	frecuencia_motor_off time  NOT NULL ,
	latencia             integer  NOT NULL ,
	total_cadenas        integer  NOT NULL ,
	total_cadenas_problemas integer  NOT NULL ,
	q_patetentes_no_ign  integer  NOT NULL ,
	q_patentes_no_deteccion integer  NOT NULL ,
	q_desordenadas       integer  NOT NULL ,
	created_at           timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_stat_gps_hour_id_5 PRIMARY KEY ( id )
 );

CREATE INDEX idx_stats_gps_hour_5 ON "public".stats_gps_semana_patente ( id, proveedor_id );

COMMENT ON TABLE "public".stats_gps_semana_patente IS 'Almacena las estadísticas por semana de la data POR PATENTE';

COMMENT ON COLUMN "public".stats_gps_semana_patente.id IS 'Identificacion unica del registro';

COMMENT ON COLUMN "public".stats_gps_semana_patente.transportista_id IS 'ID del transportista';

COMMENT ON COLUMN "public".stats_gps_semana_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';

COMMENT ON COLUMN "public".stats_gps_semana_patente.patente_id IS 'ID de la patente';

COMMENT ON COLUMN "public".stats_gps_semana_patente.imei_id IS 'ID del IMEI del equipo GPS';

COMMENT ON COLUMN "public".stats_gps_semana_patente.fecha IS 'Fecha de la hora';

COMMENT ON COLUMN "public".stats_gps_semana_patente.semana IS 'Semana del año en la cual se genera el resúmen de la estadística, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_semana_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';

COMMENT ON COLUMN "public".stats_gps_semana_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';

COMMENT ON COLUMN "public".stats_gps_semana_patente.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_semana_patente.total_cadenas IS 'Total de cadenas para una patente por semana';

COMMENT ON COLUMN "public".stats_gps_semana_patente.total_cadenas_problemas IS 'Total de cadenas para una patente con problemas por semana';

COMMENT ON COLUMN "public".stats_gps_semana_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_semana_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';

COMMENT ON COLUMN "public".stats_gps_semana_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';

COMMENT ON COLUMN "public".stats_gps_semana_patente.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".stats_gps_semana_patente.updated_at IS 'Timestamp de la última modificación del registro';

COMMENT ON COLUMN "public".stats_gps_semana_patente.deleted_at IS 'Timestamp del borrado lógico del registro';

CREATE  TABLE "public".desordenadas_dia ( 
	id                   bigserial  NOT NULL ,
	transportista_id     integer   ,
	proveedor_id         integer   ,
	patente_id           integer   ,
	imei_id              integer   ,
	fecha                date  NOT NULL ,
	dia                  smallint  NOT NULL ,
	cant                 integer  NOT NULL ,
	created_at           timestamp DEFAULT current_timestamp  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   
 );

CREATE INDEX idx_desordenadas_dia_0 ON "public".desordenadas_dia ( transportista_id );

CREATE INDEX idx_desordenadas_dia ON "public".desordenadas_dia ( proveedor_id );

CREATE INDEX idx_desordenadas_dia_1 ON "public".desordenadas_dia ( patente_id );

CREATE INDEX idx_desordenadas_dia_2 ON "public".desordenadas_dia ( fecha );

CREATE INDEX idx_desordenadas_dia_3 ON "public".desordenadas_dia ( dia );

CREATE INDEX idx_desordenadas_dia_4 ON "public".desordenadas_dia ( imei_id );

CREATE INDEX idx_desordenadas_dia_5 ON "public".desordenadas_dia ( id, transportista_id, proveedor_id, patente_id, imei_id, fecha, dia );

COMMENT ON TABLE "public".desordenadas_dia IS 'Tabla de cadenas desordenadas recibidas por dia';

COMMENT ON COLUMN "public".desordenadas_dia.id IS 'ID unico del registro';

COMMENT ON COLUMN "public".desordenadas_dia.transportista_id IS 'ID del transportista';

COMMENT ON COLUMN "public".desordenadas_dia.proveedor_id IS 'ID del proveedor de servicio GPS';

COMMENT ON COLUMN "public".desordenadas_dia.patente_id IS 'ID de la patente';

COMMENT ON COLUMN "public".desordenadas_dia.imei_id IS 'Id del IMEI';

COMMENT ON COLUMN "public".desordenadas_dia.fecha IS 'Fecha de receepción de la cadena';

COMMENT ON COLUMN "public".desordenadas_dia.dia IS 'Hora del marco del tiempo a evaluar (0-31)';

COMMENT ON COLUMN "public".desordenadas_dia.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';

COMMENT ON COLUMN "public".desordenadas_dia.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".desordenadas_dia.updated_at IS 'Timestamp de modificación del registro';

COMMENT ON COLUMN "public".desordenadas_dia.deleted_at IS 'Timestamp del borrado logico del registro';

CREATE  TABLE "public".desordenadas_hora ( 
	id                   bigserial  NOT NULL ,
	transportista_id     integer   ,
	proveedor_id         integer   ,
	patente_id           integer   ,
	imei_id              integer   ,
	fecha                date  NOT NULL ,
	hora                 smallint  NOT NULL ,
	cant                 integer  NOT NULL ,
	created_at           timestamp DEFAULT current_timestamp  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   ,
	CONSTRAINT pk_desordenadas_hora_id PRIMARY KEY ( id )
 );

CREATE INDEX idx_desordenadas_hora ON "public".desordenadas_hora ( transportista_id );

CREATE INDEX idx_desordenadas_hora_0 ON "public".desordenadas_hora ( proveedor_id );

CREATE INDEX idx_desordenadas_hora_1 ON "public".desordenadas_hora ( patente_id );

CREATE INDEX idx_desordenadas_hora_2 ON "public".desordenadas_hora ( fecha );

CREATE INDEX idx_desordenadas_hora_3 ON "public".desordenadas_hora ( hora );

CREATE INDEX idx_desordenadas_hora_4 ON "public".desordenadas_hora ( id, transportista_id, proveedor_id, patente_id, imei_id, fecha, hora );

CREATE INDEX idx_desordenadas_hora_5 ON "public".desordenadas_hora ( imei_id );

COMMENT ON TABLE "public".desordenadas_hora IS 'Tabla de cadenas desordenadas recibidas por hora';

COMMENT ON COLUMN "public".desordenadas_hora.id IS 'ID unico del registro';

COMMENT ON COLUMN "public".desordenadas_hora.transportista_id IS 'ID del transportista';

COMMENT ON COLUMN "public".desordenadas_hora.proveedor_id IS 'ID del proveedor de servicio GPS';

COMMENT ON COLUMN "public".desordenadas_hora.patente_id IS 'ID de la patente';

COMMENT ON COLUMN "public".desordenadas_hora.imei_id IS 'Id del IMEI';

COMMENT ON COLUMN "public".desordenadas_hora.fecha IS 'Fecha de receepción de la cadena';

COMMENT ON COLUMN "public".desordenadas_hora.hora IS 'Hora del marco del tiempo a evaluar (0-24)';

COMMENT ON COLUMN "public".desordenadas_hora.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';

COMMENT ON COLUMN "public".desordenadas_hora.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".desordenadas_hora.updated_at IS 'Timestamp de modificación del registro';

COMMENT ON COLUMN "public".desordenadas_hora.deleted_at IS 'Timestamp del borrado logico del registro';

CREATE  TABLE "public".desordenadas_mes ( 
	id                   bigserial  NOT NULL ,
	transportista_id     integer   ,
	proveedor_id         integer   ,
	patente_id           integer   ,
	imei_id              integer   ,
	fecha                date  NOT NULL ,
	mes                  smallint  NOT NULL ,
	cant                 integer  NOT NULL ,
	created_at           timestamp DEFAULT current_timestamp  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   
 );

CREATE INDEX idx_desordenadas_mes ON "public".desordenadas_mes ( transportista_id );

CREATE INDEX idx_desordenadas_mes_0 ON "public".desordenadas_mes ( proveedor_id );

CREATE INDEX idx_desordenadas_mes_1 ON "public".desordenadas_mes ( patente_id );

CREATE INDEX idx_desordenadas_mes_2 ON "public".desordenadas_mes ( imei_id );

CREATE INDEX idx_desordenadas_mes_3 ON "public".desordenadas_mes ( fecha );

CREATE INDEX idx_desordenadas_mes_4 ON "public".desordenadas_mes ( mes );

CREATE INDEX idx_desordenadas_mes_5 ON "public".desordenadas_mes ( id, transportista_id, proveedor_id, patente_id, imei_id, fecha, mes );

COMMENT ON TABLE "public".desordenadas_mes IS 'Tabla de cadenas desordenadas recibidas por mes';

COMMENT ON COLUMN "public".desordenadas_mes.id IS 'ID unico del registro';

COMMENT ON COLUMN "public".desordenadas_mes.transportista_id IS 'ID del transportista';

COMMENT ON COLUMN "public".desordenadas_mes.proveedor_id IS 'ID del proveedor de servicio GPS';

COMMENT ON COLUMN "public".desordenadas_mes.patente_id IS 'ID de la patente';

COMMENT ON COLUMN "public".desordenadas_mes.imei_id IS 'Id del IMEI';

COMMENT ON COLUMN "public".desordenadas_mes.fecha IS 'Fecha de receepción de la cadena';

COMMENT ON COLUMN "public".desordenadas_mes.mes IS 'Mes del marco del tiempo a evaluar (0-12)';

COMMENT ON COLUMN "public".desordenadas_mes.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';

COMMENT ON COLUMN "public".desordenadas_mes.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".desordenadas_mes.updated_at IS 'Timestamp de modificación del registro';

COMMENT ON COLUMN "public".desordenadas_mes.deleted_at IS 'Timestamp del borrado logico del registro';

CREATE  TABLE "public".desordenadas_semana ( 
	id                   bigserial  NOT NULL ,
	transportista_id     integer   ,
	proveedor_id         integer   ,
	patente_id           integer   ,
	imei_id              integer   ,
	fecha                date  NOT NULL ,
	semana               smallint  NOT NULL ,
	cant                 integer  NOT NULL ,
	created_at           timestamp DEFAULT current_timestamp  ,
	updated_at           timestamp   ,
	deleted_at           timestamp   
 );

CREATE INDEX idx_desordenadas_semana ON "public".desordenadas_semana ( transportista_id );

CREATE INDEX idx_desordenadas_semana_0 ON "public".desordenadas_semana ( proveedor_id );

CREATE INDEX idx_desordenadas_semana_1 ON "public".desordenadas_semana ( patente_id );

CREATE INDEX idx_desordenadas_semana_2 ON "public".desordenadas_semana ( imei_id );

CREATE INDEX idx_desordenadas_semana_3 ON "public".desordenadas_semana ( fecha );

CREATE INDEX idx_desordenadas_semana_4 ON "public".desordenadas_semana ( semana );

CREATE INDEX idx_desordenadas_semana_5 ON "public".desordenadas_semana ( id, transportista_id, proveedor_id, patente_id, imei_id, fecha, semana );

COMMENT ON TABLE "public".desordenadas_semana IS 'Tabla de cadenas desordenadas recibidas por semana';

COMMENT ON COLUMN "public".desordenadas_semana.id IS 'ID unico del registro';

COMMENT ON COLUMN "public".desordenadas_semana.transportista_id IS 'ID del transportista';

COMMENT ON COLUMN "public".desordenadas_semana.proveedor_id IS 'ID del proveedor de servicio GPS';

COMMENT ON COLUMN "public".desordenadas_semana.patente_id IS 'ID de la patente';

COMMENT ON COLUMN "public".desordenadas_semana.imei_id IS 'Id del IMEI';

COMMENT ON COLUMN "public".desordenadas_semana.fecha IS 'Fecha de receepción de la cadena';

COMMENT ON COLUMN "public".desordenadas_semana.semana IS 'Semana del marco del tiempo a evaluar (0-52)';

COMMENT ON COLUMN "public".desordenadas_semana.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';

COMMENT ON COLUMN "public".desordenadas_semana.created_at IS 'Timestamp de la creación del registro';

COMMENT ON COLUMN "public".desordenadas_semana.updated_at IS 'Timestamp de modificación del registro';

COMMENT ON COLUMN "public".desordenadas_semana.deleted_at IS 'Timestamp del borrado logico del registro';

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

ALTER TABLE "public".desordenadas_dia ADD CONSTRAINT fk_desordenadas_dia_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".desordenadas_dia ADD CONSTRAINT fk_desordenadas_dia_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".desordenadas_dia ADD CONSTRAINT fk_desordenadas_dia_trn_patentes FOREIGN KEY ( patente_id ) REFERENCES "public".trn_patentes( id );

ALTER TABLE "public".desordenadas_dia ADD CONSTRAINT fk_desordenadas_dia_gps_imei FOREIGN KEY ( imei_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".desordenadas_hora ADD CONSTRAINT fk_desordenadas_hora_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".desordenadas_hora ADD CONSTRAINT fk_desordenadas_hora_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".desordenadas_hora ADD CONSTRAINT fk_desordenadas_hora_trn_patentes FOREIGN KEY ( patente_id ) REFERENCES "public".trn_patentes( id );

ALTER TABLE "public".desordenadas_hora ADD CONSTRAINT fk_desordenadas_hora_gps_imei FOREIGN KEY ( imei_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".desordenadas_mes ADD CONSTRAINT fk_desordenadas_mes_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".desordenadas_mes ADD CONSTRAINT fk_desordenadas_mes_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".desordenadas_mes ADD CONSTRAINT fk_desordenadas_mes_trn_patentes FOREIGN KEY ( patente_id ) REFERENCES "public".trn_patentes( id );

ALTER TABLE "public".desordenadas_mes ADD CONSTRAINT fk_desordenadas_mes_gps_imei FOREIGN KEY ( imei_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".desordenadas_semana ADD CONSTRAINT fk_desordenadas_semana_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".desordenadas_semana ADD CONSTRAINT fk_desordenadas_semana_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".desordenadas_semana ADD CONSTRAINT fk_desordenadas_semana_trn_patentes FOREIGN KEY ( patente_id ) REFERENCES "public".trn_patentes( id );

ALTER TABLE "public".desordenadas_semana ADD CONSTRAINT fk_desordenadas_semana_gps_imei FOREIGN KEY ( imei_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".gps_imei ADD CONSTRAINT fk_gps_imei_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".gps_imei ADD CONSTRAINT fk_gps_imei_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".gps_imei ADD CONSTRAINT fk_gps_imei_trn_patentes FOREIGN KEY ( patente_id ) REFERENCES "public".trn_patentes( id );

ALTER TABLE "public".gps_real_time ADD CONSTRAINT fk_gps_real_time_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".gps_real_time ADD CONSTRAINT fk_gps_real_time_trn_patentes FOREIGN KEY ( imei_id ) REFERENCES "public".trn_patentes( id );

ALTER TABLE "public".gps_real_time ADD CONSTRAINT fk_gps_real_time_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".gps_real_time ADD CONSTRAINT fk_gps_real_time_gps_imei FOREIGN KEY ( patente_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".gps_transportista ADD CONSTRAINT fk_gps_transportista_trn_patentes FOREIGN KEY ( id ) REFERENCES "public".trn_patentes( transportista_id );

ALTER TABLE "public".stats_gps_dia_patente ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_0 FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_gps_dia_patente ADD CONSTRAINT fk_stats_gps_dia_patente_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".stats_gps_dia_patente ADD CONSTRAINT fk_stats_gps_dia_patente_gps_transportista_0 FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".stats_gps_dia_patente ADD CONSTRAINT fk_stats_gps_dia_patente_trn_patentes FOREIGN KEY ( patente_id ) REFERENCES "public".trn_patentes( id );

ALTER TABLE "public".stats_gps_dia_patente ADD CONSTRAINT fk_stats_gps_dia_patente_gps_imei FOREIGN KEY ( imei_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".stats_gps_dia_transportista ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_0 FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".stats_gps_dia_transportista ADD CONSTRAINT fk_stats_gps_dia_transportista_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_gps_hora_patente ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_gps_hora_patente ADD CONSTRAINT fk_stats_gps_hora_patente_trn_patentes FOREIGN KEY ( patente_id ) REFERENCES "public".trn_patentes( id );

ALTER TABLE "public".stats_gps_hora_patente ADD CONSTRAINT fk_stats_gps_hora_patente_gps_imei FOREIGN KEY ( imei_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".stats_gps_hora_patente ADD CONSTRAINT fk_stats_gps_hora_patente_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".stats_gps_hora_transportista ADD CONSTRAINT fk_stats_gps_hour_gps_transportista FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".stats_gps_hora_transportista ADD CONSTRAINT fk_stats_gps_hora_transportista_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_gps_mes_patente ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_2 FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_gps_mes_patente ADD CONSTRAINT fk_stats_gps_mes_patente_trn_patentes FOREIGN KEY ( patente_id ) REFERENCES "public".trn_patentes( id );

ALTER TABLE "public".stats_gps_mes_patente ADD CONSTRAINT fk_stats_gps_mes_patente_gps_imei FOREIGN KEY ( imei_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".stats_gps_mes_transportista ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_2 FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".stats_gps_mes_transportista ADD CONSTRAINT fk_stats_gps_mes_transportista_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_gps_semana_patente ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_1 FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_gps_semana_patente ADD CONSTRAINT fk_stats_gps_semana_patente_trn_patentes FOREIGN KEY ( patente_id ) REFERENCES "public".trn_patentes( id );

ALTER TABLE "public".stats_gps_semana_patente ADD CONSTRAINT fk_stats_gps_semana_patente_gps_imei FOREIGN KEY ( imei_id ) REFERENCES "public".gps_imei( id );

ALTER TABLE "public".stats_gps_semana_transportista ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_1 FOREIGN KEY ( transportista_id ) REFERENCES "public".gps_transportista( id );

ALTER TABLE "public".stats_gps_semana_transportista ADD CONSTRAINT fk_stats_gps_semana_transportista_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_trafic_proveedor_day ADD CONSTRAINT fk_stats_trafic_proveedor_day_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_trafic_proveedor_hour ADD CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor_0 FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_trafic_proveedor_min ADD CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".stats_trafic_proveedor_month ADD CONSTRAINT fk_stats_trafic_proveedor_month_gps_proveedor FOREIGN KEY ( proveedor_id ) REFERENCES "public".gps_proveedor( id );

ALTER TABLE "public".users ADD CONSTRAINT fk_user_gb_perfiles FOREIGN KEY ( perfil_id ) REFERENCES "public".gb_perfiles( id );

