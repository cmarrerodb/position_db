CREATE TABLE public.gb_perfiles (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    permisos text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.gb_perfiles OWNER TO postgres;

--
-- Name: TABLE gb_perfiles; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gb_perfiles IS 'Perrfiles dfe usuario';


--
-- Name: COLUMN gb_perfiles.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.id IS 'ID unico del registro';


--
-- Name: COLUMN gb_perfiles.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.nombre IS 'Nombre del perfil del usuario';


--
-- Name: COLUMN gb_perfiles.permisos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.permisos IS 'Permisos del usuario';


--
-- Name: COLUMN gb_perfiles.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.created_at IS 'Timestamp de creacion del registro';


--
-- Name: COLUMN gb_perfiles.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.updated_at IS 'Timestamp de modificacion del registro';


--
-- Name: COLUMN gb_perfiles.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- Name: gb_perfiles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gb_perfiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gb_perfiles_id_seq OWNER TO postgres;

--
-- Name: gb_perfiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gb_perfiles_id_seq OWNED BY public.gb_perfiles.id;


--
-- Name: gps_patentes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gps_patentes (
    id bigint NOT NULL,
    transportista_id integer NOT NULL,
    patente character(6) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.gps_patentes OWNER TO postgres;

--
-- Name: TABLE gps_patentes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gps_patentes IS 'Tabla de patentes de los transportistas';


--
-- Name: COLUMN gps_patentes.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes.id IS 'ID unico del registro';


--
-- Name: COLUMN gps_patentes.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes.transportista_id IS 'ID del transportista al cualk pertenece la patente';


--
-- Name: COLUMN gps_patentes.patente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes.patente IS '´´umero de la patente';


--
-- Name: COLUMN gps_patentes.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes.created_at IS 'Timestamp de creacion del registro';


--
-- Name: COLUMN gps_patentes.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes.updated_at IS 'Timestamp de modificacion del registro';


--
-- Name: COLUMN gps_patentes.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- Name: gps_patentes_imei; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gps_patentes_imei (
    id bigint NOT NULL,
    transportista_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    patente_id bigint NOT NULL,
    proveedor_id bigint NOT NULL
);


ALTER TABLE public.gps_patentes_imei OWNER TO postgres;

--
-- Name: TABLE gps_patentes_imei; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gps_patentes_imei IS 'Tabla de de IMEI vinculada a la patente y al transportista';


--
-- Name: COLUMN gps_patentes_imei.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes_imei.id IS 'ID unico del registro';


--
-- Name: COLUMN gps_patentes_imei.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes_imei.transportista_id IS 'ID del transportista al cualk pertenece la patente';


--
-- Name: COLUMN gps_patentes_imei.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes_imei.created_at IS 'Timestamp de creacion del registro';


--
-- Name: COLUMN gps_patentes_imei.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes_imei.updated_at IS 'Timestamp de modificacion del registro';


--
-- Name: COLUMN gps_patentes_imei.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes_imei.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- Name: COLUMN gps_patentes_imei.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes_imei.patente_id IS 'ID de la patente con la cual se relaciona el IMWI';


--
-- Name: COLUMN gps_patentes_imei.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_patentes_imei.proveedor_id IS 'ID del proveefor de servicio GPS coion el cual se relaciona el IMEI';


--
-- Name: gps_proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gps_proveedor (
    id integer NOT NULL,
    razon_social character(50) NOT NULL,
    email character(50) NOT NULL,
    total integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.gps_proveedor OWNER TO postgres;

--
-- Name: TABLE gps_proveedor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gps_proveedor IS 'Tabla del del provedor del dervicio GPS';


--
-- Name: COLUMN gps_proveedor.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.id IS 'Identificaciu´ón ´único del registro';


--
-- Name: COLUMN gps_proveedor.razon_social; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.razon_social IS 'Razon sociual del proveedor del servicio GPS';


--
-- Name: COLUMN gps_proveedor.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.email IS 'Email del contacto del proveedor del sdervicio GPS';


--
-- Name: COLUMN gps_proveedor.total; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.total IS 'Cantidad total de vehiculos que maneja el proveedor del servicio GPS';


--
-- Name: COLUMN gps_proveedor.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.created_at IS 'Timestamp de creaci´ón del registro';


--
-- Name: COLUMN gps_proveedor.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.updated_at IS 'Timestamp de actiañizacion´ón del registro';


--
-- Name: COLUMN gps_proveedor.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.deleted_at IS 'Timestamp de borrado logico´ón del registro';


--
-- Name: gps_real_time; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gps_real_time (
    id bigint NOT NULL,
    timestamp_gps timestamp without time zone,
    timestamp_sys timestamp without time zone,
    frecuencia time without time zone,
    latencia integer NOT NULL,
    ordenada smallint DEFAULT 1 NOT NULL,
    motor smallint DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    imei_id bigint,
    transportista_id bigint,
    proveedor_id bigint,
    patente_id bigint,
    raw_data text,
    rawdata text NOT NULL,
    rejected boolean DEFAULT false
);


ALTER TABLE public.gps_real_time OWNER TO postgres;

--
-- Name: TABLE gps_real_time; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gps_real_time IS 'Tabla de almacenamiento de toda la data entrante';


--
-- Name: COLUMN gps_real_time.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.id IS 'Identificación única del registro';


--
-- Name: COLUMN gps_real_time.timestamp_gps; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.timestamp_gps IS 'Timestamp en la cual se generó la señal en el GPS';


--
-- Name: COLUMN gps_real_time.timestamp_sys; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.timestamp_sys IS 'Timestamp de la recepción de la data del GPS';


--
-- Name: COLUMN gps_real_time.frecuencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.frecuencia IS 'Diferencia de tiempo entre el registro actual y el anterior';


--
-- Name: COLUMN gps_real_time.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.latencia IS 'Latencia dek GPS';


--
-- Name: COLUMN gps_real_time.ordenada; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.ordenada IS 'Indica si la fecha de recpción del datos es posterior al dato anterior, en cuyo caso su valor es 1; si la fecha de recepción es naterior al registro previo, su valor es 0';


--
-- Name: COLUMN gps_real_time.motor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.motor IS 'Indica si el dato fue enciado con el motor encendido o no; en caso de ser asi, su valor es 1, encaso contrario 0';


--
-- Name: COLUMN gps_real_time.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.created_at IS 'Timestamp de creación del registro';


--
-- Name: COLUMN gps_real_time.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.updated_at IS 'Timestamp de modificación del registro';


--
-- Name: COLUMN gps_real_time.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.deleted_at IS 'Timestamp de borrado lógico del registro';


--
-- Name: COLUMN gps_real_time.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.imei_id IS 'ID del  IMEI';


--
-- Name: COLUMN gps_real_time.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.proveedor_id IS 'ID del proveefor del dercivio de GPS';


--
-- Name: COLUMN gps_real_time.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.patente_id IS 'ID de la patente';


--
-- Name: COLUMN gps_real_time.raw_data; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.raw_data IS 'Data bruta entrante';


--
-- Name: COLUMN gps_real_time.rawdata; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.rawdata IS 'Data en bruto proveniente del GPS';


--
-- Name: COLUMN gps_real_time.rejected; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.rejected IS 'Cadena rechazada proveniente del gps';


--
-- Name: gps_real_time_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_real_time_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gps_real_time_id_seq OWNER TO postgres;

--
-- Name: gps_real_time_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gps_real_time_id_seq OWNED BY public.gps_real_time.id;


--
-- Name: gps_transportista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gps_transportista (
    id integer NOT NULL,
    razon_social character(50) NOT NULL,
    codigo character(50) NOT NULL,
    email character(50) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.gps_transportista OWNER TO postgres;

--
-- Name: TABLE gps_transportista; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gps_transportista IS 'Tabla del del transportista';


--
-- Name: COLUMN gps_transportista.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.id IS 'Identificaciu´ón ´único del registro';


--
-- Name: COLUMN gps_transportista.razon_social; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.razon_social IS 'Razon sociual del proveedor del servicio GPS';


--
-- Name: COLUMN gps_transportista.codigo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.codigo IS 'Dodigo del transportista';


--
-- Name: COLUMN gps_transportista.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.email IS 'Email del contacto del proveedor del sdervicio GPS';


--
-- Name: COLUMN gps_transportista.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.created_at IS 'Timestamp de creaci´ón del registro';


--
-- Name: COLUMN gps_transportista.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.updated_at IS 'Timestamp de actiañizacion´ón del registro';


--
-- Name: COLUMN gps_transportista.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.deleted_at IS 'Timestamp de borrado logico´ón del registro';


--
-- Name: gps_transportista_0_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_transportista_0_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gps_transportista_0_id_seq OWNER TO postgres;

--
-- Name: gps_transportista_0_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gps_transportista_0_id_seq OWNED BY public.gps_proveedor.id;


--
-- Name: gps_transportista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_transportista_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gps_transportista_id_seq OWNER TO postgres;

--
-- Name: gps_transportista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gps_transportista_id_seq OWNED BY public.gps_transportista.id;


--
-- Name: stats_gps_hour; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_hour (
    id bigint NOT NULL,
    hora smallint NOT NULL,
    frecuencia integer NOT NULL,
    latencia integer NOT NULL,
    ordenadas integer NOT NULL,
    recibidas integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    fecha date NOT NULL,
    imei_id bigint NOT NULL
);


ALTER TABLE public.stats_gps_hour OWNER TO postgres;

--
-- Name: TABLE stats_gps_hour; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_hour IS 'Almacena las estadísticas por hora de la data enviada por lo sGPS';


--
-- Name: COLUMN stats_gps_hour.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hour.id IS 'Identificacion unica del registro';


--
-- Name: COLUMN stats_gps_hour.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hour.hora IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- Name: COLUMN stats_gps_hour.frecuencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hour.frecuencia IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha';


--
-- Name: COLUMN stats_gps_hour.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hour.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- Name: COLUMN stats_gps_hour.ordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hour.ordenadas IS 'Cantidad de registros ordenados durante esa hora del día, para esa fecha';


--
-- Name: COLUMN stats_gps_hour.recibidas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hour.recibidas IS 'Cantidad de registros recibidos durante esa hora del ´ia, para esa fecha';


--
-- Name: COLUMN stats_gps_hour.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hour.created_at IS 'Timestamp de la creación del registro';


--
-- Name: COLUMN stats_gps_hour.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hour.updated_at IS 'Timestamp de la última modificación del registro';


--
-- Name: COLUMN stats_gps_hour.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hour.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- Name: COLUMN stats_gps_hour.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hour.fecha IS 'Fecha de la hora';


--
-- Name: COLUMN stats_gps_hour.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hour.imei_id IS 'ID del imei';


--
-- Name: stat_gps_hour_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stat_gps_hour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stat_gps_hour_id_seq OWNER TO postgres;

--
-- Name: stat_gps_hour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stat_gps_hour_id_seq OWNED BY public.stats_gps_hour.id;


--
-- Name: stats_gps_day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_day (
    id bigint NOT NULL,
    fecha date NOT NULL,
    dia smallint NOT NULL,
    frecuencia integer NOT NULL,
    latencia integer NOT NULL,
    ordenadas integer NOT NULL,
    recibidas integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    imei_id bigint NOT NULL
);


ALTER TABLE public.stats_gps_day OWNER TO postgres;

--
-- Name: TABLE stats_gps_day; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_day IS 'Almacena las estadísticas por hora de la data enviada por lo sGPS';


--
-- Name: COLUMN stats_gps_day.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_day.id IS 'Identificacion unica del registro';


--
-- Name: COLUMN stats_gps_day.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_day.fecha IS 'Fecha de la hora';


--
-- Name: COLUMN stats_gps_day.dia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_day.dia IS 'Día del mes en la cual se genera el resúmen de la estadística, para esa fecha (1 - 31)';


--
-- Name: COLUMN stats_gps_day.frecuencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_day.frecuencia IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha';


--
-- Name: COLUMN stats_gps_day.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_day.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- Name: COLUMN stats_gps_day.ordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_day.ordenadas IS 'Cantidad de registros ordenados durante esa hora del día, para esa fecha';


--
-- Name: COLUMN stats_gps_day.recibidas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_day.recibidas IS 'Cantidad de registros recibidos durante esa hora del ´ia, para esa fecha';


--
-- Name: COLUMN stats_gps_day.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_day.created_at IS 'Timestamp de la creación del registro';


--
-- Name: COLUMN stats_gps_day.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_day.updated_at IS 'Timestamp de la última modificación del registro';


--
-- Name: COLUMN stats_gps_day.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_day.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- Name: COLUMN stats_gps_day.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_day.imei_id IS 'ID del imei';


--
-- Name: stats_gps_hour_0_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_hour_0_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stats_gps_hour_0_id_seq OWNER TO postgres;

--
-- Name: stats_gps_hour_0_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_hour_0_id_seq OWNED BY public.stats_gps_day.id;


--
-- Name: stats_gps_week; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_week (
    id bigint NOT NULL,
    fecha date NOT NULL,
    semana smallint NOT NULL,
    frecuencia integer NOT NULL,
    latencia integer NOT NULL,
    ordenadas integer NOT NULL,
    recibidas integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    imei_id bigint NOT NULL
);


ALTER TABLE public.stats_gps_week OWNER TO postgres;

--
-- Name: TABLE stats_gps_week; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_week IS 'Almacena las estadísticas por hora de la data enviada por lo sGPS';


--
-- Name: COLUMN stats_gps_week.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_week.id IS 'Identificacion unica del registro';


--
-- Name: COLUMN stats_gps_week.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_week.fecha IS 'Fecha de la hora';


--
-- Name: COLUMN stats_gps_week.semana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_week.semana IS 'Semana del año en la cual se genera el resúmen de la estadística, para esa fecha (1 - 52)';


--
-- Name: COLUMN stats_gps_week.frecuencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_week.frecuencia IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha';


--
-- Name: COLUMN stats_gps_week.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_week.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- Name: COLUMN stats_gps_week.ordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_week.ordenadas IS 'Cantidad de registros ordenados durante esa hora del día, para esa fecha';


--
-- Name: COLUMN stats_gps_week.recibidas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_week.recibidas IS 'Cantidad de registros recibidos durante esa hora del ´ia, para esa fecha';


--
-- Name: COLUMN stats_gps_week.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_week.created_at IS 'Timestamp de la creación del registro';


--
-- Name: COLUMN stats_gps_week.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_week.updated_at IS 'Timestamp de la última modificación del registro';


--
-- Name: COLUMN stats_gps_week.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_week.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- Name: COLUMN stats_gps_week.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_week.imei_id IS 'ID del imei';


--
-- Name: stats_gps_hour_0_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_hour_0_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stats_gps_hour_0_id_seq1 OWNER TO postgres;

--
-- Name: stats_gps_hour_0_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_hour_0_id_seq1 OWNED BY public.stats_gps_week.id;


--
-- Name: stats_trafic_proveedor_day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_trafic_proveedor_day (
    id bigint NOT NULL,
    fecha date NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    proveedor_id integer
);


ALTER TABLE public.stats_trafic_proveedor_day OWNER TO postgres;

--
-- Name: TABLE stats_trafic_proveedor_day; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_trafic_proveedor_day IS 'Stadísitcas de tráfico del proveedor por minuto';


--
-- Name: COLUMN stats_trafic_proveedor_day.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.id IS 'Identificador unico del registro';


--
-- Name: COLUMN stats_trafic_proveedor_day.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.fecha IS 'Fecha de la data';


--
-- Name: COLUMN stats_trafic_proveedor_day.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.cantidad IS 'Cantidad recibidos en la ventana de tiempo';


--
-- Name: COLUMN stats_trafic_proveedor_day.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.created_at IS 'Timestamp de la creación del registro';


--
-- Name: COLUMN stats_trafic_proveedor_day.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.updated_at IS 'Timestamp de la ultima actualización del registro';


--
-- Name: COLUMN stats_trafic_proveedor_day.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- Name: COLUMN stats_trafic_proveedor_day.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.proveedor_id IS 'ID dfeñpr';


--
-- Name: stats_trafic_proveedor_month; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_trafic_proveedor_month (
    id bigint NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    mes smallint NOT NULL,
    proveedor_id integer NOT NULL,
    anio integer
);


ALTER TABLE public.stats_trafic_proveedor_month OWNER TO postgres;

--
-- Name: TABLE stats_trafic_proveedor_month; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_trafic_proveedor_month IS 'Stadísitcas de tráfico del proveedor por mes';


--
-- Name: COLUMN stats_trafic_proveedor_month.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.id IS 'Identificador unico del registro';


--
-- Name: COLUMN stats_trafic_proveedor_month.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.cantidad IS 'Cantidad recibidos en la ventana de tiempo';


--
-- Name: COLUMN stats_trafic_proveedor_month.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.created_at IS 'Timestamp de creación del registro';


--
-- Name: COLUMN stats_trafic_proveedor_month.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.updated_at IS 'Timestamp de la ultima actualizacion del registro';


--
-- Name: COLUMN stats_trafic_proveedor_month.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- Name: COLUMN stats_trafic_proveedor_month.mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.mes IS 'Mes de la data (1-12)';


--
-- Name: COLUMN stats_trafic_proveedor_month.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.proveedor_id IS 'ID del proveedor de servio GPS';


--
-- Name: COLUMN stats_trafic_proveedor_month.anio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.anio IS 'Aniode del mes';


--
-- Name: stats_trafic_proveedor_dia_0_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_dia_0_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stats_trafic_proveedor_dia_0_id_seq OWNER TO postgres;

--
-- Name: stats_trafic_proveedor_dia_0_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_trafic_proveedor_dia_0_id_seq OWNED BY public.stats_trafic_proveedor_month.id;


--
-- Name: stats_trafic_proveedor_hour; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_trafic_proveedor_hour (
    id bigint NOT NULL,
    proveedor_id integer NOT NULL,
    fecha date NOT NULL,
    hora smallint NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.stats_trafic_proveedor_hour OWNER TO postgres;

--
-- Name: TABLE stats_trafic_proveedor_hour; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_trafic_proveedor_hour IS 'Stadísitcas de tráfico del proveedor por hora';


--
-- Name: COLUMN stats_trafic_proveedor_hour.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.id IS 'Identificador unico del registro';


--
-- Name: COLUMN stats_trafic_proveedor_hour.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.proveedor_id IS 'ID del probeedpr';


--
-- Name: COLUMN stats_trafic_proveedor_hour.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.fecha IS 'Fecha de la data';


--
-- Name: COLUMN stats_trafic_proveedor_hour.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.hora IS 'Hora de la data';


--
-- Name: COLUMN stats_trafic_proveedor_hour.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.cantidad IS 'Cantidad recibidos en la ventana de tiempo';


--
-- Name: COLUMN stats_trafic_proveedor_hour.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.created_at IS 'Timestamp de creación del registro';


--
-- Name: COLUMN stats_trafic_proveedor_hour.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.updated_at IS 'Timestamp de última actualización del registro';


--
-- Name: COLUMN stats_trafic_proveedor_hour.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- Name: stats_trafic_proveedor_min; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_trafic_proveedor_min (
    id bigint NOT NULL,
    fecha date NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    hora smallint NOT NULL,
    minuto smallint NOT NULL,
    proveedor_id integer NOT NULL
);


ALTER TABLE public.stats_trafic_proveedor_min OWNER TO postgres;

--
-- Name: TABLE stats_trafic_proveedor_min; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_trafic_proveedor_min IS 'Stadísitcas de tráfico del proveedor por minuto';


--
-- Name: COLUMN stats_trafic_proveedor_min.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.id IS 'Identificador unico del registro';


--
-- Name: COLUMN stats_trafic_proveedor_min.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.fecha IS 'Fecha de la data';


--
-- Name: COLUMN stats_trafic_proveedor_min.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.cantidad IS 'Cantidad recibidos en la ventana de tiempo';


--
-- Name: COLUMN stats_trafic_proveedor_min.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.created_at IS 'Timestamp de creación del registro';


--
-- Name: COLUMN stats_trafic_proveedor_min.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.updated_at IS 'Timestamp de última actualización del registro';


--
-- Name: COLUMN stats_trafic_proveedor_min.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- Name: COLUMN stats_trafic_proveedor_min.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.hora IS 'Hora de la data';


--
-- Name: COLUMN stats_trafic_proveedor_min.minuto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.minuto IS 'Minuto de la data (0 - 59)';


--
-- Name: COLUMN stats_trafic_proveedor_min.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.proveedor_id IS 'ID del probeedpr';


--
-- Name: stats_trafic_proveedor_min_0_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_min_0_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stats_trafic_proveedor_min_0_id_seq OWNER TO postgres;

--
-- Name: stats_trafic_proveedor_min_0_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_trafic_proveedor_min_0_id_seq OWNED BY public.stats_trafic_proveedor_day.id;


--
-- Name: stats_trafic_proveedor_min_0_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_min_0_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stats_trafic_proveedor_min_0_id_seq1 OWNER TO postgres;

--
-- Name: stats_trafic_proveedor_min_0_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_trafic_proveedor_min_0_id_seq1 OWNED BY public.stats_trafic_proveedor_hour.id;


--
-- Name: stats_trafic_proveedor_min_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_min_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stats_trafic_proveedor_min_id_seq OWNER TO postgres;

--
-- Name: stats_trafic_proveedor_min_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_trafic_proveedor_min_id_seq OWNED BY public.stats_trafic_proveedor_min.id;


--
-- Name: trn_patentes_0_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trn_patentes_0_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trn_patentes_0_id_seq OWNER TO postgres;

--
-- Name: trn_patentes_0_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trn_patentes_0_id_seq OWNED BY public.gps_patentes_imei.id;


--
-- Name: trn_patentes_0_transportista-id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."trn_patentes_0_transportista-id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."trn_patentes_0_transportista-id_seq" OWNER TO postgres;

--
-- Name: trn_patentes_0_transportista-id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."trn_patentes_0_transportista-id_seq" OWNED BY public.gps_patentes_imei.transportista_id;


--
-- Name: trn_patentes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trn_patentes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trn_patentes_id_seq OWNER TO postgres;

--
-- Name: trn_patentes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trn_patentes_id_seq OWNED BY public.gps_patentes.id;


--
-- Name: trn_patentes_transportista-id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."trn_patentes_transportista-id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."trn_patentes_transportista-id_seq" OWNER TO postgres;

--
-- Name: trn_patentes_transportista-id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."trn_patentes_transportista-id_seq" OWNED BY public.gps_patentes.transportista_id;


--
-- Name: uswea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uswea (
    id integer NOT NULL,
    perfil_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp without time zone NOT NULL,
    password character varying(255) NOT NULL,
    avatar text,
    remember_token character varying(100),
    bloqueado boolean DEFAULT false,
    old_psw text,
    two_steps boolean DEFAULT false,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.uswea OWNER TO postgres;

--
-- Name: TABLE uswea; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.uswea IS 'Tabla de usuarios';


--
-- Name: COLUMN uswea.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.id IS 'ID unico del registro';


--
-- Name: COLUMN uswea.perfil_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.perfil_id IS 'ID del perfil del usuario';


--
-- Name: COLUMN uswea.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.name IS 'Nombre dek usuario';


--
-- Name: COLUMN uswea.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.email IS 'Emaik del usuario';


--
-- Name: COLUMN uswea.email_verified_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.email_verified_at IS 'Timestamp de la verificacion del correo';


--
-- Name: COLUMN uswea.password; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.password IS 'Clave del usuario';


--
-- Name: COLUMN uswea.avatar; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.avatar IS 'Avatar deñ usuario';


--
-- Name: COLUMN uswea.remember_token; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.remember_token IS 'Recordar toalen de usuario';


--
-- Name: COLUMN uswea.bloqueado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.bloqueado IS 'Indica si el usuario est´á bloqueado o no';


--
-- Name: COLUMN uswea.old_psw; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.old_psw IS 'Clave anterior';


--
-- Name: COLUMN uswea.two_steps; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.two_steps IS 'Verificacion de dos factores';


--
-- Name: COLUMN uswea.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.created_at IS 'Timestamp de creacion del registro';


--
-- Name: COLUMN uswea.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.updated_at IS 'Timestamp de modificacion del registro';


--
-- Name: COLUMN uswea.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.uswea.deleted_at IS 'Timestamp de borrADO LOGICO del registro';


--
-- Name: uswea_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.uswea_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.uswea_id_seq OWNER TO postgres;

--
-- Name: uswea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.uswea_id_seq OWNED BY public.uswea.id;


--
-- Name: gb_perfiles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gb_perfiles ALTER COLUMN id SET DEFAULT nextval('public.gb_perfiles_id_seq'::regclass);


--
-- Name: gps_patentes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_patentes ALTER COLUMN id SET DEFAULT nextval('public.trn_patentes_id_seq'::regclass);


--
-- Name: gps_patentes transportista_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_patentes ALTER COLUMN transportista_id SET DEFAULT nextval('public."trn_patentes_transportista-id_seq"'::regclass);


--
-- Name: gps_patentes_imei id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_patentes_imei ALTER COLUMN id SET DEFAULT nextval('public.trn_patentes_0_id_seq'::regclass);


--
-- Name: gps_patentes_imei transportista_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_patentes_imei ALTER COLUMN transportista_id SET DEFAULT nextval('public."trn_patentes_0_transportista-id_seq"'::regclass);


--
-- Name: gps_proveedor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_proveedor ALTER COLUMN id SET DEFAULT nextval('public.gps_transportista_0_id_seq'::regclass);


--
-- Name: gps_real_time id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time ALTER COLUMN id SET DEFAULT nextval('public.gps_real_time_id_seq'::regclass);


--
-- Name: gps_transportista id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_transportista ALTER COLUMN id SET DEFAULT nextval('public.gps_transportista_id_seq'::regclass);


--
-- Name: stats_gps_day id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_day ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_hour_0_id_seq'::regclass);


--
-- Name: stats_gps_hour id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hour ALTER COLUMN id SET DEFAULT nextval('public.stat_gps_hour_id_seq'::regclass);


--
-- Name: stats_gps_week id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_week ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_hour_0_id_seq1'::regclass);


--
-- Name: stats_trafic_proveedor_day id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_day ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_min_0_id_seq'::regclass);


--
-- Name: stats_trafic_proveedor_hour id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_hour ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_min_0_id_seq1'::regclass);


--
-- Name: stats_trafic_proveedor_min id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_min ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_min_id_seq'::regclass);


--
-- Name: stats_trafic_proveedor_month id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_month ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_dia_0_id_seq'::regclass);


--
-- Name: uswea id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uswea ALTER COLUMN id SET DEFAULT nextval('public.uswea_id_seq'::regclass);


--
-- Data for Name: gb_perfiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gb_perfiles (id, nombre, permisos, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: gps_patentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gps_patentes (id, transportista_id, patente, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: gps_patentes_imei; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gps_patentes_imei (id, transportista_id, created_at, updated_at, deleted_at, patente_id, proveedor_id) FROM stdin;
\.


--
-- Data for Name: gps_proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gps_proveedor (id, razon_social, email, total, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: gps_real_time; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gps_real_time (id, timestamp_gps, timestamp_sys, frecuencia, latencia, ordenada, motor, created_at, updated_at, deleted_at, imei_id, transportista_id, proveedor_id, patente_id, raw_data, rawdata, rejected) FROM stdin;
\.


--
-- Data for Name: gps_transportista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gps_transportista (id, razon_social, codigo, email, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: stats_gps_day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_day (id, fecha, dia, frecuencia, latencia, ordenadas, recibidas, created_at, updated_at, deleted_at, imei_id) FROM stdin;
\.


--
-- Data for Name: stats_gps_hour; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_hour (id, hora, frecuencia, latencia, ordenadas, recibidas, created_at, updated_at, deleted_at, fecha, imei_id) FROM stdin;
\.


--
-- Data for Name: stats_gps_week; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_week (id, fecha, semana, frecuencia, latencia, ordenadas, recibidas, created_at, updated_at, deleted_at, imei_id) FROM stdin;
\.


--
-- Data for Name: stats_trafic_proveedor_day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_trafic_proveedor_day (id, fecha, cantidad, created_at, updated_at, deleted_at, proveedor_id) FROM stdin;
\.


--
-- Data for Name: stats_trafic_proveedor_hour; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_trafic_proveedor_hour (id, proveedor_id, fecha, hora, cantidad, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Data for Name: stats_trafic_proveedor_min; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_trafic_proveedor_min (id, fecha, cantidad, created_at, updated_at, deleted_at, hora, minuto, proveedor_id) FROM stdin;
\.


--
-- Data for Name: stats_trafic_proveedor_month; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_trafic_proveedor_month (id, cantidad, created_at, updated_at, deleted_at, mes, proveedor_id, anio) FROM stdin;
\.


--
-- Data for Name: uswea; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.uswea (id, perfil_id, name, email, email_verified_at, password, avatar, remember_token, bloqueado, old_psw, two_steps, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- Name: gb_perfiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gb_perfiles_id_seq', 1, false);


--
-- Name: gps_real_time_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_real_time_id_seq', 1, false);


--
-- Name: gps_transportista_0_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_transportista_0_id_seq', 1, false);


--
-- Name: gps_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_transportista_id_seq', 1, false);


--
-- Name: stat_gps_hour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stat_gps_hour_id_seq', 1, false);


--
-- Name: stats_gps_hour_0_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_hour_0_id_seq', 1, false);


--
-- Name: stats_gps_hour_0_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_hour_0_id_seq1', 1, false);


--
-- Name: stats_trafic_proveedor_dia_0_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_dia_0_id_seq', 1, false);


--
-- Name: stats_trafic_proveedor_min_0_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_min_0_id_seq', 1, false);


--
-- Name: stats_trafic_proveedor_min_0_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_min_0_id_seq1', 1, false);


--
-- Name: stats_trafic_proveedor_min_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_min_id_seq', 1, false);


--
-- Name: trn_patentes_0_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_0_id_seq', 1, false);


--
-- Name: trn_patentes_0_transportista-id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."trn_patentes_0_transportista-id_seq"', 1, false);


--
-- Name: trn_patentes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_id_seq', 1, false);


--
-- Name: trn_patentes_transportista-id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."trn_patentes_transportista-id_seq"', 1, false);


--
-- Name: uswea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.uswea_id_seq', 1, false);


--
-- Name: gb_perfiles pk_gb_perfiles_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gb_perfiles
    ADD CONSTRAINT pk_gb_perfiles_id PRIMARY KEY (id);


--
-- Name: gps_real_time pk_gps_real_time_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT pk_gps_real_time_id PRIMARY KEY (id);


--
-- Name: gps_transportista pk_gps_transportista_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_transportista
    ADD CONSTRAINT pk_gps_transportista_id PRIMARY KEY (id);


--
-- Name: gps_proveedor pk_gps_transportista_id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_proveedor
    ADD CONSTRAINT pk_gps_transportista_id_0 PRIMARY KEY (id);


--
-- Name: stats_gps_hour pk_stat_gps_hour_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hour
    ADD CONSTRAINT pk_stat_gps_hour_id PRIMARY KEY (id);


--
-- Name: stats_gps_day pk_stat_gps_hour_id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_day
    ADD CONSTRAINT pk_stat_gps_hour_id_0 PRIMARY KEY (id);


--
-- Name: stats_gps_week pk_stat_gps_hour_id_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_week
    ADD CONSTRAINT pk_stat_gps_hour_id_1 PRIMARY KEY (id);


--
-- Name: stats_trafic_proveedor_min pk_stats_trafic_proveedor_min_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_min
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id PRIMARY KEY (id);


--
-- Name: stats_trafic_proveedor_day pk_stats_trafic_proveedor_min_id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_day
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id_0 PRIMARY KEY (id);


--
-- Name: stats_trafic_proveedor_month pk_stats_trafic_proveedor_min_id_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_month
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id_1 PRIMARY KEY (id);


--
-- Name: stats_trafic_proveedor_hour pk_stats_trafic_proveedor_min_id_2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_hour
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id_2 PRIMARY KEY (id);


--
-- Name: gps_patentes pk_trn_patentes_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_patentes
    ADD CONSTRAINT pk_trn_patentes_id PRIMARY KEY (id);


--
-- Name: gps_patentes_imei pk_trn_patentes_id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_patentes_imei
    ADD CONSTRAINT pk_trn_patentes_id_0 PRIMARY KEY (id);


--
-- Name: uswea pk_uswea_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uswea
    ADD CONSTRAINT pk_uswea_id PRIMARY KEY (id);


--
-- Name: gps_patentes unq_trn_patentes_transportista-id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_patentes
    ADD CONSTRAINT "unq_trn_patentes_transportista-id" UNIQUE (transportista_id);


--
-- Name: gps_patentes_imei unq_trn_patentes_transportista-id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_patentes_imei
    ADD CONSTRAINT "unq_trn_patentes_transportista-id_0" UNIQUE (transportista_id);


--
-- Name: gps_patentes_imei fk_gps_imei_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_patentes_imei
    ADD CONSTRAINT fk_gps_imei_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- Name: gps_patentes_imei fk_gps_imei_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_patentes_imei
    ADD CONSTRAINT fk_gps_imei_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.gps_patentes(id);


--
-- Name: gps_patentes_imei fk_gps_patentes_imei_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_patentes_imei
    ADD CONSTRAINT fk_gps_patentes_imei_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- Name: gps_real_time fk_gps_real_time_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_patentes_imei(id);


--
-- Name: gps_real_time fk_gps_real_time_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- Name: gps_real_time fk_gps_real_time_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- Name: gps_real_time fk_gps_real_time_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_trn_patentes FOREIGN KEY (imei_id) REFERENCES public.gps_patentes(id);


--
-- Name: gps_transportista fk_gps_transportista_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_transportista
    ADD CONSTRAINT fk_gps_transportista_trn_patentes FOREIGN KEY (id) REFERENCES public.gps_patentes(transportista_id);


--
-- Name: stats_gps_day fk_stats_gps_day_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_day
    ADD CONSTRAINT fk_stats_gps_day_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_patentes_imei(id);


--
-- Name: stats_gps_hour fk_stats_gps_hour_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hour
    ADD CONSTRAINT fk_stats_gps_hour_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_patentes_imei(id);


--
-- Name: stats_gps_week fk_stats_gps_week_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_week
    ADD CONSTRAINT fk_stats_gps_week_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_patentes_imei(id);


--
-- Name: stats_trafic_proveedor_day fk_stats_trafic_proveedor_day_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_day
    ADD CONSTRAINT fk_stats_trafic_proveedor_day_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- Name: stats_trafic_proveedor_min fk_stats_trafic_proveedor_min_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_min
    ADD CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- Name: stats_trafic_proveedor_hour fk_stats_trafic_proveedor_min_gps_proveedor_0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_hour
    ADD CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor_0 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- Name: stats_trafic_proveedor_month fk_stats_trafic_proveedor_month_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_month
    ADD CONSTRAINT fk_stats_trafic_proveedor_month_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- Name: uswea fk_uswea_gb_perfiles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.uswea
    ADD CONSTRAINT fk_uswea_gb_perfiles FOREIGN KEY (perfil_id) REFERENCES public.gb_perfiles(id);


--
-- PostgreSQL database dump complete
--

