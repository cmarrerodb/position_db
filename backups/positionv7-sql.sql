--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-09 15:22:30

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1030 (class 1247 OID 53479)
-- Name: ghstore; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.ghstore;


ALTER TYPE public.ghstore OWNER TO postgres;

--
-- TOC entry 1031 (class 1247 OID 53486)
-- Name: hstore; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.hstore;


ALTER TYPE public.hstore OWNER TO postgres;

--
-- TOC entry 296 (class 1255 OID 53477)
-- Name: ghstore_compress(internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_compress(internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_compress';


ALTER FUNCTION public.ghstore_compress(internal) OWNER TO postgres;

--
-- TOC entry 297 (class 1255 OID 53478)
-- Name: ghstore_decompress(internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_decompress(internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_decompress';


ALTER FUNCTION public.ghstore_decompress(internal) OWNER TO postgres;

--
-- TOC entry 298 (class 1255 OID 53480)
-- Name: ghstore_in(cstring); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_in(cstring) RETURNS public.ghstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_in';


ALTER FUNCTION public.ghstore_in(cstring) OWNER TO postgres;

--
-- TOC entry 299 (class 1255 OID 53481)
-- Name: ghstore_out(public.ghstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_out(public.ghstore) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_out';


ALTER FUNCTION public.ghstore_out(public.ghstore) OWNER TO postgres;

--
-- TOC entry 300 (class 1255 OID 53482)
-- Name: ghstore_penalty(internal, internal, internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_penalty(internal, internal, internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_penalty';


ALTER FUNCTION public.ghstore_penalty(internal, internal, internal) OWNER TO postgres;

--
-- TOC entry 301 (class 1255 OID 53483)
-- Name: ghstore_picksplit(internal, internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_picksplit(internal, internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_picksplit';


ALTER FUNCTION public.ghstore_picksplit(internal, internal) OWNER TO postgres;

--
-- TOC entry 302 (class 1255 OID 53484)
-- Name: ghstore_same(public.ghstore, public.ghstore, internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_same(public.ghstore, public.ghstore, internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_same';


ALTER FUNCTION public.ghstore_same(public.ghstore, public.ghstore, internal) OWNER TO postgres;

--
-- TOC entry 303 (class 1255 OID 53485)
-- Name: ghstore_union(internal, internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_union(internal, internal) RETURNS public.ghstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_union';


ALTER FUNCTION public.ghstore_union(internal, internal) OWNER TO postgres;

--
-- TOC entry 305 (class 1255 OID 53488)
-- Name: hstore(text[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore(text[]) RETURNS public.hstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_array';


ALTER FUNCTION public.hstore(text[]) OWNER TO postgres;

--
-- TOC entry 304 (class 1255 OID 53487)
-- Name: hstore(record); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore(record) RETURNS public.hstore
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_record';


ALTER FUNCTION public.hstore(record) OWNER TO postgres;

--
-- TOC entry 306 (class 1255 OID 53489)
-- Name: hstore(text[], text[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore(text[], text[]) RETURNS public.hstore
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_arrays';


ALTER FUNCTION public.hstore(text[], text[]) OWNER TO postgres;

--
-- TOC entry 307 (class 1255 OID 53490)
-- Name: hstore(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore(text, text) RETURNS public.hstore
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_text';


ALTER FUNCTION public.hstore(text, text) OWNER TO postgres;

--
-- TOC entry 308 (class 1255 OID 53491)
-- Name: hstore_cmp(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_cmp(public.hstore, public.hstore) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_cmp';


ALTER FUNCTION public.hstore_cmp(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 309 (class 1255 OID 53492)
-- Name: hstore_eq(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_eq(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_eq';


ALTER FUNCTION public.hstore_eq(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 310 (class 1255 OID 53493)
-- Name: hstore_ge(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_ge(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_ge';


ALTER FUNCTION public.hstore_ge(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 311 (class 1255 OID 53494)
-- Name: hstore_gt(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_gt(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_gt';


ALTER FUNCTION public.hstore_gt(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 312 (class 1255 OID 53495)
-- Name: hstore_hash(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_hash(public.hstore) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_hash';


ALTER FUNCTION public.hstore_hash(public.hstore) OWNER TO postgres;

--
-- TOC entry 313 (class 1255 OID 53496)
-- Name: hstore_hash_extended(public.hstore, bigint); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_hash_extended(public.hstore, bigint) RETURNS bigint
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_hash_extended';


ALTER FUNCTION public.hstore_hash_extended(public.hstore, bigint) OWNER TO postgres;

--
-- TOC entry 314 (class 1255 OID 53497)
-- Name: hstore_in(cstring); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_in(cstring) RETURNS public.hstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_in';


ALTER FUNCTION public.hstore_in(cstring) OWNER TO postgres;

--
-- TOC entry 315 (class 1255 OID 53498)
-- Name: hstore_le(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_le(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_le';


ALTER FUNCTION public.hstore_le(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 316 (class 1255 OID 53499)
-- Name: hstore_lt(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_lt(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_lt';


ALTER FUNCTION public.hstore_lt(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 317 (class 1255 OID 53500)
-- Name: hstore_ne(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_ne(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_ne';


ALTER FUNCTION public.hstore_ne(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 318 (class 1255 OID 53501)
-- Name: hstore_out(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_out(public.hstore) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_out';


ALTER FUNCTION public.hstore_out(public.hstore) OWNER TO postgres;

--
-- TOC entry 319 (class 1255 OID 53502)
-- Name: hstore_recv(internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_recv(internal) RETURNS public.hstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_recv';


ALTER FUNCTION public.hstore_recv(internal) OWNER TO postgres;

--
-- TOC entry 320 (class 1255 OID 53503)
-- Name: hstore_send(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_send(public.hstore) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_send';


ALTER FUNCTION public.hstore_send(public.hstore) OWNER TO postgres;

--
-- TOC entry 321 (class 1255 OID 53504)
-- Name: hstore_to_array(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_to_array(public.hstore) RETURNS text[]
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_array';


ALTER FUNCTION public.hstore_to_array(public.hstore) OWNER TO postgres;

--
-- TOC entry 322 (class 1255 OID 53505)
-- Name: hstore_to_json(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_to_json(public.hstore) RETURNS json
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_json';


ALTER FUNCTION public.hstore_to_json(public.hstore) OWNER TO postgres;

--
-- TOC entry 323 (class 1255 OID 53506)
-- Name: hstore_to_json_loose(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_to_json_loose(public.hstore) RETURNS json
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_json_loose';


ALTER FUNCTION public.hstore_to_json_loose(public.hstore) OWNER TO postgres;

--
-- TOC entry 324 (class 1255 OID 53507)
-- Name: hstore_to_jsonb(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_to_jsonb(public.hstore) RETURNS jsonb
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_jsonb';


ALTER FUNCTION public.hstore_to_jsonb(public.hstore) OWNER TO postgres;

--
-- TOC entry 325 (class 1255 OID 53508)
-- Name: hstore_to_jsonb_loose(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_to_jsonb_loose(public.hstore) RETURNS jsonb
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_jsonb_loose';


ALTER FUNCTION public.hstore_to_jsonb_loose(public.hstore) OWNER TO postgres;

--
-- TOC entry 326 (class 1255 OID 53509)
-- Name: hstore_to_matrix(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_to_matrix(public.hstore) RETURNS text[]
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_matrix';


ALTER FUNCTION public.hstore_to_matrix(public.hstore) OWNER TO postgres;

--
-- TOC entry 327 (class 1255 OID 53510)
-- Name: hstore_version_diag(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_version_diag(public.hstore) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_version_diag';


ALTER FUNCTION public.hstore_version_diag(public.hstore) OWNER TO postgres;

--
-- TOC entry 328 (class 1255 OID 53511)
-- Name: isdefined(public.hstore, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.isdefined(public.hstore, text) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_defined';


ALTER FUNCTION public.isdefined(public.hstore, text) OWNER TO postgres;

--
-- TOC entry 329 (class 1255 OID 53512)
-- Name: isexists(public.hstore, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.isexists(public.hstore, text) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_exists';


ALTER FUNCTION public.isexists(public.hstore, text) OWNER TO postgres;

--
-- TOC entry 330 (class 1255 OID 53513)
-- Name: populate_record(anyelement, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.populate_record(anyelement, public.hstore) RETURNS anyelement
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_populate_record';


ALTER FUNCTION public.populate_record(anyelement, public.hstore) OWNER TO postgres;

--
-- TOC entry 331 (class 1255 OID 53514)
-- Name: skeys(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.skeys(public.hstore) RETURNS SETOF text
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_skeys';


ALTER FUNCTION public.skeys(public.hstore) OWNER TO postgres;

--
-- TOC entry 332 (class 1255 OID 53515)
-- Name: slice(public.hstore, text[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.slice(public.hstore, text[]) RETURNS public.hstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_slice_to_hstore';


ALTER FUNCTION public.slice(public.hstore, text[]) OWNER TO postgres;

--
-- TOC entry 333 (class 1255 OID 53516)
-- Name: slice_array(public.hstore, text[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.slice_array(public.hstore, text[]) RETURNS text[]
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_slice_to_array';


ALTER FUNCTION public.slice_array(public.hstore, text[]) OWNER TO postgres;

--
-- TOC entry 334 (class 1255 OID 53517)
-- Name: svals(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.svals(public.hstore) RETURNS SETOF text
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_svals';


ALTER FUNCTION public.svals(public.hstore) OWNER TO postgres;

--
-- TOC entry 335 (class 1255 OID 53518)
-- Name: tconvert(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.tconvert(text, text) RETURNS public.hstore
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_text';


ALTER FUNCTION public.tconvert(text, text) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 247 (class 1259 OID 53225)
-- Name: cnf_colores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cnf_colores (
    id integer NOT NULL,
    inicio smallint NOT NULL,
    final smallint NOT NULL,
    color character(7) NOT NULL,
    descripcion character varying(35) NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    unidad integer NOT NULL
);


ALTER TABLE public.cnf_colores OWNER TO postgres;

--
-- TOC entry 3794 (class 0 OID 0)
-- Dependencies: 247
-- Name: TABLE cnf_colores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.cnf_colores IS 'ConfiguraciÂ´Ã³n de rango de colores de las patentes desarodenadas';


--
-- TOC entry 3795 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN cnf_colores.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.id IS 'Id unico del registro';


--
-- TOC entry 3796 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN cnf_colores.inicio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.inicio IS 'Valor inicial del rango';


--
-- TOC entry 3797 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN cnf_colores.final; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.final IS 'Valor final del rango';


--
-- TOC entry 3798 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN cnf_colores.color; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.color IS 'Color a aplicar al rango, en hexadecimal';


--
-- TOC entry 3799 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN cnf_colores.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.descripcion IS 'Descripcion de donde aplica el rango';


--
-- TOC entry 3800 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN cnf_colores.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- TOC entry 3801 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN cnf_colores.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 3802 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN cnf_colores.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.updated_at IS 'Timestamp de moficiacion del registro';


--
-- TOC entry 3803 (class 0 OID 0)
-- Dependencies: 247
-- Name: COLUMN cnf_colores.unidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.unidad IS 'Unidad del rango: 1 porcewntaje, 2 cantidad';


--
-- TOC entry 246 (class 1259 OID 53224)
-- Name: cnf_colores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cnf_colores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cnf_colores_id_seq OWNER TO postgres;

--
-- TOC entry 3804 (class 0 OID 0)
-- Dependencies: 246
-- Name: cnf_colores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cnf_colores_id_seq OWNED BY public.cnf_colores.id;


--
-- TOC entry 289 (class 1259 OID 53424)
-- Name: desordenadas_dia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.desordenadas_dia (
    id bigint NOT NULL,
    transportista_id integer,
    proveedor_id integer,
    patente_id integer,
    imei_id integer,
    fecha date NOT NULL,
    dia smallint NOT NULL,
    cant integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.desordenadas_dia OWNER TO postgres;

--
-- TOC entry 3805 (class 0 OID 0)
-- Dependencies: 289
-- Name: TABLE desordenadas_dia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.desordenadas_dia IS 'Tabla de cadenas desordenadas recibidas por dia';


--
-- TOC entry 3806 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN desordenadas_dia.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.id IS 'ID unico del registro';


--
-- TOC entry 3807 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN desordenadas_dia.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.transportista_id IS 'ID del transportista';


--
-- TOC entry 3808 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN desordenadas_dia.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.proveedor_id IS 'ID del proveedor de servicio GPS';


--
-- TOC entry 3809 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN desordenadas_dia.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.patente_id IS 'ID de la patente';


--
-- TOC entry 3810 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN desordenadas_dia.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.imei_id IS 'Id del IMEI';


--
-- TOC entry 3811 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN desordenadas_dia.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.fecha IS 'Fecha de receepciÃ³n de la cadena';


--
-- TOC entry 3812 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN desordenadas_dia.dia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.dia IS 'Hora del marco del tiempo a evaluar (0-31)';


--
-- TOC entry 3813 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN desordenadas_dia.cant; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';


--
-- TOC entry 3814 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN desordenadas_dia.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 3815 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN desordenadas_dia.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.updated_at IS 'Timestamp de modificaciÃ³n del registro';


--
-- TOC entry 3816 (class 0 OID 0)
-- Dependencies: 289
-- Name: COLUMN desordenadas_dia.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 288 (class 1259 OID 53423)
-- Name: desordenadas_dia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.desordenadas_dia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.desordenadas_dia_id_seq OWNER TO postgres;

--
-- TOC entry 3817 (class 0 OID 0)
-- Dependencies: 288
-- Name: desordenadas_dia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.desordenadas_dia_id_seq OWNED BY public.desordenadas_dia.id;


--
-- TOC entry 291 (class 1259 OID 53437)
-- Name: desordenadas_hora; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.desordenadas_hora (
    id bigint NOT NULL,
    transportista_id integer,
    proveedor_id integer,
    patente_id integer,
    imei_id integer,
    fecha date NOT NULL,
    hora smallint NOT NULL,
    cant integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.desordenadas_hora OWNER TO postgres;

--
-- TOC entry 3818 (class 0 OID 0)
-- Dependencies: 291
-- Name: TABLE desordenadas_hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.desordenadas_hora IS 'Tabla de cadenas desordenadas recibidas por hora';


--
-- TOC entry 3819 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN desordenadas_hora.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.id IS 'ID unico del registro';


--
-- TOC entry 3820 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN desordenadas_hora.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.transportista_id IS 'ID del transportista';


--
-- TOC entry 3821 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN desordenadas_hora.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.proveedor_id IS 'ID del proveedor de servicio GPS';


--
-- TOC entry 3822 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN desordenadas_hora.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.patente_id IS 'ID de la patente';


--
-- TOC entry 3823 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN desordenadas_hora.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.imei_id IS 'Id del IMEI';


--
-- TOC entry 3824 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN desordenadas_hora.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.fecha IS 'Fecha de receepciÃ³n de la cadena';


--
-- TOC entry 3825 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN desordenadas_hora.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.hora IS 'Hora del marco del tiempo a evaluar (0-24)';


--
-- TOC entry 3826 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN desordenadas_hora.cant; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';


--
-- TOC entry 3827 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN desordenadas_hora.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 3828 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN desordenadas_hora.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.updated_at IS 'Timestamp de modificaciÃ³n del registro';


--
-- TOC entry 3829 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN desordenadas_hora.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 290 (class 1259 OID 53436)
-- Name: desordenadas_hora_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.desordenadas_hora_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.desordenadas_hora_id_seq OWNER TO postgres;

--
-- TOC entry 3830 (class 0 OID 0)
-- Dependencies: 290
-- Name: desordenadas_hora_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.desordenadas_hora_id_seq OWNED BY public.desordenadas_hora.id;


--
-- TOC entry 293 (class 1259 OID 53452)
-- Name: desordenadas_mes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.desordenadas_mes (
    id bigint NOT NULL,
    transportista_id integer,
    proveedor_id integer,
    patente_id integer,
    imei_id integer,
    fecha date NOT NULL,
    mes smallint NOT NULL,
    cant integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.desordenadas_mes OWNER TO postgres;

--
-- TOC entry 3831 (class 0 OID 0)
-- Dependencies: 293
-- Name: TABLE desordenadas_mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.desordenadas_mes IS 'Tabla de cadenas desordenadas recibidas por mes';


--
-- TOC entry 3832 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN desordenadas_mes.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.id IS 'ID unico del registro';


--
-- TOC entry 3833 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN desordenadas_mes.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.transportista_id IS 'ID del transportista';


--
-- TOC entry 3834 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN desordenadas_mes.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.proveedor_id IS 'ID del proveedor de servicio GPS';


--
-- TOC entry 3835 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN desordenadas_mes.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.patente_id IS 'ID de la patente';


--
-- TOC entry 3836 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN desordenadas_mes.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.imei_id IS 'Id del IMEI';


--
-- TOC entry 3837 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN desordenadas_mes.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.fecha IS 'Fecha de receepciÃ³n de la cadena';


--
-- TOC entry 3838 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN desordenadas_mes.mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.mes IS 'Mes del marco del tiempo a evaluar (0-12)';


--
-- TOC entry 3839 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN desordenadas_mes.cant; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';


--
-- TOC entry 3840 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN desordenadas_mes.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 3841 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN desordenadas_mes.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.updated_at IS 'Timestamp de modificaciÃ³n del registro';


--
-- TOC entry 3842 (class 0 OID 0)
-- Dependencies: 293
-- Name: COLUMN desordenadas_mes.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 292 (class 1259 OID 53451)
-- Name: desordenadas_mes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.desordenadas_mes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.desordenadas_mes_id_seq OWNER TO postgres;

--
-- TOC entry 3843 (class 0 OID 0)
-- Dependencies: 292
-- Name: desordenadas_mes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.desordenadas_mes_id_seq OWNED BY public.desordenadas_mes.id;


--
-- TOC entry 295 (class 1259 OID 53465)
-- Name: desordenadas_semana; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.desordenadas_semana (
    id bigint NOT NULL,
    transportista_id integer,
    proveedor_id integer,
    patente_id integer,
    imei_id integer,
    fecha date NOT NULL,
    semana smallint NOT NULL,
    cant integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.desordenadas_semana OWNER TO postgres;

--
-- TOC entry 3844 (class 0 OID 0)
-- Dependencies: 295
-- Name: TABLE desordenadas_semana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.desordenadas_semana IS 'Tabla de cadenas desordenadas recibidas por semana';


--
-- TOC entry 3845 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN desordenadas_semana.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.id IS 'ID unico del registro';


--
-- TOC entry 3846 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN desordenadas_semana.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.transportista_id IS 'ID del transportista';


--
-- TOC entry 3847 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN desordenadas_semana.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.proveedor_id IS 'ID del proveedor de servicio GPS';


--
-- TOC entry 3848 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN desordenadas_semana.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.patente_id IS 'ID de la patente';


--
-- TOC entry 3849 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN desordenadas_semana.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.imei_id IS 'Id del IMEI';


--
-- TOC entry 3850 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN desordenadas_semana.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.fecha IS 'Fecha de receepciÃ³n de la cadena';


--
-- TOC entry 3851 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN desordenadas_semana.semana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.semana IS 'Semana del marco del tiempo a evaluar (0-52)';


--
-- TOC entry 3852 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN desordenadas_semana.cant; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';


--
-- TOC entry 3853 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN desordenadas_semana.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 3854 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN desordenadas_semana.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.updated_at IS 'Timestamp de modificaciÃ³n del registro';


--
-- TOC entry 3855 (class 0 OID 0)
-- Dependencies: 295
-- Name: COLUMN desordenadas_semana.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 294 (class 1259 OID 53464)
-- Name: desordenadas_semana_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.desordenadas_semana_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.desordenadas_semana_id_seq OWNER TO postgres;

--
-- TOC entry 3856 (class 0 OID 0)
-- Dependencies: 294
-- Name: desordenadas_semana_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.desordenadas_semana_id_seq OWNED BY public.desordenadas_semana.id;


--
-- TOC entry 249 (class 1259 OID 53233)
-- Name: gb_perfiles; Type: TABLE; Schema: public; Owner: postgres
--

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
-- TOC entry 3857 (class 0 OID 0)
-- Dependencies: 249
-- Name: TABLE gb_perfiles; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gb_perfiles IS 'Perrfiles dfe usuario';


--
-- TOC entry 3858 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN gb_perfiles.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.id IS 'ID unico del registro';


--
-- TOC entry 3859 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN gb_perfiles.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.nombre IS 'Nombre del perfil del usuario';


--
-- TOC entry 3860 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN gb_perfiles.permisos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.permisos IS 'Permisos del usuario';


--
-- TOC entry 3861 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN gb_perfiles.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 3862 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN gb_perfiles.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.updated_at IS 'Timestamp de modificacion del registro';


--
-- TOC entry 3863 (class 0 OID 0)
-- Dependencies: 249
-- Name: COLUMN gb_perfiles.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- TOC entry 214 (class 1259 OID 53192)
-- Name: gb_perfiles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gb_perfiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gb_perfiles_id_seq OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 53193)
-- Name: gb_perfiles_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gb_perfiles_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gb_perfiles_id_seq1 OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 53232)
-- Name: gb_perfiles_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gb_perfiles_id_seq2
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gb_perfiles_id_seq2 OWNER TO postgres;

--
-- TOC entry 3864 (class 0 OID 0)
-- Dependencies: 248
-- Name: gb_perfiles_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gb_perfiles_id_seq2 OWNED BY public.gb_perfiles.id;


--
-- TOC entry 277 (class 1259 OID 53360)
-- Name: gps_imei; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gps_imei (
    id bigint NOT NULL,
    transportista_id integer NOT NULL,
    proveedor_id bigint,
    patente_id bigint,
    imei character varying(15) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.gps_imei OWNER TO postgres;

--
-- TOC entry 3865 (class 0 OID 0)
-- Dependencies: 277
-- Name: TABLE gps_imei; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gps_imei IS 'Tabla de de IMEI vinculada a la patente y al transportista';


--
-- TOC entry 3866 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN gps_imei.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.id IS 'ID unico del registro';


--
-- TOC entry 3867 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN gps_imei.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.transportista_id IS 'ID del transportista al cualk pertenece la patente';


--
-- TOC entry 3868 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN gps_imei.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.proveedor_id IS 'ID del proveefor de servicio GPS coion el cual se relaciona el IMEI';


--
-- TOC entry 3869 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN gps_imei.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.patente_id IS 'ID de la patente con la cual se relaciona el IMWI';


--
-- TOC entry 3870 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN gps_imei.imei; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.imei IS 'CÂ´Ã³digo IMEI del equipo';


--
-- TOC entry 3871 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN gps_imei.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 3872 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN gps_imei.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.updated_at IS 'Timestamp de modificacion del registro';


--
-- TOC entry 3873 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN gps_imei.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- TOC entry 216 (class 1259 OID 53194)
-- Name: gps_imei_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_imei_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_imei_id_seq OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 53195)
-- Name: gps_imei_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_imei_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_imei_id_seq1 OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 53358)
-- Name: gps_imei_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_imei_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_imei_id_seq2 OWNER TO postgres;

--
-- TOC entry 3874 (class 0 OID 0)
-- Dependencies: 275
-- Name: gps_imei_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gps_imei_id_seq2 OWNED BY public.gps_imei.id;


--
-- TOC entry 218 (class 1259 OID 53196)
-- Name: gps_imei_transportista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_imei_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_imei_transportista_id_seq OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 53197)
-- Name: gps_imei_transportista_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_imei_transportista_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_imei_transportista_id_seq1 OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 53359)
-- Name: gps_imei_transportista_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_imei_transportista_id_seq2
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_imei_transportista_id_seq2 OWNER TO postgres;

--
-- TOC entry 3875 (class 0 OID 0)
-- Dependencies: 276
-- Name: gps_imei_transportista_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gps_imei_transportista_id_seq2 OWNED BY public.gps_imei.transportista_id;


--
-- TOC entry 251 (class 1259 OID 53243)
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
-- TOC entry 3876 (class 0 OID 0)
-- Dependencies: 251
-- Name: TABLE gps_proveedor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gps_proveedor IS 'Tabla del del provedor del dervicio GPS';


--
-- TOC entry 3877 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN gps_proveedor.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.id IS 'IdentificaciuÂ´Ã³n Â´Ãºnico del registro';


--
-- TOC entry 3878 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN gps_proveedor.razon_social; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.razon_social IS 'Razon sociual del proveedor del servicio GPS';


--
-- TOC entry 3879 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN gps_proveedor.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.email IS 'Email del contacto del proveedor del sdervicio GPS';


--
-- TOC entry 3880 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN gps_proveedor.total; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.total IS 'Cantidad total de vehiculos que maneja el proveedor del servicio GPS';


--
-- TOC entry 3881 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN gps_proveedor.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.created_at IS 'Timestamp de creaciÂ´Ã³n del registro';


--
-- TOC entry 3882 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN gps_proveedor.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.updated_at IS 'Timestamp de actiaÃ±izacionÂ´Ã³n del registro';


--
-- TOC entry 3883 (class 0 OID 0)
-- Dependencies: 251
-- Name: COLUMN gps_proveedor.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.deleted_at IS 'Timestamp de borrado logicoÂ´Ã³n del registro';


--
-- TOC entry 220 (class 1259 OID 53198)
-- Name: gps_proveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_proveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_proveedor_id_seq OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 53199)
-- Name: gps_proveedor_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_proveedor_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_proveedor_id_seq1 OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 53242)
-- Name: gps_proveedor_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_proveedor_id_seq2
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_proveedor_id_seq2 OWNER TO postgres;

--
-- TOC entry 3884 (class 0 OID 0)
-- Dependencies: 250
-- Name: gps_proveedor_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gps_proveedor_id_seq2 OWNED BY public.gps_proveedor.id;


--
-- TOC entry 279 (class 1259 OID 53374)
-- Name: gps_real_time; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gps_real_time (
    id bigint NOT NULL,
    rejected boolean DEFAULT false,
    imei_id bigint,
    transportista_id bigint,
    proveedor_id bigint,
    patente_id bigint,
    timestamp_gps timestamp without time zone,
    timestamp_sys timestamp without time zone,
    frecuencia time without time zone,
    latencia integer NOT NULL,
    ordenada smallint DEFAULT 1 NOT NULL,
    motor smallint DEFAULT 1 NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone,
    raw_data text NOT NULL
);


ALTER TABLE public.gps_real_time OWNER TO postgres;

--
-- TOC entry 3885 (class 0 OID 0)
-- Dependencies: 279
-- Name: TABLE gps_real_time; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gps_real_time IS 'Tabla de almacenamiento de toda la data entrante';


--
-- TOC entry 3886 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.id IS 'IdentificaciÃ³n Ãºnica del registro';


--
-- TOC entry 3887 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.rejected; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.rejected IS 'Cadena rechazada proveniente del gps';


--
-- TOC entry 3888 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.imei_id IS 'ID del  IMEI';


--
-- TOC entry 3889 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.proveedor_id IS 'ID del proveefor del dercivio de GPS';


--
-- TOC entry 3890 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.patente_id IS 'ID de la patente';


--
-- TOC entry 3891 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.timestamp_gps; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.timestamp_gps IS 'Timestamp en la cual se generÃ³ la seÃ±al en el GPS';


--
-- TOC entry 3892 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.timestamp_sys; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.timestamp_sys IS 'Timestamp de la recepciÃ³n de la data del GPS';


--
-- TOC entry 3893 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.frecuencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.frecuencia IS 'Diferencia de tiempo entre el registro actual y el anterior';


--
-- TOC entry 3894 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.latencia IS 'Latencia dek GPS';


--
-- TOC entry 3895 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.ordenada; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.ordenada IS 'Indica si la fecha de recpciÃ³n del datos es posterior al dato anterior, en cuyo caso su valor es 1; si la fecha de recepciÃ³n es naterior al registro previo, su valor es 0';


--
-- TOC entry 3896 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.motor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.motor IS 'Indica si el dato fue enciado con el motor encendido o no; en caso de ser asi, su valor es 1, encaso contrario 0';


--
-- TOC entry 3897 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.created_at IS 'Timestamp de creaciÃ³n del registro';


--
-- TOC entry 3898 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.updated_at IS 'Timestamp de modificaciÃ³n del registro';


--
-- TOC entry 3899 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.deleted_at IS 'Timestamp de borrado lÃ³gico del registro';


--
-- TOC entry 3900 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN gps_real_time.raw_data; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.raw_data IS 'Data en bruto proveniente del GPS';


--
-- TOC entry 222 (class 1259 OID 53200)
-- Name: gps_real_time_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_real_time_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_real_time_id_seq OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 53201)
-- Name: gps_real_time_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_real_time_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_real_time_id_seq1 OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 53373)
-- Name: gps_real_time_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_real_time_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_real_time_id_seq2 OWNER TO postgres;

--
-- TOC entry 3901 (class 0 OID 0)
-- Dependencies: 278
-- Name: gps_real_time_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gps_real_time_id_seq2 OWNED BY public.gps_real_time.id;


--
-- TOC entry 266 (class 1259 OID 53315)
-- Name: gps_transportista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gps_transportista (
    id integer NOT NULL,
    razon_social character(50) NOT NULL,
    codigo character(50) NOT NULL,
    email character(50) NOT NULL,
    total integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.gps_transportista OWNER TO postgres;

--
-- TOC entry 3902 (class 0 OID 0)
-- Dependencies: 266
-- Name: TABLE gps_transportista; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gps_transportista IS 'Tabla del del transportista';


--
-- TOC entry 3903 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN gps_transportista.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.id IS 'IdentificaciuÂ´Ã³n Â´Ãºnico del registro';


--
-- TOC entry 3904 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN gps_transportista.razon_social; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.razon_social IS 'Razon sociual del proveedor del servicio GPS';


--
-- TOC entry 3905 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN gps_transportista.codigo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.codigo IS 'Dodigo del transportista';


--
-- TOC entry 3906 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN gps_transportista.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.email IS 'Email del contacto del proveedor del sdervicio GPS';


--
-- TOC entry 3907 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN gps_transportista.total; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.total IS 'Cantidad total de vehiculos que maneja el proveedor del servicio GPS';


--
-- TOC entry 3908 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN gps_transportista.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.created_at IS 'Timestamp de creaciÂ´Ã³n del registro';


--
-- TOC entry 3909 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN gps_transportista.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.updated_at IS 'Timestamp de actiaÃ±izacionÂ´Ã³n del registro';


--
-- TOC entry 3910 (class 0 OID 0)
-- Dependencies: 266
-- Name: COLUMN gps_transportista.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_transportista.deleted_at IS 'Timestamp de borrado logicoÂ´Ã³n del registro';


--
-- TOC entry 224 (class 1259 OID 53202)
-- Name: gps_transportista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_transportista_id_seq OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 53203)
-- Name: gps_transportista_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_transportista_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_transportista_id_seq1 OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 53314)
-- Name: gps_transportista_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_transportista_id_seq2
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gps_transportista_id_seq2 OWNER TO postgres;

--
-- TOC entry 3911 (class 0 OID 0)
-- Dependencies: 265
-- Name: gps_transportista_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gps_transportista_id_seq2 OWNED BY public.gps_transportista.id;


--
-- TOC entry 226 (class 1259 OID 53204)
-- Name: stats_gps_day_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_day_id_seq OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 53205)
-- Name: stats_gps_day_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_day_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_day_id_seq1 OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 53388)
-- Name: stats_gps_dia_patente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_dia_patente (
    id bigint NOT NULL,
    transportista_id integer,
    proveedor_id bigint,
    patente_id integer,
    imei_id integer,
    fecha date NOT NULL,
    dia smallint NOT NULL,
    frecuencia_motor_on time without time zone NOT NULL,
    frecuencia_motor_off time without time zone NOT NULL,
    latencia integer NOT NULL,
    total_cadenas integer NOT NULL,
    total_cadenas_problemas integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.stats_gps_dia_patente OWNER TO postgres;

--
-- TOC entry 3912 (class 0 OID 0)
-- Dependencies: 281
-- Name: TABLE stats_gps_dia_patente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_dia_patente IS 'Almacena las estadÃ­sticas por dia de la data por patente';


--
-- TOC entry 3913 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.id IS 'Identificacion unica del registro';


--
-- TOC entry 3914 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.transportista_id IS 'ID del transportista';


--
-- TOC entry 3915 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';


--
-- TOC entry 3916 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.patente_id IS 'ID de la patente';


--
-- TOC entry 3917 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.imei_id IS 'ID del IMEI del equipo';


--
-- TOC entry 3918 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.fecha IS 'Fecha de la hora';


--
-- TOC entry 3919 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.dia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.dia IS 'Hora del dÃ­a en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';


--
-- TOC entry 3920 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';


--
-- TOC entry 3921 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';


--
-- TOC entry 3922 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 3923 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.total_cadenas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.total_cadenas IS 'Total de cadenas para una patente por dia';


--
-- TOC entry 3924 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.total_cadenas_problemas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.total_cadenas_problemas IS 'Total de cadenas para una patente con problemas por dia';


--
-- TOC entry 3925 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';


--
-- TOC entry 3926 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';


--
-- TOC entry 3927 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 3928 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 3929 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';


--
-- TOC entry 3930 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_dia_patente.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';


--
-- TOC entry 280 (class 1259 OID 53387)
-- Name: stats_gps_dia_patente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_dia_patente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_dia_patente_id_seq OWNER TO postgres;

--
-- TOC entry 3931 (class 0 OID 0)
-- Dependencies: 280
-- Name: stats_gps_dia_patente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_dia_patente_id_seq OWNED BY public.stats_gps_dia_patente.id;


--
-- TOC entry 268 (class 1259 OID 53323)
-- Name: stats_gps_dia_transportista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_dia_transportista (
    id bigint NOT NULL,
    transportista_id bigint,
    proveedor_id integer,
    fecha date NOT NULL,
    dia smallint NOT NULL,
    frecuencia_motor_on time without time zone NOT NULL,
    frecuencia_motor_off time without time zone NOT NULL,
    latencia integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.stats_gps_dia_transportista OWNER TO postgres;

--
-- TOC entry 3932 (class 0 OID 0)
-- Dependencies: 268
-- Name: TABLE stats_gps_dia_transportista; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_dia_transportista IS 'Almacena las estadÃ­sticas por hora de la data enviada por transportista';


--
-- TOC entry 3933 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.id IS 'Identificacion unica del registro';


--
-- TOC entry 3934 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.proveedor_id IS 'ID del proveedor del servicio GPS';


--
-- TOC entry 3935 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.fecha IS 'Fecha de la hora';


--
-- TOC entry 3936 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.dia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.dia IS 'Dia del mes en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';


--
-- TOC entry 3937 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';


--
-- TOC entry 3938 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';


--
-- TOC entry 3939 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 3940 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';


--
-- TOC entry 3941 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';


--
-- TOC entry 3942 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 3943 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 3944 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';


--
-- TOC entry 3945 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN stats_gps_dia_transportista.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';


--
-- TOC entry 267 (class 1259 OID 53322)
-- Name: stats_gps_dia_transportista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_dia_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_dia_transportista_id_seq OWNER TO postgres;

--
-- TOC entry 3946 (class 0 OID 0)
-- Dependencies: 267
-- Name: stats_gps_dia_transportista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_dia_transportista_id_seq OWNED BY public.stats_gps_dia_transportista.id;


--
-- TOC entry 283 (class 1259 OID 53397)
-- Name: stats_gps_hora_patente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_hora_patente (
    id bigint NOT NULL,
    transportista_id integer,
    proveedor_id bigint,
    patente_id integer,
    imei_id integer,
    fecha date NOT NULL,
    hora smallint NOT NULL,
    frecuencia_motor_on time without time zone NOT NULL,
    frecuencia_motor_off time without time zone NOT NULL,
    latencia integer NOT NULL,
    total_cadenas integer NOT NULL,
    total_cadenas_problemas integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.stats_gps_hora_patente OWNER TO postgres;

--
-- TOC entry 3947 (class 0 OID 0)
-- Dependencies: 283
-- Name: TABLE stats_gps_hora_patente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_hora_patente IS 'Almacena las estadÃ­sticas por hora de la data enviada por patente';


--
-- TOC entry 3948 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.id IS 'Identificacion unica del registro';


--
-- TOC entry 3949 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.transportista_id IS 'ID del transportista';


--
-- TOC entry 3950 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';


--
-- TOC entry 3951 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.patente_id IS 'ID de la patente';


--
-- TOC entry 3952 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.imei_id IS 'ID del imei del equipo';


--
-- TOC entry 3953 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.fecha IS 'Fecha de la hora';


--
-- TOC entry 3954 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.hora IS 'Hora del dÃ­a en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';


--
-- TOC entry 3955 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';


--
-- TOC entry 3956 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';


--
-- TOC entry 3957 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 3958 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.total_cadenas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.total_cadenas IS 'Total de cadenas para una patente por hora';


--
-- TOC entry 3959 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.total_cadenas_problemas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.total_cadenas_problemas IS 'Total de cadenas con problemas por hora';


--
-- TOC entry 3960 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';


--
-- TOC entry 3961 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';


--
-- TOC entry 3962 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 3963 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 3964 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';


--
-- TOC entry 3965 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_gps_hora_patente.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';


--
-- TOC entry 282 (class 1259 OID 53396)
-- Name: stats_gps_hora_patente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_hora_patente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_hora_patente_id_seq OWNER TO postgres;

--
-- TOC entry 3966 (class 0 OID 0)
-- Dependencies: 282
-- Name: stats_gps_hora_patente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_hora_patente_id_seq OWNED BY public.stats_gps_hora_patente.id;


--
-- TOC entry 270 (class 1259 OID 53332)
-- Name: stats_gps_hora_transportista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_hora_transportista (
    id bigint NOT NULL,
    transportista_id bigint,
    proveedor_id integer,
    fecha date NOT NULL,
    hora smallint NOT NULL,
    frecuencia_motor_on time without time zone NOT NULL,
    frecuencia_motor_off time without time zone NOT NULL,
    latencia integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.stats_gps_hora_transportista OWNER TO postgres;

--
-- TOC entry 3967 (class 0 OID 0)
-- Dependencies: 270
-- Name: TABLE stats_gps_hora_transportista; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_hora_transportista IS 'Almacena las estadÃ­sticas por hora de la data enviada por lo sGPS transportista';


--
-- TOC entry 3968 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.id IS 'Identificacion unica del registro';


--
-- TOC entry 3969 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.proveedor_id IS 'ID del proveedor de servicios GPS';


--
-- TOC entry 3970 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.fecha IS 'Fecha de la hora';


--
-- TOC entry 3971 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.hora IS 'Hora del dÃ­a en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';


--
-- TOC entry 3972 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';


--
-- TOC entry 3973 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';


--
-- TOC entry 3974 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 3975 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';


--
-- TOC entry 3976 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';


--
-- TOC entry 3977 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 3978 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 3979 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';


--
-- TOC entry 3980 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN stats_gps_hora_transportista.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';


--
-- TOC entry 269 (class 1259 OID 53331)
-- Name: stats_gps_hora_transportista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_hora_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_hora_transportista_id_seq OWNER TO postgres;

--
-- TOC entry 3981 (class 0 OID 0)
-- Dependencies: 269
-- Name: stats_gps_hora_transportista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_hora_transportista_id_seq OWNED BY public.stats_gps_hora_transportista.id;


--
-- TOC entry 228 (class 1259 OID 53206)
-- Name: stats_gps_hour_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_hour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_hour_id_seq OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 53207)
-- Name: stats_gps_hour_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_hour_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_hour_id_seq1 OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 53406)
-- Name: stats_gps_mes_patente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_mes_patente (
    id bigint NOT NULL,
    transportista_id integer,
    proveedor_id bigint,
    patente_id integer,
    imei_id integer,
    fecha date NOT NULL,
    mes smallint NOT NULL,
    frecuencia_motor_on time without time zone NOT NULL,
    frecuencia_motor_off time without time zone NOT NULL,
    latencia integer NOT NULL,
    total_cadenas integer NOT NULL,
    total_patentes_problemas integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.stats_gps_mes_patente OWNER TO postgres;

--
-- TOC entry 3982 (class 0 OID 0)
-- Dependencies: 285
-- Name: TABLE stats_gps_mes_patente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_mes_patente IS 'Almacena las estadÃ­sticas por mes de la data por patente';


--
-- TOC entry 3983 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.id IS 'Identificacion unica del registro';


--
-- TOC entry 3984 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.transportista_id IS 'ID del transportista';


--
-- TOC entry 3985 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';


--
-- TOC entry 3986 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.patente_id IS 'ID de la patente';


--
-- TOC entry 3987 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.imei_id IS 'ID del IMEI del equuipo GPS';


--
-- TOC entry 3988 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.fecha IS 'Fecha de la hora';


--
-- TOC entry 3989 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.mes IS 'Mes del aÃ±o en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';


--
-- TOC entry 3990 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';


--
-- TOC entry 3991 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';


--
-- TOC entry 3992 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 3993 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.total_cadenas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.total_cadenas IS 'Total de cadenas para una patente por mes';


--
-- TOC entry 3994 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.total_patentes_problemas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.total_patentes_problemas IS 'Total de cadenas para una patente con problemas por mes';


--
-- TOC entry 3995 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';


--
-- TOC entry 3996 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';


--
-- TOC entry 3997 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 3998 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 3999 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';


--
-- TOC entry 4000 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_gps_mes_patente.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';


--
-- TOC entry 284 (class 1259 OID 53405)
-- Name: stats_gps_mes_patente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_mes_patente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_mes_patente_id_seq OWNER TO postgres;

--
-- TOC entry 4001 (class 0 OID 0)
-- Dependencies: 284
-- Name: stats_gps_mes_patente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_mes_patente_id_seq OWNED BY public.stats_gps_mes_patente.id;


--
-- TOC entry 272 (class 1259 OID 53341)
-- Name: stats_gps_mes_transportista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_mes_transportista (
    id bigint NOT NULL,
    transportista_id bigint,
    proveedor_id integer,
    fecha date NOT NULL,
    mes smallint NOT NULL,
    frecuencia_motor_on time without time zone NOT NULL,
    frecuencia_motor_off time without time zone NOT NULL,
    latencia integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.stats_gps_mes_transportista OWNER TO postgres;

--
-- TOC entry 4002 (class 0 OID 0)
-- Dependencies: 272
-- Name: TABLE stats_gps_mes_transportista; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_mes_transportista IS 'Almacena las estadÃ­sticas por mes de la data enviada por transportista';


--
-- TOC entry 4003 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.id IS 'Identificacion unica del registro';


--
-- TOC entry 4004 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.proveedor_id IS 'ID del proveedor del servicio GPS';


--
-- TOC entry 4005 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.fecha IS 'Fecha de la hora';


--
-- TOC entry 4006 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.mes IS 'Mes del aÃ±o en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';


--
-- TOC entry 4007 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';


--
-- TOC entry 4008 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';


--
-- TOC entry 4009 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 4010 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';


--
-- TOC entry 4011 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';


--
-- TOC entry 4012 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 4013 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 4014 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';


--
-- TOC entry 4015 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN stats_gps_mes_transportista.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';


--
-- TOC entry 271 (class 1259 OID 53340)
-- Name: stats_gps_mes_transportista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_mes_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_mes_transportista_id_seq OWNER TO postgres;

--
-- TOC entry 4016 (class 0 OID 0)
-- Dependencies: 271
-- Name: stats_gps_mes_transportista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_mes_transportista_id_seq OWNED BY public.stats_gps_mes_transportista.id;


--
-- TOC entry 230 (class 1259 OID 53208)
-- Name: stats_gps_month_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_month_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_month_id_seq OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 53415)
-- Name: stats_gps_semana_patente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_semana_patente (
    id bigint NOT NULL,
    transportista_id integer,
    proveedor_id bigint,
    patente_id integer,
    imei_id integer,
    fecha date NOT NULL,
    semana smallint NOT NULL,
    frecuencia_motor_on time without time zone NOT NULL,
    frecuencia_motor_off time without time zone NOT NULL,
    latencia integer NOT NULL,
    total_cadenas integer NOT NULL,
    total_cadenas_problemas integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.stats_gps_semana_patente OWNER TO postgres;

--
-- TOC entry 4017 (class 0 OID 0)
-- Dependencies: 287
-- Name: TABLE stats_gps_semana_patente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_semana_patente IS 'Almacena las estadÃ­sticas por semana de la data POR PATENTE';


--
-- TOC entry 4018 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.id IS 'Identificacion unica del registro';


--
-- TOC entry 4019 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.transportista_id IS 'ID del transportista';


--
-- TOC entry 4020 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';


--
-- TOC entry 4021 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.patente_id IS 'ID de la patente';


--
-- TOC entry 4022 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.imei_id IS 'ID del IMEI del equipo GPS';


--
-- TOC entry 4023 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.fecha IS 'Fecha de la hora';


--
-- TOC entry 4024 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.semana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.semana IS 'Semana del aÃ±o en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';


--
-- TOC entry 4025 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';


--
-- TOC entry 4026 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';


--
-- TOC entry 4027 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 4028 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.total_cadenas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.total_cadenas IS 'Total de cadenas para una patente por semana';


--
-- TOC entry 4029 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.total_cadenas_problemas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.total_cadenas_problemas IS 'Total de cadenas para una patente con problemas por semana';


--
-- TOC entry 4030 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';


--
-- TOC entry 4031 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';


--
-- TOC entry 4032 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 4033 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 4034 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';


--
-- TOC entry 4035 (class 0 OID 0)
-- Dependencies: 287
-- Name: COLUMN stats_gps_semana_patente.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';


--
-- TOC entry 286 (class 1259 OID 53414)
-- Name: stats_gps_semana_patente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_semana_patente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_semana_patente_id_seq OWNER TO postgres;

--
-- TOC entry 4036 (class 0 OID 0)
-- Dependencies: 286
-- Name: stats_gps_semana_patente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_semana_patente_id_seq OWNED BY public.stats_gps_semana_patente.id;


--
-- TOC entry 274 (class 1259 OID 53350)
-- Name: stats_gps_semana_transportista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_semana_transportista (
    id bigint NOT NULL,
    transportista_id bigint,
    proveedor_id integer,
    fecha date NOT NULL,
    semana smallint NOT NULL,
    frecuencia_motor_on time without time zone NOT NULL,
    frecuencia_motor_off time without time zone NOT NULL,
    latencia integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.stats_gps_semana_transportista OWNER TO postgres;

--
-- TOC entry 4037 (class 0 OID 0)
-- Dependencies: 274
-- Name: TABLE stats_gps_semana_transportista; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_semana_transportista IS 'Almacena las estadÃ­sticas por semana de la data enviada por transportista';


--
-- TOC entry 4038 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.id IS 'Identificacion unica del registro';


--
-- TOC entry 4039 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.proveedor_id IS 'ID del proveedor del servicio GPS';


--
-- TOC entry 4040 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.fecha IS 'Fecha de la hora';


--
-- TOC entry 4041 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.semana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.semana IS 'Semana del aÃ±o en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';


--
-- TOC entry 4042 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';


--
-- TOC entry 4043 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';


--
-- TOC entry 4044 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 4045 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';


--
-- TOC entry 4046 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';


--
-- TOC entry 4047 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';


--
-- TOC entry 4048 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 4049 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';


--
-- TOC entry 4050 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN stats_gps_semana_transportista.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';


--
-- TOC entry 273 (class 1259 OID 53349)
-- Name: stats_gps_semana_transportista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_semana_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_semana_transportista_id_seq OWNER TO postgres;

--
-- TOC entry 4051 (class 0 OID 0)
-- Dependencies: 273
-- Name: stats_gps_semana_transportista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_semana_transportista_id_seq OWNED BY public.stats_gps_semana_transportista.id;


--
-- TOC entry 231 (class 1259 OID 53209)
-- Name: stats_gps_week_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_week_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_week_id_seq OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 53210)
-- Name: stats_gps_week_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_gps_week_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_gps_week_id_seq1 OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 53251)
-- Name: stats_trafic_proveedor_day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_trafic_proveedor_day (
    id bigint NOT NULL,
    proveedor_id integer,
    fecha date NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.stats_trafic_proveedor_day OWNER TO postgres;

--
-- TOC entry 4052 (class 0 OID 0)
-- Dependencies: 253
-- Name: TABLE stats_trafic_proveedor_day; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_trafic_proveedor_day IS 'StadÃ­sitcas de trÃ¡fico del proveedor por minuto';


--
-- TOC entry 4053 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN stats_trafic_proveedor_day.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.id IS 'Identificador unico del registro';


--
-- TOC entry 4054 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN stats_trafic_proveedor_day.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.proveedor_id IS 'ID dfeÃ±pr';


--
-- TOC entry 4055 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN stats_trafic_proveedor_day.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.fecha IS 'Fecha de la data';


--
-- TOC entry 4056 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN stats_trafic_proveedor_day.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.cantidad IS 'Cantidad recibidos en la ventana de tiempo';


--
-- TOC entry 4057 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN stats_trafic_proveedor_day.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.created_at IS 'Timestamp de la creaciÃ³n del registro';


--
-- TOC entry 4058 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN stats_trafic_proveedor_day.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.updated_at IS 'Timestamp de la ultima actualizaciÃ³n del registro';


--
-- TOC entry 4059 (class 0 OID 0)
-- Dependencies: 253
-- Name: COLUMN stats_trafic_proveedor_day.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 233 (class 1259 OID 53211)
-- Name: stats_trafic_proveedor_day_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_trafic_proveedor_day_id_seq OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 53212)
-- Name: stats_trafic_proveedor_day_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_day_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_trafic_proveedor_day_id_seq1 OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 53250)
-- Name: stats_trafic_proveedor_day_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_day_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_trafic_proveedor_day_id_seq2 OWNER TO postgres;

--
-- TOC entry 4060 (class 0 OID 0)
-- Dependencies: 252
-- Name: stats_trafic_proveedor_day_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_trafic_proveedor_day_id_seq2 OWNED BY public.stats_trafic_proveedor_day.id;


--
-- TOC entry 255 (class 1259 OID 53260)
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
-- TOC entry 4061 (class 0 OID 0)
-- Dependencies: 255
-- Name: TABLE stats_trafic_proveedor_hour; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_trafic_proveedor_hour IS 'StadÃ­sitcas de trÃ¡fico del proveedor por hora';


--
-- TOC entry 4062 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN stats_trafic_proveedor_hour.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.id IS 'Identificador unico del registro';


--
-- TOC entry 4063 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN stats_trafic_proveedor_hour.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.proveedor_id IS 'ID del probeedpr';


--
-- TOC entry 4064 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN stats_trafic_proveedor_hour.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.fecha IS 'Fecha de la data';


--
-- TOC entry 4065 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN stats_trafic_proveedor_hour.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.hora IS 'Hora de la data';


--
-- TOC entry 4066 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN stats_trafic_proveedor_hour.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.cantidad IS 'Cantidad recibidos en la ventana de tiempo';


--
-- TOC entry 4067 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN stats_trafic_proveedor_hour.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.created_at IS 'Timestamp de creaciÃ³n del registro';


--
-- TOC entry 4068 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN stats_trafic_proveedor_hour.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.updated_at IS 'Timestamp de Ãºltima actualizaciÃ³n del registro';


--
-- TOC entry 4069 (class 0 OID 0)
-- Dependencies: 255
-- Name: COLUMN stats_trafic_proveedor_hour.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 235 (class 1259 OID 53213)
-- Name: stats_trafic_proveedor_hour_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_hour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_trafic_proveedor_hour_id_seq OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 53214)
-- Name: stats_trafic_proveedor_hour_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_hour_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_trafic_proveedor_hour_id_seq1 OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 53259)
-- Name: stats_trafic_proveedor_hour_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_hour_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_trafic_proveedor_hour_id_seq2 OWNER TO postgres;

--
-- TOC entry 4070 (class 0 OID 0)
-- Dependencies: 254
-- Name: stats_trafic_proveedor_hour_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_trafic_proveedor_hour_id_seq2 OWNED BY public.stats_trafic_proveedor_hour.id;


--
-- TOC entry 257 (class 1259 OID 53269)
-- Name: stats_trafic_proveedor_min; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_trafic_proveedor_min (
    id bigint NOT NULL,
    proveedor_id integer NOT NULL,
    fecha date NOT NULL,
    hora smallint NOT NULL,
    minuto smallint NOT NULL,
    motor smallint NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.stats_trafic_proveedor_min OWNER TO postgres;

--
-- TOC entry 4071 (class 0 OID 0)
-- Dependencies: 257
-- Name: TABLE stats_trafic_proveedor_min; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_trafic_proveedor_min IS 'StadÃ­sitcas de trÃ¡fico del proveedor por minuto';


--
-- TOC entry 4072 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN stats_trafic_proveedor_min.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.id IS 'Identificador unico del registro';


--
-- TOC entry 4073 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN stats_trafic_proveedor_min.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.proveedor_id IS 'ID del probeedpr';


--
-- TOC entry 4074 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN stats_trafic_proveedor_min.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.fecha IS 'Fecha de la data';


--
-- TOC entry 4075 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN stats_trafic_proveedor_min.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.hora IS 'Hora de la data';


--
-- TOC entry 4076 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN stats_trafic_proveedor_min.minuto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.minuto IS 'Minuto de la data (0 - 59)';


--
-- TOC entry 4077 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN stats_trafic_proveedor_min.motor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.motor IS 'Estado de igniciÂ´Ã³n del motor: 0 apagado  1 encendido';


--
-- TOC entry 4078 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN stats_trafic_proveedor_min.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.cantidad IS 'Cantidad recibidos en la ventana de tiempo';


--
-- TOC entry 4079 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN stats_trafic_proveedor_min.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.created_at IS 'Timestamp de creaciÃ³n del registro';


--
-- TOC entry 4080 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN stats_trafic_proveedor_min.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.updated_at IS 'Timestamp de Ãºltima actualizaciÃ³n del registro';


--
-- TOC entry 4081 (class 0 OID 0)
-- Dependencies: 257
-- Name: COLUMN stats_trafic_proveedor_min.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 237 (class 1259 OID 53215)
-- Name: stats_trafic_proveedor_min_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_min_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_trafic_proveedor_min_id_seq OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 53216)
-- Name: stats_trafic_proveedor_min_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_min_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_trafic_proveedor_min_id_seq1 OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 53268)
-- Name: stats_trafic_proveedor_min_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_min_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_trafic_proveedor_min_id_seq2 OWNER TO postgres;

--
-- TOC entry 4082 (class 0 OID 0)
-- Dependencies: 256
-- Name: stats_trafic_proveedor_min_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_trafic_proveedor_min_id_seq2 OWNED BY public.stats_trafic_proveedor_min.id;


--
-- TOC entry 259 (class 1259 OID 53278)
-- Name: stats_trafic_proveedor_month; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_trafic_proveedor_month (
    id bigint NOT NULL,
    proveedor_id integer,
    anio integer,
    mes smallint NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.stats_trafic_proveedor_month OWNER TO postgres;

--
-- TOC entry 4083 (class 0 OID 0)
-- Dependencies: 259
-- Name: TABLE stats_trafic_proveedor_month; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_trafic_proveedor_month IS 'StadÃ­sitcas de trÃ¡fico del proveedor por mes';


--
-- TOC entry 4084 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN stats_trafic_proveedor_month.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.id IS 'Identificador unico del registro';


--
-- TOC entry 4085 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN stats_trafic_proveedor_month.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.proveedor_id IS 'ID del proveedor de servio GPS';


--
-- TOC entry 4086 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN stats_trafic_proveedor_month.anio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.anio IS 'Aniode del mes';


--
-- TOC entry 4087 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN stats_trafic_proveedor_month.mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.mes IS 'Mes de la data (1-12)';


--
-- TOC entry 4088 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN stats_trafic_proveedor_month.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.cantidad IS 'Cantidad recibidos en la ventana de tiempo';


--
-- TOC entry 4089 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN stats_trafic_proveedor_month.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.created_at IS 'Timestamp de creaciÃ³n del registro';


--
-- TOC entry 4090 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN stats_trafic_proveedor_month.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.updated_at IS 'Timestamp de la ultima actualizacion del registro';


--
-- TOC entry 4091 (class 0 OID 0)
-- Dependencies: 259
-- Name: COLUMN stats_trafic_proveedor_month.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 239 (class 1259 OID 53217)
-- Name: stats_trafic_proveedor_month_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_month_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_trafic_proveedor_month_id_seq OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 53218)
-- Name: stats_trafic_proveedor_month_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_month_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_trafic_proveedor_month_id_seq1 OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 53277)
-- Name: stats_trafic_proveedor_month_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stats_trafic_proveedor_month_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stats_trafic_proveedor_month_id_seq2 OWNER TO postgres;

--
-- TOC entry 4092 (class 0 OID 0)
-- Dependencies: 258
-- Name: stats_trafic_proveedor_month_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_trafic_proveedor_month_id_seq2 OWNED BY public.stats_trafic_proveedor_month.id;


--
-- TOC entry 262 (class 1259 OID 53288)
-- Name: trn_patentes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trn_patentes (
    id bigint NOT NULL,
    transportista_id integer NOT NULL,
    patente character(6),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.trn_patentes OWNER TO postgres;

--
-- TOC entry 4093 (class 0 OID 0)
-- Dependencies: 262
-- Name: TABLE trn_patentes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.trn_patentes IS 'Tabla de patentes de los transportistas';


--
-- TOC entry 4094 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN trn_patentes.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.id IS 'ID unico del registro';


--
-- TOC entry 4095 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN trn_patentes.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.transportista_id IS 'ID del transportista al cualk pertenece la patente';


--
-- TOC entry 4096 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN trn_patentes.patente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.patente IS 'Â´Â´umero de la patente';


--
-- TOC entry 4097 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN trn_patentes.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 4098 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN trn_patentes.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.updated_at IS 'Timestamp de modificacion del registro';


--
-- TOC entry 4099 (class 0 OID 0)
-- Dependencies: 262
-- Name: COLUMN trn_patentes.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- TOC entry 241 (class 1259 OID 53219)
-- Name: trn_patentes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trn_patentes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trn_patentes_id_seq OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 53220)
-- Name: trn_patentes_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trn_patentes_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trn_patentes_id_seq1 OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 53286)
-- Name: trn_patentes_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trn_patentes_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trn_patentes_id_seq2 OWNER TO postgres;

--
-- TOC entry 4100 (class 0 OID 0)
-- Dependencies: 260
-- Name: trn_patentes_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trn_patentes_id_seq2 OWNED BY public.trn_patentes.id;


--
-- TOC entry 243 (class 1259 OID 53221)
-- Name: trn_patentes_transportista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trn_patentes_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trn_patentes_transportista_id_seq OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 53222)
-- Name: trn_patentes_transportista_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trn_patentes_transportista_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trn_patentes_transportista_id_seq1 OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 53287)
-- Name: trn_patentes_transportista_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trn_patentes_transportista_id_seq2
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.trn_patentes_transportista_id_seq2 OWNER TO postgres;

--
-- TOC entry 4101 (class 0 OID 0)
-- Dependencies: 261
-- Name: trn_patentes_transportista_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trn_patentes_transportista_id_seq2 OWNED BY public.trn_patentes.transportista_id;


--
-- TOC entry 245 (class 1259 OID 53223)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_id_seq OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 53301)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
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


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 4102 (class 0 OID 0)
-- Dependencies: 264
-- Name: TABLE users; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.users IS 'Tabla de usuarios';


--
-- TOC entry 4103 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.id IS 'ID unico del registro';


--
-- TOC entry 4104 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.perfil_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.perfil_id IS 'ID del perfil del usuario';


--
-- TOC entry 4105 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.name IS 'Nombre dek usuario';


--
-- TOC entry 4106 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.email IS 'Emaik del usuario';


--
-- TOC entry 4107 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.email_verified_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.email_verified_at IS 'Timestamp de la verificacion del correo';


--
-- TOC entry 4108 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.password; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.password IS 'Clave del usuario';


--
-- TOC entry 4109 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.avatar; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.avatar IS 'Avatar deÃ± usuario';


--
-- TOC entry 4110 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.remember_token; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.remember_token IS 'Recordar toalen de usuario';


--
-- TOC entry 4111 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.bloqueado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.bloqueado IS 'Indica si el usuario estÂ´Ã¡ bloqueado o no';


--
-- TOC entry 4112 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.old_psw; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.old_psw IS 'Clave anterior';


--
-- TOC entry 4113 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.two_steps; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.two_steps IS 'Verificacion de dos factores';


--
-- TOC entry 4114 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 4115 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.updated_at IS 'Timestamp de modificacion del registro';


--
-- TOC entry 4116 (class 0 OID 0)
-- Dependencies: 264
-- Name: COLUMN users.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.deleted_at IS 'Timestamp de borrADO LOGICO del registro';


--
-- TOC entry 263 (class 1259 OID 53300)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3364 (class 2604 OID 53228)
-- Name: cnf_colores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cnf_colores ALTER COLUMN id SET DEFAULT nextval('public.cnf_colores_id_seq'::regclass);


--
-- TOC entry 3410 (class 2604 OID 53427)
-- Name: desordenadas_dia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_dia ALTER COLUMN id SET DEFAULT nextval('public.desordenadas_dia_id_seq'::regclass);


--
-- TOC entry 3412 (class 2604 OID 53440)
-- Name: desordenadas_hora id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_hora ALTER COLUMN id SET DEFAULT nextval('public.desordenadas_hora_id_seq'::regclass);


--
-- TOC entry 3414 (class 2604 OID 53455)
-- Name: desordenadas_mes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_mes ALTER COLUMN id SET DEFAULT nextval('public.desordenadas_mes_id_seq'::regclass);


--
-- TOC entry 3416 (class 2604 OID 53468)
-- Name: desordenadas_semana id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_semana ALTER COLUMN id SET DEFAULT nextval('public.desordenadas_semana_id_seq'::regclass);


--
-- TOC entry 3366 (class 2604 OID 53236)
-- Name: gb_perfiles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gb_perfiles ALTER COLUMN id SET DEFAULT nextval('public.gb_perfiles_id_seq2'::regclass);


--
-- TOC entry 3394 (class 2604 OID 53363)
-- Name: gps_imei id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei ALTER COLUMN id SET DEFAULT nextval('public.gps_imei_id_seq2'::regclass);


--
-- TOC entry 3395 (class 2604 OID 53364)
-- Name: gps_imei transportista_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei ALTER COLUMN transportista_id SET DEFAULT nextval('public.gps_imei_transportista_id_seq2'::regclass);


--
-- TOC entry 3368 (class 2604 OID 53246)
-- Name: gps_proveedor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_proveedor ALTER COLUMN id SET DEFAULT nextval('public.gps_proveedor_id_seq2'::regclass);


--
-- TOC entry 3397 (class 2604 OID 53377)
-- Name: gps_real_time id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time ALTER COLUMN id SET DEFAULT nextval('public.gps_real_time_id_seq2'::regclass);


--
-- TOC entry 3384 (class 2604 OID 53318)
-- Name: gps_transportista id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_transportista ALTER COLUMN id SET DEFAULT nextval('public.gps_transportista_id_seq2'::regclass);


--
-- TOC entry 3402 (class 2604 OID 53391)
-- Name: stats_gps_dia_patente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_dia_patente_id_seq'::regclass);


--
-- TOC entry 3386 (class 2604 OID 53326)
-- Name: stats_gps_dia_transportista id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_transportista ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_dia_transportista_id_seq'::regclass);


--
-- TOC entry 3404 (class 2604 OID 53400)
-- Name: stats_gps_hora_patente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_patente ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_hora_patente_id_seq'::regclass);


--
-- TOC entry 3388 (class 2604 OID 53335)
-- Name: stats_gps_hora_transportista id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_transportista ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_hora_transportista_id_seq'::regclass);


--
-- TOC entry 3406 (class 2604 OID 53409)
-- Name: stats_gps_mes_patente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_patente ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_mes_patente_id_seq'::regclass);


--
-- TOC entry 3390 (class 2604 OID 53344)
-- Name: stats_gps_mes_transportista id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_transportista ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_mes_transportista_id_seq'::regclass);


--
-- TOC entry 3408 (class 2604 OID 53418)
-- Name: stats_gps_semana_patente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_patente ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_semana_patente_id_seq'::regclass);


--
-- TOC entry 3392 (class 2604 OID 53353)
-- Name: stats_gps_semana_transportista id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_transportista ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_semana_transportista_id_seq'::regclass);


--
-- TOC entry 3370 (class 2604 OID 53254)
-- Name: stats_trafic_proveedor_day id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_day ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_day_id_seq2'::regclass);


--
-- TOC entry 3372 (class 2604 OID 53263)
-- Name: stats_trafic_proveedor_hour id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_hour ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_hour_id_seq2'::regclass);


--
-- TOC entry 3374 (class 2604 OID 53272)
-- Name: stats_trafic_proveedor_min id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_min ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_min_id_seq2'::regclass);


--
-- TOC entry 3376 (class 2604 OID 53281)
-- Name: stats_trafic_proveedor_month id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_month ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_month_id_seq2'::regclass);


--
-- TOC entry 3378 (class 2604 OID 53291)
-- Name: trn_patentes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_patentes ALTER COLUMN id SET DEFAULT nextval('public.trn_patentes_id_seq2'::regclass);


--
-- TOC entry 3379 (class 2604 OID 53292)
-- Name: trn_patentes transportista_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_patentes ALTER COLUMN transportista_id SET DEFAULT nextval('public.trn_patentes_transportista_id_seq2'::regclass);


--
-- TOC entry 3740 (class 0 OID 53225)
-- Dependencies: 247
-- Data for Name: cnf_colores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cnf_colores (id, inicio, final, color, descripcion, deleted_at, created_at, updated_at, unidad) FROM stdin;
\.


--
-- TOC entry 3782 (class 0 OID 53424)
-- Dependencies: 289
-- Data for Name: desordenadas_dia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.desordenadas_dia (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, dia, cant, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3784 (class 0 OID 53437)
-- Dependencies: 291
-- Data for Name: desordenadas_hora; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.desordenadas_hora (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, hora, cant, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3786 (class 0 OID 53452)
-- Dependencies: 293
-- Data for Name: desordenadas_mes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.desordenadas_mes (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, mes, cant, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3788 (class 0 OID 53465)
-- Dependencies: 295
-- Data for Name: desordenadas_semana; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.desordenadas_semana (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, semana, cant, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3742 (class 0 OID 53233)
-- Dependencies: 249
-- Data for Name: gb_perfiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gb_perfiles (id, nombre, permisos, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3770 (class 0 OID 53360)
-- Dependencies: 277
-- Data for Name: gps_imei; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gps_imei (id, transportista_id, proveedor_id, patente_id, imei, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3744 (class 0 OID 53243)
-- Dependencies: 251
-- Data for Name: gps_proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gps_proveedor (id, razon_social, email, total, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3772 (class 0 OID 53374)
-- Dependencies: 279
-- Data for Name: gps_real_time; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gps_real_time (id, rejected, imei_id, transportista_id, proveedor_id, patente_id, timestamp_gps, timestamp_sys, frecuencia, latencia, ordenada, motor, created_at, updated_at, deleted_at, raw_data) FROM stdin;
\.


--
-- TOC entry 3759 (class 0 OID 53315)
-- Dependencies: 266
-- Data for Name: gps_transportista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gps_transportista (id, razon_social, codigo, email, total, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3774 (class 0 OID 53388)
-- Dependencies: 281
-- Data for Name: stats_gps_dia_patente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_dia_patente (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, dia, frecuencia_motor_on, frecuencia_motor_off, latencia, total_cadenas, total_cadenas_problemas, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3761 (class 0 OID 53323)
-- Dependencies: 268
-- Data for Name: stats_gps_dia_transportista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_dia_transportista (id, transportista_id, proveedor_id, fecha, dia, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3776 (class 0 OID 53397)
-- Dependencies: 283
-- Data for Name: stats_gps_hora_patente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_hora_patente (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, hora, frecuencia_motor_on, frecuencia_motor_off, latencia, total_cadenas, total_cadenas_problemas, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3763 (class 0 OID 53332)
-- Dependencies: 270
-- Data for Name: stats_gps_hora_transportista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_hora_transportista (id, transportista_id, proveedor_id, fecha, hora, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3778 (class 0 OID 53406)
-- Dependencies: 285
-- Data for Name: stats_gps_mes_patente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_mes_patente (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, mes, frecuencia_motor_on, frecuencia_motor_off, latencia, total_cadenas, total_patentes_problemas, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3765 (class 0 OID 53341)
-- Dependencies: 272
-- Data for Name: stats_gps_mes_transportista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_mes_transportista (id, transportista_id, proveedor_id, fecha, mes, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3780 (class 0 OID 53415)
-- Dependencies: 287
-- Data for Name: stats_gps_semana_patente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_semana_patente (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, semana, frecuencia_motor_on, frecuencia_motor_off, latencia, total_cadenas, total_cadenas_problemas, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3767 (class 0 OID 53350)
-- Dependencies: 274
-- Data for Name: stats_gps_semana_transportista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_semana_transportista (id, transportista_id, proveedor_id, fecha, semana, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3746 (class 0 OID 53251)
-- Dependencies: 253
-- Data for Name: stats_trafic_proveedor_day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_trafic_proveedor_day (id, proveedor_id, fecha, cantidad, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3748 (class 0 OID 53260)
-- Dependencies: 255
-- Data for Name: stats_trafic_proveedor_hour; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_trafic_proveedor_hour (id, proveedor_id, fecha, hora, cantidad, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3750 (class 0 OID 53269)
-- Dependencies: 257
-- Data for Name: stats_trafic_proveedor_min; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_trafic_proveedor_min (id, proveedor_id, fecha, hora, minuto, motor, cantidad, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3752 (class 0 OID 53278)
-- Dependencies: 259
-- Data for Name: stats_trafic_proveedor_month; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_trafic_proveedor_month (id, proveedor_id, anio, mes, cantidad, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3755 (class 0 OID 53288)
-- Dependencies: 262
-- Data for Name: trn_patentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trn_patentes (id, transportista_id, patente, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 3757 (class 0 OID 53301)
-- Dependencies: 264
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, perfil_id, name, email, email_verified_at, password, avatar, remember_token, bloqueado, old_psw, two_steps, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4117 (class 0 OID 0)
-- Dependencies: 246
-- Name: cnf_colores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cnf_colores_id_seq', 1, false);


--
-- TOC entry 4118 (class 0 OID 0)
-- Dependencies: 288
-- Name: desordenadas_dia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.desordenadas_dia_id_seq', 1, false);


--
-- TOC entry 4119 (class 0 OID 0)
-- Dependencies: 290
-- Name: desordenadas_hora_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.desordenadas_hora_id_seq', 1, false);


--
-- TOC entry 4120 (class 0 OID 0)
-- Dependencies: 292
-- Name: desordenadas_mes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.desordenadas_mes_id_seq', 1, false);


--
-- TOC entry 4121 (class 0 OID 0)
-- Dependencies: 294
-- Name: desordenadas_semana_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.desordenadas_semana_id_seq', 1, false);


--
-- TOC entry 4122 (class 0 OID 0)
-- Dependencies: 214
-- Name: gb_perfiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gb_perfiles_id_seq', 1, false);


--
-- TOC entry 4123 (class 0 OID 0)
-- Dependencies: 215
-- Name: gb_perfiles_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gb_perfiles_id_seq1', 1, false);


--
-- TOC entry 4124 (class 0 OID 0)
-- Dependencies: 248
-- Name: gb_perfiles_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gb_perfiles_id_seq2', 1, false);


--
-- TOC entry 4125 (class 0 OID 0)
-- Dependencies: 216
-- Name: gps_imei_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_imei_id_seq', 1, false);


--
-- TOC entry 4126 (class 0 OID 0)
-- Dependencies: 217
-- Name: gps_imei_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_imei_id_seq1', 1, false);


--
-- TOC entry 4127 (class 0 OID 0)
-- Dependencies: 275
-- Name: gps_imei_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_imei_id_seq2', 1, false);


--
-- TOC entry 4128 (class 0 OID 0)
-- Dependencies: 218
-- Name: gps_imei_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_imei_transportista_id_seq', 1, false);


--
-- TOC entry 4129 (class 0 OID 0)
-- Dependencies: 219
-- Name: gps_imei_transportista_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_imei_transportista_id_seq1', 1, false);


--
-- TOC entry 4130 (class 0 OID 0)
-- Dependencies: 276
-- Name: gps_imei_transportista_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_imei_transportista_id_seq2', 1, false);


--
-- TOC entry 4131 (class 0 OID 0)
-- Dependencies: 220
-- Name: gps_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_proveedor_id_seq', 1, false);


--
-- TOC entry 4132 (class 0 OID 0)
-- Dependencies: 221
-- Name: gps_proveedor_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_proveedor_id_seq1', 1, false);


--
-- TOC entry 4133 (class 0 OID 0)
-- Dependencies: 250
-- Name: gps_proveedor_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_proveedor_id_seq2', 1, false);


--
-- TOC entry 4134 (class 0 OID 0)
-- Dependencies: 222
-- Name: gps_real_time_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_real_time_id_seq', 1, false);


--
-- TOC entry 4135 (class 0 OID 0)
-- Dependencies: 223
-- Name: gps_real_time_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_real_time_id_seq1', 1, false);


--
-- TOC entry 4136 (class 0 OID 0)
-- Dependencies: 278
-- Name: gps_real_time_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_real_time_id_seq2', 1, false);


--
-- TOC entry 4137 (class 0 OID 0)
-- Dependencies: 224
-- Name: gps_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_transportista_id_seq', 1, false);


--
-- TOC entry 4138 (class 0 OID 0)
-- Dependencies: 225
-- Name: gps_transportista_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_transportista_id_seq1', 1, false);


--
-- TOC entry 4139 (class 0 OID 0)
-- Dependencies: 265
-- Name: gps_transportista_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_transportista_id_seq2', 1, false);


--
-- TOC entry 4140 (class 0 OID 0)
-- Dependencies: 226
-- Name: stats_gps_day_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_day_id_seq', 1, false);


--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 227
-- Name: stats_gps_day_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_day_id_seq1', 1, false);


--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 280
-- Name: stats_gps_dia_patente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_dia_patente_id_seq', 1, false);


--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 267
-- Name: stats_gps_dia_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_dia_transportista_id_seq', 1, false);


--
-- TOC entry 4144 (class 0 OID 0)
-- Dependencies: 282
-- Name: stats_gps_hora_patente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_hora_patente_id_seq', 1, false);


--
-- TOC entry 4145 (class 0 OID 0)
-- Dependencies: 269
-- Name: stats_gps_hora_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_hora_transportista_id_seq', 1, false);


--
-- TOC entry 4146 (class 0 OID 0)
-- Dependencies: 228
-- Name: stats_gps_hour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_hour_id_seq', 1, false);


--
-- TOC entry 4147 (class 0 OID 0)
-- Dependencies: 229
-- Name: stats_gps_hour_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_hour_id_seq1', 1, false);


--
-- TOC entry 4148 (class 0 OID 0)
-- Dependencies: 284
-- Name: stats_gps_mes_patente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_mes_patente_id_seq', 1, false);


--
-- TOC entry 4149 (class 0 OID 0)
-- Dependencies: 271
-- Name: stats_gps_mes_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_mes_transportista_id_seq', 1, false);


--
-- TOC entry 4150 (class 0 OID 0)
-- Dependencies: 230
-- Name: stats_gps_month_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_month_id_seq', 1, false);


--
-- TOC entry 4151 (class 0 OID 0)
-- Dependencies: 286
-- Name: stats_gps_semana_patente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_semana_patente_id_seq', 1, false);


--
-- TOC entry 4152 (class 0 OID 0)
-- Dependencies: 273
-- Name: stats_gps_semana_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_semana_transportista_id_seq', 1, false);


--
-- TOC entry 4153 (class 0 OID 0)
-- Dependencies: 231
-- Name: stats_gps_week_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_week_id_seq', 1, false);


--
-- TOC entry 4154 (class 0 OID 0)
-- Dependencies: 232
-- Name: stats_gps_week_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_week_id_seq1', 1, false);


--
-- TOC entry 4155 (class 0 OID 0)
-- Dependencies: 233
-- Name: stats_trafic_proveedor_day_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_day_id_seq', 1, false);


--
-- TOC entry 4156 (class 0 OID 0)
-- Dependencies: 234
-- Name: stats_trafic_proveedor_day_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_day_id_seq1', 1, false);


--
-- TOC entry 4157 (class 0 OID 0)
-- Dependencies: 252
-- Name: stats_trafic_proveedor_day_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_day_id_seq2', 1, false);


--
-- TOC entry 4158 (class 0 OID 0)
-- Dependencies: 235
-- Name: stats_trafic_proveedor_hour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_hour_id_seq', 1, false);


--
-- TOC entry 4159 (class 0 OID 0)
-- Dependencies: 236
-- Name: stats_trafic_proveedor_hour_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_hour_id_seq1', 1, false);


--
-- TOC entry 4160 (class 0 OID 0)
-- Dependencies: 254
-- Name: stats_trafic_proveedor_hour_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_hour_id_seq2', 1, false);


--
-- TOC entry 4161 (class 0 OID 0)
-- Dependencies: 237
-- Name: stats_trafic_proveedor_min_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_min_id_seq', 1, false);


--
-- TOC entry 4162 (class 0 OID 0)
-- Dependencies: 238
-- Name: stats_trafic_proveedor_min_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_min_id_seq1', 1, false);


--
-- TOC entry 4163 (class 0 OID 0)
-- Dependencies: 256
-- Name: stats_trafic_proveedor_min_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_min_id_seq2', 1, false);


--
-- TOC entry 4164 (class 0 OID 0)
-- Dependencies: 239
-- Name: stats_trafic_proveedor_month_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_month_id_seq', 1, false);


--
-- TOC entry 4165 (class 0 OID 0)
-- Dependencies: 240
-- Name: stats_trafic_proveedor_month_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_month_id_seq1', 1, false);


--
-- TOC entry 4166 (class 0 OID 0)
-- Dependencies: 258
-- Name: stats_trafic_proveedor_month_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_month_id_seq2', 1, false);


--
-- TOC entry 4167 (class 0 OID 0)
-- Dependencies: 241
-- Name: trn_patentes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_id_seq', 1, false);


--
-- TOC entry 4168 (class 0 OID 0)
-- Dependencies: 242
-- Name: trn_patentes_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_id_seq1', 1, false);


--
-- TOC entry 4169 (class 0 OID 0)
-- Dependencies: 260
-- Name: trn_patentes_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_id_seq2', 1, false);


--
-- TOC entry 4170 (class 0 OID 0)
-- Dependencies: 243
-- Name: trn_patentes_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_transportista_id_seq', 1, false);


--
-- TOC entry 4171 (class 0 OID 0)
-- Dependencies: 244
-- Name: trn_patentes_transportista_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_transportista_id_seq1', 1, false);


--
-- TOC entry 4172 (class 0 OID 0)
-- Dependencies: 261
-- Name: trn_patentes_transportista_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_transportista_id_seq2', 1, false);


--
-- TOC entry 4173 (class 0 OID 0)
-- Dependencies: 245
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 1, false);


--
-- TOC entry 4174 (class 0 OID 0)
-- Dependencies: 263
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 3462 (class 2606 OID 53371)
-- Name: gps_imei idx_gps_imei; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT idx_gps_imei UNIQUE (imei);


--
-- TOC entry 3437 (class 2606 OID 53299)
-- Name: trn_patentes idx_trn_patentes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_patentes
    ADD CONSTRAINT idx_trn_patentes UNIQUE (patente);


--
-- TOC entry 3443 (class 2606 OID 53312)
-- Name: users idx_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT idx_user UNIQUE (email);


--
-- TOC entry 3419 (class 2606 OID 53231)
-- Name: cnf_colores pk_cnf_colores_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cnf_colores
    ADD CONSTRAINT pk_cnf_colores_id PRIMARY KEY (id);


--
-- TOC entry 3498 (class 2606 OID 53443)
-- Name: desordenadas_hora pk_desordenadas_hora_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT pk_desordenadas_hora_id PRIMARY KEY (id);


--
-- TOC entry 3421 (class 2606 OID 53241)
-- Name: gb_perfiles pk_gb_perfiles_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gb_perfiles
    ADD CONSTRAINT pk_gb_perfiles_id PRIMARY KEY (id);


--
-- TOC entry 3470 (class 2606 OID 53385)
-- Name: gps_real_time pk_gps_real_time_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT pk_gps_real_time_id PRIMARY KEY (id);


--
-- TOC entry 3448 (class 2606 OID 53321)
-- Name: gps_transportista pk_gps_transportista_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_transportista
    ADD CONSTRAINT pk_gps_transportista_id PRIMARY KEY (id);


--
-- TOC entry 3423 (class 2606 OID 53249)
-- Name: gps_proveedor pk_gps_transportista_id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_proveedor
    ADD CONSTRAINT pk_gps_transportista_id_0 PRIMARY KEY (id);


--
-- TOC entry 3454 (class 2606 OID 53338)
-- Name: stats_gps_hora_transportista pk_stat_gps_hour_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_transportista
    ADD CONSTRAINT pk_stat_gps_hour_id PRIMARY KEY (id);


--
-- TOC entry 3451 (class 2606 OID 53329)
-- Name: stats_gps_dia_transportista pk_stat_gps_hour_id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_transportista
    ADD CONSTRAINT pk_stat_gps_hour_id_0 PRIMARY KEY (id);


--
-- TOC entry 3460 (class 2606 OID 53356)
-- Name: stats_gps_semana_transportista pk_stat_gps_hour_id_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_transportista
    ADD CONSTRAINT pk_stat_gps_hour_id_1 PRIMARY KEY (id);


--
-- TOC entry 3457 (class 2606 OID 53347)
-- Name: stats_gps_mes_transportista pk_stat_gps_hour_id_2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_transportista
    ADD CONSTRAINT pk_stat_gps_hour_id_2 PRIMARY KEY (id);


--
-- TOC entry 3476 (class 2606 OID 53403)
-- Name: stats_gps_hora_patente pk_stat_gps_hour_id_3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT pk_stat_gps_hour_id_3 PRIMARY KEY (id);


--
-- TOC entry 3473 (class 2606 OID 53394)
-- Name: stats_gps_dia_patente pk_stat_gps_hour_id_4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT pk_stat_gps_hour_id_4 PRIMARY KEY (id);


--
-- TOC entry 3482 (class 2606 OID 53421)
-- Name: stats_gps_semana_patente pk_stat_gps_hour_id_5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_patente
    ADD CONSTRAINT pk_stat_gps_hour_id_5 PRIMARY KEY (id);


--
-- TOC entry 3479 (class 2606 OID 53412)
-- Name: stats_gps_mes_patente pk_stat_gps_hour_id_6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_patente
    ADD CONSTRAINT pk_stat_gps_hour_id_6 PRIMARY KEY (id);


--
-- TOC entry 3432 (class 2606 OID 53275)
-- Name: stats_trafic_proveedor_min pk_stats_trafic_proveedor_min_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_min
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id PRIMARY KEY (id);


--
-- TOC entry 3426 (class 2606 OID 53257)
-- Name: stats_trafic_proveedor_day pk_stats_trafic_proveedor_min_id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_day
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id_0 PRIMARY KEY (id);


--
-- TOC entry 3435 (class 2606 OID 53284)
-- Name: stats_trafic_proveedor_month pk_stats_trafic_proveedor_min_id_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_month
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id_1 PRIMARY KEY (id);


--
-- TOC entry 3429 (class 2606 OID 53266)
-- Name: stats_trafic_proveedor_hour pk_stats_trafic_proveedor_min_id_2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_hour
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id_2 PRIMARY KEY (id);


--
-- TOC entry 3439 (class 2606 OID 53295)
-- Name: trn_patentes pk_trn_patentes_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_patentes
    ADD CONSTRAINT pk_trn_patentes_id PRIMARY KEY (id);


--
-- TOC entry 3465 (class 2606 OID 53367)
-- Name: gps_imei pk_trn_patentes_id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT pk_trn_patentes_id_0 PRIMARY KEY (id);


--
-- TOC entry 3446 (class 2606 OID 53310)
-- Name: users pk_user_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT pk_user_id PRIMARY KEY (id);


--
-- TOC entry 3441 (class 2606 OID 53297)
-- Name: trn_patentes unq_trn_patentes_transportista-id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_patentes
    ADD CONSTRAINT "unq_trn_patentes_transportista-id" UNIQUE (transportista_id);


--
-- TOC entry 3467 (class 2606 OID 53369)
-- Name: gps_imei unq_trn_patentes_transportista-id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT "unq_trn_patentes_transportista-id_0" UNIQUE (transportista_id);


--
-- TOC entry 3483 (class 1259 OID 53430)
-- Name: idx_desordenadas_dia; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia ON public.desordenadas_dia USING btree (proveedor_id);


--
-- TOC entry 3484 (class 1259 OID 53429)
-- Name: idx_desordenadas_dia_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia_0 ON public.desordenadas_dia USING btree (transportista_id);


--
-- TOC entry 3485 (class 1259 OID 53431)
-- Name: idx_desordenadas_dia_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia_1 ON public.desordenadas_dia USING btree (patente_id);


--
-- TOC entry 3486 (class 1259 OID 53432)
-- Name: idx_desordenadas_dia_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia_2 ON public.desordenadas_dia USING btree (fecha);


--
-- TOC entry 3487 (class 1259 OID 53433)
-- Name: idx_desordenadas_dia_3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia_3 ON public.desordenadas_dia USING btree (dia);


--
-- TOC entry 3488 (class 1259 OID 53434)
-- Name: idx_desordenadas_dia_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia_4 ON public.desordenadas_dia USING btree (imei_id);


--
-- TOC entry 3489 (class 1259 OID 53435)
-- Name: idx_desordenadas_dia_5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia_5 ON public.desordenadas_dia USING btree (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, dia);


--
-- TOC entry 3490 (class 1259 OID 53444)
-- Name: idx_desordenadas_hora; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora ON public.desordenadas_hora USING btree (transportista_id);


--
-- TOC entry 3491 (class 1259 OID 53445)
-- Name: idx_desordenadas_hora_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora_0 ON public.desordenadas_hora USING btree (proveedor_id);


--
-- TOC entry 3492 (class 1259 OID 53446)
-- Name: idx_desordenadas_hora_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora_1 ON public.desordenadas_hora USING btree (patente_id);


--
-- TOC entry 3493 (class 1259 OID 53447)
-- Name: idx_desordenadas_hora_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora_2 ON public.desordenadas_hora USING btree (fecha);


--
-- TOC entry 3494 (class 1259 OID 53448)
-- Name: idx_desordenadas_hora_3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora_3 ON public.desordenadas_hora USING btree (hora);


--
-- TOC entry 3495 (class 1259 OID 53449)
-- Name: idx_desordenadas_hora_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora_4 ON public.desordenadas_hora USING btree (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, hora);


--
-- TOC entry 3496 (class 1259 OID 53450)
-- Name: idx_desordenadas_hora_5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora_5 ON public.desordenadas_hora USING btree (imei_id);


--
-- TOC entry 3499 (class 1259 OID 53457)
-- Name: idx_desordenadas_mes; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes ON public.desordenadas_mes USING btree (transportista_id);


--
-- TOC entry 3500 (class 1259 OID 53458)
-- Name: idx_desordenadas_mes_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes_0 ON public.desordenadas_mes USING btree (proveedor_id);


--
-- TOC entry 3501 (class 1259 OID 53459)
-- Name: idx_desordenadas_mes_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes_1 ON public.desordenadas_mes USING btree (patente_id);


--
-- TOC entry 3502 (class 1259 OID 53460)
-- Name: idx_desordenadas_mes_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes_2 ON public.desordenadas_mes USING btree (imei_id);


--
-- TOC entry 3503 (class 1259 OID 53461)
-- Name: idx_desordenadas_mes_3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes_3 ON public.desordenadas_mes USING btree (fecha);


--
-- TOC entry 3504 (class 1259 OID 53462)
-- Name: idx_desordenadas_mes_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes_4 ON public.desordenadas_mes USING btree (mes);


--
-- TOC entry 3505 (class 1259 OID 53463)
-- Name: idx_desordenadas_mes_5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes_5 ON public.desordenadas_mes USING btree (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, mes);


--
-- TOC entry 3506 (class 1259 OID 53470)
-- Name: idx_desordenadas_semana; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana ON public.desordenadas_semana USING btree (transportista_id);


--
-- TOC entry 3507 (class 1259 OID 53471)
-- Name: idx_desordenadas_semana_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana_0 ON public.desordenadas_semana USING btree (proveedor_id);


--
-- TOC entry 3508 (class 1259 OID 53472)
-- Name: idx_desordenadas_semana_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana_1 ON public.desordenadas_semana USING btree (patente_id);


--
-- TOC entry 3509 (class 1259 OID 53473)
-- Name: idx_desordenadas_semana_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana_2 ON public.desordenadas_semana USING btree (imei_id);


--
-- TOC entry 3510 (class 1259 OID 53474)
-- Name: idx_desordenadas_semana_3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana_3 ON public.desordenadas_semana USING btree (fecha);


--
-- TOC entry 3511 (class 1259 OID 53475)
-- Name: idx_desordenadas_semana_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana_4 ON public.desordenadas_semana USING btree (semana);


--
-- TOC entry 3512 (class 1259 OID 53476)
-- Name: idx_desordenadas_semana_5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana_5 ON public.desordenadas_semana USING btree (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, semana);


--
-- TOC entry 3463 (class 1259 OID 53372)
-- Name: idx_gps_imei_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_gps_imei_0 ON public.gps_imei USING btree (id, transportista_id, proveedor_id, patente_id);


--
-- TOC entry 3468 (class 1259 OID 53386)
-- Name: idx_gps_real_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_gps_real_time ON public.gps_real_time USING btree (id, imei_id, transportista_id, proveedor_id, patente_id);


--
-- TOC entry 3452 (class 1259 OID 53339)
-- Name: idx_stats_gps_hour; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour ON public.stats_gps_hora_transportista USING btree (id, transportista_id);


--
-- TOC entry 3449 (class 1259 OID 53330)
-- Name: idx_stats_gps_hour_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_0 ON public.stats_gps_dia_transportista USING btree (id, transportista_id);


--
-- TOC entry 3458 (class 1259 OID 53357)
-- Name: idx_stats_gps_hour_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_1 ON public.stats_gps_semana_transportista USING btree (id, transportista_id);


--
-- TOC entry 3455 (class 1259 OID 53348)
-- Name: idx_stats_gps_hour_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_2 ON public.stats_gps_mes_transportista USING btree (id, transportista_id);


--
-- TOC entry 3474 (class 1259 OID 53404)
-- Name: idx_stats_gps_hour_3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_3 ON public.stats_gps_hora_patente USING btree (id, proveedor_id);


--
-- TOC entry 3471 (class 1259 OID 53395)
-- Name: idx_stats_gps_hour_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_4 ON public.stats_gps_dia_patente USING btree (id, proveedor_id);


--
-- TOC entry 3480 (class 1259 OID 53422)
-- Name: idx_stats_gps_hour_5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_5 ON public.stats_gps_semana_patente USING btree (id, proveedor_id);


--
-- TOC entry 3477 (class 1259 OID 53413)
-- Name: idx_stats_gps_hour_6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_6 ON public.stats_gps_mes_patente USING btree (id, proveedor_id);


--
-- TOC entry 3424 (class 1259 OID 53258)
-- Name: idx_stats_trafic_proveedor_day; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_trafic_proveedor_day ON public.stats_trafic_proveedor_day USING btree (id, proveedor_id);


--
-- TOC entry 3427 (class 1259 OID 53267)
-- Name: idx_stats_trafic_proveedor_hour; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_trafic_proveedor_hour ON public.stats_trafic_proveedor_hour USING btree (id, proveedor_id);


--
-- TOC entry 3430 (class 1259 OID 53276)
-- Name: idx_stats_trafic_proveedor_min; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_trafic_proveedor_min ON public.stats_trafic_proveedor_min USING btree (id, proveedor_id);


--
-- TOC entry 3433 (class 1259 OID 53285)
-- Name: idx_stats_trafic_proveedor_month; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_trafic_proveedor_month ON public.stats_trafic_proveedor_month USING btree (id, proveedor_id);


--
-- TOC entry 3444 (class 1259 OID 53313)
-- Name: idx_user_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_0 ON public.users USING btree (id, perfil_id);


--
-- TOC entry 3549 (class 2606 OID 53534)
-- Name: desordenadas_dia fk_desordenadas_dia_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT fk_desordenadas_dia_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3550 (class 2606 OID 53524)
-- Name: desordenadas_dia fk_desordenadas_dia_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT fk_desordenadas_dia_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3551 (class 2606 OID 53519)
-- Name: desordenadas_dia fk_desordenadas_dia_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT fk_desordenadas_dia_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3552 (class 2606 OID 53529)
-- Name: desordenadas_dia fk_desordenadas_dia_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT fk_desordenadas_dia_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3553 (class 2606 OID 53554)
-- Name: desordenadas_hora fk_desordenadas_hora_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT fk_desordenadas_hora_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3554 (class 2606 OID 53544)
-- Name: desordenadas_hora fk_desordenadas_hora_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT fk_desordenadas_hora_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3555 (class 2606 OID 53539)
-- Name: desordenadas_hora fk_desordenadas_hora_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT fk_desordenadas_hora_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3556 (class 2606 OID 53549)
-- Name: desordenadas_hora fk_desordenadas_hora_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT fk_desordenadas_hora_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3557 (class 2606 OID 53574)
-- Name: desordenadas_mes fk_desordenadas_mes_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT fk_desordenadas_mes_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3558 (class 2606 OID 53564)
-- Name: desordenadas_mes fk_desordenadas_mes_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT fk_desordenadas_mes_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3559 (class 2606 OID 53559)
-- Name: desordenadas_mes fk_desordenadas_mes_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT fk_desordenadas_mes_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3560 (class 2606 OID 53569)
-- Name: desordenadas_mes fk_desordenadas_mes_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT fk_desordenadas_mes_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3561 (class 2606 OID 53594)
-- Name: desordenadas_semana fk_desordenadas_semana_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT fk_desordenadas_semana_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3562 (class 2606 OID 53584)
-- Name: desordenadas_semana fk_desordenadas_semana_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT fk_desordenadas_semana_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3563 (class 2606 OID 53579)
-- Name: desordenadas_semana fk_desordenadas_semana_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT fk_desordenadas_semana_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3564 (class 2606 OID 53589)
-- Name: desordenadas_semana fk_desordenadas_semana_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT fk_desordenadas_semana_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3527 (class 2606 OID 53604)
-- Name: gps_imei fk_gps_imei_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT fk_gps_imei_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3528 (class 2606 OID 53599)
-- Name: gps_imei fk_gps_imei_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT fk_gps_imei_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3529 (class 2606 OID 53609)
-- Name: gps_imei fk_gps_imei_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT fk_gps_imei_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3530 (class 2606 OID 53629)
-- Name: gps_real_time fk_gps_real_time_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_gps_imei FOREIGN KEY (patente_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3531 (class 2606 OID 53624)
-- Name: gps_real_time fk_gps_real_time_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3532 (class 2606 OID 53614)
-- Name: gps_real_time fk_gps_real_time_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3533 (class 2606 OID 53619)
-- Name: gps_real_time fk_gps_real_time_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_trn_patentes FOREIGN KEY (imei_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3518 (class 2606 OID 53634)
-- Name: gps_transportista fk_gps_transportista_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_transportista
    ADD CONSTRAINT fk_gps_transportista_trn_patentes FOREIGN KEY (id) REFERENCES public.trn_patentes(transportista_id);


--
-- TOC entry 3534 (class 2606 OID 53659)
-- Name: stats_gps_dia_patente fk_stats_gps_dia_patente_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_dia_patente_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3535 (class 2606 OID 53644)
-- Name: stats_gps_dia_patente fk_stats_gps_dia_patente_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_dia_patente_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3536 (class 2606 OID 53649)
-- Name: stats_gps_dia_patente fk_stats_gps_dia_patente_gps_transportista_0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_dia_patente_gps_transportista_0 FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3537 (class 2606 OID 53654)
-- Name: stats_gps_dia_patente fk_stats_gps_dia_patente_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_dia_patente_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3519 (class 2606 OID 53669)
-- Name: stats_gps_dia_transportista fk_stats_gps_dia_transportista_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_transportista
    ADD CONSTRAINT fk_stats_gps_dia_transportista_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3539 (class 2606 OID 53684)
-- Name: stats_gps_hora_patente fk_stats_gps_hora_patente_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT fk_stats_gps_hora_patente_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3540 (class 2606 OID 53689)
-- Name: stats_gps_hora_patente fk_stats_gps_hora_patente_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT fk_stats_gps_hora_patente_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3541 (class 2606 OID 53679)
-- Name: stats_gps_hora_patente fk_stats_gps_hora_patente_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT fk_stats_gps_hora_patente_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3542 (class 2606 OID 53674)
-- Name: stats_gps_hora_patente fk_stats_gps_hora_proveedor_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3538 (class 2606 OID 53639)
-- Name: stats_gps_dia_patente fk_stats_gps_hora_proveedor_gps_proveedor_0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_0 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3546 (class 2606 OID 53729)
-- Name: stats_gps_semana_patente fk_stats_gps_hora_proveedor_gps_proveedor_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_patente
    ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_1 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3543 (class 2606 OID 53704)
-- Name: stats_gps_mes_patente fk_stats_gps_hora_proveedor_gps_proveedor_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_patente
    ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_2 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3521 (class 2606 OID 53699)
-- Name: stats_gps_hora_transportista fk_stats_gps_hora_transportista_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_transportista
    ADD CONSTRAINT fk_stats_gps_hora_transportista_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3522 (class 2606 OID 53694)
-- Name: stats_gps_hora_transportista fk_stats_gps_hour_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_transportista
    ADD CONSTRAINT fk_stats_gps_hour_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3520 (class 2606 OID 53664)
-- Name: stats_gps_dia_transportista fk_stats_gps_hour_gps_transportista_0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_transportista
    ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_0 FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3525 (class 2606 OID 53744)
-- Name: stats_gps_semana_transportista fk_stats_gps_hour_gps_transportista_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_transportista
    ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_1 FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3523 (class 2606 OID 53719)
-- Name: stats_gps_mes_transportista fk_stats_gps_hour_gps_transportista_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_transportista
    ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_2 FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);


--
-- TOC entry 3544 (class 2606 OID 53714)
-- Name: stats_gps_mes_patente fk_stats_gps_mes_patente_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_patente
    ADD CONSTRAINT fk_stats_gps_mes_patente_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3545 (class 2606 OID 53709)
-- Name: stats_gps_mes_patente fk_stats_gps_mes_patente_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_patente
    ADD CONSTRAINT fk_stats_gps_mes_patente_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3524 (class 2606 OID 53724)
-- Name: stats_gps_mes_transportista fk_stats_gps_mes_transportista_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_transportista
    ADD CONSTRAINT fk_stats_gps_mes_transportista_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3547 (class 2606 OID 53739)
-- Name: stats_gps_semana_patente fk_stats_gps_semana_patente_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_patente
    ADD CONSTRAINT fk_stats_gps_semana_patente_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3548 (class 2606 OID 53734)
-- Name: stats_gps_semana_patente fk_stats_gps_semana_patente_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_patente
    ADD CONSTRAINT fk_stats_gps_semana_patente_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3526 (class 2606 OID 53749)
-- Name: stats_gps_semana_transportista fk_stats_gps_semana_transportista_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_transportista
    ADD CONSTRAINT fk_stats_gps_semana_transportista_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3513 (class 2606 OID 53754)
-- Name: stats_trafic_proveedor_day fk_stats_trafic_proveedor_day_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_day
    ADD CONSTRAINT fk_stats_trafic_proveedor_day_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3515 (class 2606 OID 53764)
-- Name: stats_trafic_proveedor_min fk_stats_trafic_proveedor_min_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_min
    ADD CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3514 (class 2606 OID 53759)
-- Name: stats_trafic_proveedor_hour fk_stats_trafic_proveedor_min_gps_proveedor_0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_hour
    ADD CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor_0 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3516 (class 2606 OID 53769)
-- Name: stats_trafic_proveedor_month fk_stats_trafic_proveedor_month_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_month
    ADD CONSTRAINT fk_stats_trafic_proveedor_month_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3517 (class 2606 OID 53774)
-- Name: users fk_user_gb_perfiles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_user_gb_perfiles FOREIGN KEY (perfil_id) REFERENCES public.gb_perfiles(id);


-- Completed on 2023-11-09 15:22:31

--
-- PostgreSQL database dump complete
--

