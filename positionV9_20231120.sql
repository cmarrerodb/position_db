--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 16.0

-- Started on 2023-11-20 11:44:47

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
-- TOC entry 1094 (class 1247 OID 25985)
-- Name: ghstore; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.ghstore;


ALTER TYPE public.ghstore OWNER TO postgres;

--
-- TOC entry 1095 (class 1247 OID 25992)
-- Name: hstore; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.hstore;


ALTER TYPE public.hstore OWNER TO postgres;

--
-- TOC entry 351 (class 1255 OID 25983)
-- Name: ghstore_compress(internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_compress(internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_compress';


ALTER FUNCTION public.ghstore_compress(internal) OWNER TO postgres;

--
-- TOC entry 352 (class 1255 OID 25984)
-- Name: ghstore_decompress(internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_decompress(internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_decompress';


ALTER FUNCTION public.ghstore_decompress(internal) OWNER TO postgres;

--
-- TOC entry 353 (class 1255 OID 25986)
-- Name: ghstore_in(cstring); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_in(cstring) RETURNS public.ghstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_in';


ALTER FUNCTION public.ghstore_in(cstring) OWNER TO postgres;

--
-- TOC entry 354 (class 1255 OID 25987)
-- Name: ghstore_out(public.ghstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_out(public.ghstore) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_out';


ALTER FUNCTION public.ghstore_out(public.ghstore) OWNER TO postgres;

--
-- TOC entry 355 (class 1255 OID 25988)
-- Name: ghstore_penalty(internal, internal, internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_penalty(internal, internal, internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_penalty';


ALTER FUNCTION public.ghstore_penalty(internal, internal, internal) OWNER TO postgres;

--
-- TOC entry 356 (class 1255 OID 25989)
-- Name: ghstore_picksplit(internal, internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_picksplit(internal, internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_picksplit';


ALTER FUNCTION public.ghstore_picksplit(internal, internal) OWNER TO postgres;

--
-- TOC entry 357 (class 1255 OID 25990)
-- Name: ghstore_same(public.ghstore, public.ghstore, internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_same(public.ghstore, public.ghstore, internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_same';


ALTER FUNCTION public.ghstore_same(public.ghstore, public.ghstore, internal) OWNER TO postgres;

--
-- TOC entry 358 (class 1255 OID 25991)
-- Name: ghstore_union(internal, internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ghstore_union(internal, internal) RETURNS public.ghstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_union';


ALTER FUNCTION public.ghstore_union(internal, internal) OWNER TO postgres;

--
-- TOC entry 360 (class 1255 OID 25994)
-- Name: hstore(text[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore(text[]) RETURNS public.hstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_array';


ALTER FUNCTION public.hstore(text[]) OWNER TO postgres;

--
-- TOC entry 359 (class 1255 OID 25993)
-- Name: hstore(record); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore(record) RETURNS public.hstore
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_record';


ALTER FUNCTION public.hstore(record) OWNER TO postgres;

--
-- TOC entry 361 (class 1255 OID 25995)
-- Name: hstore(text[], text[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore(text[], text[]) RETURNS public.hstore
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_arrays';


ALTER FUNCTION public.hstore(text[], text[]) OWNER TO postgres;

--
-- TOC entry 362 (class 1255 OID 25996)
-- Name: hstore(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore(text, text) RETURNS public.hstore
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_text';


ALTER FUNCTION public.hstore(text, text) OWNER TO postgres;

--
-- TOC entry 363 (class 1255 OID 25997)
-- Name: hstore_cmp(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_cmp(public.hstore, public.hstore) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_cmp';


ALTER FUNCTION public.hstore_cmp(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 364 (class 1255 OID 25998)
-- Name: hstore_eq(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_eq(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_eq';


ALTER FUNCTION public.hstore_eq(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 365 (class 1255 OID 25999)
-- Name: hstore_ge(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_ge(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_ge';


ALTER FUNCTION public.hstore_ge(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 366 (class 1255 OID 26000)
-- Name: hstore_gt(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_gt(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_gt';


ALTER FUNCTION public.hstore_gt(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 367 (class 1255 OID 26001)
-- Name: hstore_hash(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_hash(public.hstore) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_hash';


ALTER FUNCTION public.hstore_hash(public.hstore) OWNER TO postgres;

--
-- TOC entry 368 (class 1255 OID 26002)
-- Name: hstore_hash_extended(public.hstore, bigint); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_hash_extended(public.hstore, bigint) RETURNS bigint
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_hash_extended';


ALTER FUNCTION public.hstore_hash_extended(public.hstore, bigint) OWNER TO postgres;

--
-- TOC entry 369 (class 1255 OID 26003)
-- Name: hstore_in(cstring); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_in(cstring) RETURNS public.hstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_in';


ALTER FUNCTION public.hstore_in(cstring) OWNER TO postgres;

--
-- TOC entry 370 (class 1255 OID 26004)
-- Name: hstore_le(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_le(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_le';


ALTER FUNCTION public.hstore_le(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 371 (class 1255 OID 26005)
-- Name: hstore_lt(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_lt(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_lt';


ALTER FUNCTION public.hstore_lt(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 372 (class 1255 OID 26006)
-- Name: hstore_ne(public.hstore, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_ne(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_ne';


ALTER FUNCTION public.hstore_ne(public.hstore, public.hstore) OWNER TO postgres;

--
-- TOC entry 373 (class 1255 OID 26007)
-- Name: hstore_out(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_out(public.hstore) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_out';


ALTER FUNCTION public.hstore_out(public.hstore) OWNER TO postgres;

--
-- TOC entry 374 (class 1255 OID 26008)
-- Name: hstore_recv(internal); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_recv(internal) RETURNS public.hstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_recv';


ALTER FUNCTION public.hstore_recv(internal) OWNER TO postgres;

--
-- TOC entry 375 (class 1255 OID 26009)
-- Name: hstore_send(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_send(public.hstore) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_send';


ALTER FUNCTION public.hstore_send(public.hstore) OWNER TO postgres;

--
-- TOC entry 376 (class 1255 OID 26010)
-- Name: hstore_to_array(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_to_array(public.hstore) RETURNS text[]
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_array';


ALTER FUNCTION public.hstore_to_array(public.hstore) OWNER TO postgres;

--
-- TOC entry 377 (class 1255 OID 26011)
-- Name: hstore_to_json(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_to_json(public.hstore) RETURNS json
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_json';


ALTER FUNCTION public.hstore_to_json(public.hstore) OWNER TO postgres;

--
-- TOC entry 378 (class 1255 OID 26012)
-- Name: hstore_to_json_loose(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_to_json_loose(public.hstore) RETURNS json
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_json_loose';


ALTER FUNCTION public.hstore_to_json_loose(public.hstore) OWNER TO postgres;

--
-- TOC entry 379 (class 1255 OID 26013)
-- Name: hstore_to_jsonb(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_to_jsonb(public.hstore) RETURNS jsonb
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_jsonb';


ALTER FUNCTION public.hstore_to_jsonb(public.hstore) OWNER TO postgres;

--
-- TOC entry 380 (class 1255 OID 26014)
-- Name: hstore_to_jsonb_loose(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_to_jsonb_loose(public.hstore) RETURNS jsonb
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_jsonb_loose';


ALTER FUNCTION public.hstore_to_jsonb_loose(public.hstore) OWNER TO postgres;

--
-- TOC entry 381 (class 1255 OID 26015)
-- Name: hstore_to_matrix(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_to_matrix(public.hstore) RETURNS text[]
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_matrix';


ALTER FUNCTION public.hstore_to_matrix(public.hstore) OWNER TO postgres;

--
-- TOC entry 382 (class 1255 OID 26016)
-- Name: hstore_version_diag(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.hstore_version_diag(public.hstore) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_version_diag';


ALTER FUNCTION public.hstore_version_diag(public.hstore) OWNER TO postgres;

--
-- TOC entry 383 (class 1255 OID 26017)
-- Name: isdefined(public.hstore, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.isdefined(public.hstore, text) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_defined';


ALTER FUNCTION public.isdefined(public.hstore, text) OWNER TO postgres;

--
-- TOC entry 384 (class 1255 OID 26018)
-- Name: isexists(public.hstore, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.isexists(public.hstore, text) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_exists';


ALTER FUNCTION public.isexists(public.hstore, text) OWNER TO postgres;

--
-- TOC entry 385 (class 1255 OID 26019)
-- Name: populate_record(anyelement, public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.populate_record(anyelement, public.hstore) RETURNS anyelement
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_populate_record';


ALTER FUNCTION public.populate_record(anyelement, public.hstore) OWNER TO postgres;

--
-- TOC entry 386 (class 1255 OID 26020)
-- Name: skeys(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.skeys(public.hstore) RETURNS SETOF text
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_skeys';


ALTER FUNCTION public.skeys(public.hstore) OWNER TO postgres;

--
-- TOC entry 387 (class 1255 OID 26021)
-- Name: slice(public.hstore, text[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.slice(public.hstore, text[]) RETURNS public.hstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_slice_to_hstore';


ALTER FUNCTION public.slice(public.hstore, text[]) OWNER TO postgres;

--
-- TOC entry 388 (class 1255 OID 26022)
-- Name: slice_array(public.hstore, text[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.slice_array(public.hstore, text[]) RETURNS text[]
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_slice_to_array';


ALTER FUNCTION public.slice_array(public.hstore, text[]) OWNER TO postgres;

--
-- TOC entry 389 (class 1255 OID 26023)
-- Name: svals(public.hstore); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.svals(public.hstore) RETURNS SETOF text
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_svals';


ALTER FUNCTION public.svals(public.hstore) OWNER TO postgres;

--
-- TOC entry 390 (class 1255 OID 26024)
-- Name: tconvert(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.tconvert(text, text) RETURNS public.hstore
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_text';


ALTER FUNCTION public.tconvert(text, text) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 267 (class 1259 OID 25445)
-- Name: cnf_colores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cnf_colores (
    id integer NOT NULL,
    inicio smallint NOT NULL,
    final smallint NOT NULL,
    color character varying(7) NOT NULL,
    descripcion character varying(35) NOT NULL,
    deleted_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    unidad integer NOT NULL
);


ALTER TABLE public.cnf_colores OWNER TO postgres;

--
-- TOC entry 4087 (class 0 OID 0)
-- Dependencies: 267
-- Name: TABLE cnf_colores; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.cnf_colores IS 'Configuraci´ón de rango de colores de las patentes desarodenadas';


--
-- TOC entry 4088 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN cnf_colores.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.id IS 'Id unico del registro';


--
-- TOC entry 4089 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN cnf_colores.inicio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.inicio IS 'Valor inicial del rango';


--
-- TOC entry 4090 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN cnf_colores.final; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.final IS 'Valor final del rango';


--
-- TOC entry 4091 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN cnf_colores.color; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.color IS 'Color a aplicar al rango, en hexadecimal';


--
-- TOC entry 4092 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN cnf_colores.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.descripcion IS 'Descripcion de donde aplica el rango';


--
-- TOC entry 4093 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN cnf_colores.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- TOC entry 4094 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN cnf_colores.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 4095 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN cnf_colores.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.updated_at IS 'Timestamp de moficiacion del registro';


--
-- TOC entry 4096 (class 0 OID 0)
-- Dependencies: 267
-- Name: COLUMN cnf_colores.unidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_colores.unidad IS 'Unidad del rango: 1 porcewntaje, 2 cantidad';


--
-- TOC entry 214 (class 1259 OID 25385)
-- Name: cnf_colores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cnf_colores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.cnf_colores_id_seq OWNER TO postgres;

--
-- TOC entry 4097 (class 0 OID 0)
-- Dependencies: 214
-- Name: cnf_colores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cnf_colores_id_seq OWNED BY public.cnf_colores.id;


--
-- TOC entry 331 (class 1259 OID 67877)
-- Name: cnf_perfiles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cnf_perfiles (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    permisos text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.cnf_perfiles OWNER TO postgres;

--
-- TOC entry 4098 (class 0 OID 0)
-- Dependencies: 331
-- Name: TABLE cnf_perfiles; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.cnf_perfiles IS 'Perrfiles dfe usuario';


--
-- TOC entry 4099 (class 0 OID 0)
-- Dependencies: 331
-- Name: COLUMN cnf_perfiles.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_perfiles.id IS 'ID unico del registro';


--
-- TOC entry 4100 (class 0 OID 0)
-- Dependencies: 331
-- Name: COLUMN cnf_perfiles.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_perfiles.nombre IS 'Nombre del perfil del usuario';


--
-- TOC entry 4101 (class 0 OID 0)
-- Dependencies: 331
-- Name: COLUMN cnf_perfiles.permisos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_perfiles.permisos IS 'Permisos del usuario';


--
-- TOC entry 4102 (class 0 OID 0)
-- Dependencies: 331
-- Name: COLUMN cnf_perfiles.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_perfiles.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 4103 (class 0 OID 0)
-- Dependencies: 331
-- Name: COLUMN cnf_perfiles.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_perfiles.updated_at IS 'Timestamp de modificacion del registro';


--
-- TOC entry 4104 (class 0 OID 0)
-- Dependencies: 331
-- Name: COLUMN cnf_perfiles.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cnf_perfiles.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- TOC entry 327 (class 1259 OID 67864)
-- Name: cnf_perfiles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cnf_perfiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cnf_perfiles_id_seq OWNER TO postgres;

--
-- TOC entry 330 (class 1259 OID 67876)
-- Name: cnf_perfiles_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cnf_perfiles ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.cnf_perfiles_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 293 (class 1259 OID 53140)
-- Name: cnf_tipo_accion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cnf_tipo_accion (
    id integer NOT NULL,
    text character varying(255)
);


ALTER TABLE public.cnf_tipo_accion OWNER TO postgres;

--
-- TOC entry 292 (class 1259 OID 53139)
-- Name: cnf_tipo_accion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cnf_tipo_accion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cnf_tipo_accion_id_seq OWNER TO postgres;

--
-- TOC entry 4105 (class 0 OID 0)
-- Dependencies: 292
-- Name: cnf_tipo_accion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cnf_tipo_accion_id_seq OWNED BY public.cnf_tipo_accion.id;


--
-- TOC entry 295 (class 1259 OID 53147)
-- Name: cnf_vistas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cnf_vistas (
    id integer NOT NULL,
    modulo character varying(255),
    vista character varying(255),
    fecha_creacion time(6) without time zone DEFAULT now()
);


ALTER TABLE public.cnf_vistas OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 53146)
-- Name: cnf_vistas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cnf_vistas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cnf_vistas_id_seq OWNER TO postgres;

--
-- TOC entry 4106 (class 0 OID 0)
-- Dependencies: 294
-- Name: cnf_vistas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cnf_vistas_id_seq OWNED BY public.cnf_vistas.id;


--
-- TOC entry 268 (class 1259 OID 25468)
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
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.desordenadas_dia OWNER TO postgres;

--
-- TOC entry 4107 (class 0 OID 0)
-- Dependencies: 268
-- Name: TABLE desordenadas_dia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.desordenadas_dia IS 'Tabla de cadenas desordenadas recibidas por dia';


--
-- TOC entry 4108 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN desordenadas_dia.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.id IS 'ID unico del registro';


--
-- TOC entry 4109 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN desordenadas_dia.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.transportista_id IS 'ID del transportista';


--
-- TOC entry 4110 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN desordenadas_dia.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.proveedor_id IS 'ID del proveedor de servicio GPS';


--
-- TOC entry 4111 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN desordenadas_dia.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.patente_id IS 'ID de la patente';


--
-- TOC entry 4112 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN desordenadas_dia.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.imei_id IS 'Id del IMEI';


--
-- TOC entry 4113 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN desordenadas_dia.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.fecha IS 'Fecha de receepción de la cadena';


--
-- TOC entry 4114 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN desordenadas_dia.dia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.dia IS 'Hora del marco del tiempo a evaluar (0-31)';


--
-- TOC entry 4115 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN desordenadas_dia.cant; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';


--
-- TOC entry 4116 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN desordenadas_dia.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4117 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN desordenadas_dia.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.updated_at IS 'Timestamp de modificación del registro';


--
-- TOC entry 4118 (class 0 OID 0)
-- Dependencies: 268
-- Name: COLUMN desordenadas_dia.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_dia.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 215 (class 1259 OID 25388)
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
-- TOC entry 4119 (class 0 OID 0)
-- Dependencies: 215
-- Name: desordenadas_dia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.desordenadas_dia_id_seq OWNED BY public.desordenadas_dia.id;


--
-- TOC entry 269 (class 1259 OID 25473)
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
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.desordenadas_hora OWNER TO postgres;

--
-- TOC entry 4120 (class 0 OID 0)
-- Dependencies: 269
-- Name: TABLE desordenadas_hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.desordenadas_hora IS 'Tabla de cadenas desordenadas recibidas por hora';


--
-- TOC entry 4121 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN desordenadas_hora.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.id IS 'ID unico del registro';


--
-- TOC entry 4122 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN desordenadas_hora.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.transportista_id IS 'ID del transportista';


--
-- TOC entry 4123 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN desordenadas_hora.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.proveedor_id IS 'ID del proveedor de servicio GPS';


--
-- TOC entry 4124 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN desordenadas_hora.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.patente_id IS 'ID de la patente';


--
-- TOC entry 4125 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN desordenadas_hora.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.imei_id IS 'Id del IMEI';


--
-- TOC entry 4126 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN desordenadas_hora.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.fecha IS 'Fecha de receepción de la cadena';


--
-- TOC entry 4127 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN desordenadas_hora.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.hora IS 'Hora del marco del tiempo a evaluar (0-24)';


--
-- TOC entry 4128 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN desordenadas_hora.cant; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';


--
-- TOC entry 4129 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN desordenadas_hora.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4130 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN desordenadas_hora.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.updated_at IS 'Timestamp de modificación del registro';


--
-- TOC entry 4131 (class 0 OID 0)
-- Dependencies: 269
-- Name: COLUMN desordenadas_hora.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_hora.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 216 (class 1259 OID 25389)
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
-- TOC entry 4132 (class 0 OID 0)
-- Dependencies: 216
-- Name: desordenadas_hora_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.desordenadas_hora_id_seq OWNED BY public.desordenadas_hora.id;


--
-- TOC entry 270 (class 1259 OID 25478)
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
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.desordenadas_mes OWNER TO postgres;

--
-- TOC entry 4133 (class 0 OID 0)
-- Dependencies: 270
-- Name: TABLE desordenadas_mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.desordenadas_mes IS 'Tabla de cadenas desordenadas recibidas por mes';


--
-- TOC entry 4134 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN desordenadas_mes.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.id IS 'ID unico del registro';


--
-- TOC entry 4135 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN desordenadas_mes.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.transportista_id IS 'ID del transportista';


--
-- TOC entry 4136 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN desordenadas_mes.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.proveedor_id IS 'ID del proveedor de servicio GPS';


--
-- TOC entry 4137 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN desordenadas_mes.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.patente_id IS 'ID de la patente';


--
-- TOC entry 4138 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN desordenadas_mes.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.imei_id IS 'Id del IMEI';


--
-- TOC entry 4139 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN desordenadas_mes.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.fecha IS 'Fecha de receepción de la cadena';


--
-- TOC entry 4140 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN desordenadas_mes.mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.mes IS 'Mes del marco del tiempo a evaluar (0-12)';


--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN desordenadas_mes.cant; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';


--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN desordenadas_mes.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN desordenadas_mes.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.updated_at IS 'Timestamp de modificación del registro';


--
-- TOC entry 4144 (class 0 OID 0)
-- Dependencies: 270
-- Name: COLUMN desordenadas_mes.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_mes.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 217 (class 1259 OID 25390)
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
-- TOC entry 4145 (class 0 OID 0)
-- Dependencies: 217
-- Name: desordenadas_mes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.desordenadas_mes_id_seq OWNED BY public.desordenadas_mes.id;


--
-- TOC entry 271 (class 1259 OID 25483)
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
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.desordenadas_semana OWNER TO postgres;

--
-- TOC entry 4146 (class 0 OID 0)
-- Dependencies: 271
-- Name: TABLE desordenadas_semana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.desordenadas_semana IS 'Tabla de cadenas desordenadas recibidas por semana';


--
-- TOC entry 4147 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN desordenadas_semana.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.id IS 'ID unico del registro';


--
-- TOC entry 4148 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN desordenadas_semana.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.transportista_id IS 'ID del transportista';


--
-- TOC entry 4149 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN desordenadas_semana.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.proveedor_id IS 'ID del proveedor de servicio GPS';


--
-- TOC entry 4150 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN desordenadas_semana.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.patente_id IS 'ID de la patente';


--
-- TOC entry 4151 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN desordenadas_semana.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.imei_id IS 'Id del IMEI';


--
-- TOC entry 4152 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN desordenadas_semana.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.fecha IS 'Fecha de receepción de la cadena';


--
-- TOC entry 4153 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN desordenadas_semana.semana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.semana IS 'Semana del marco del tiempo a evaluar (0-52)';


--
-- TOC entry 4154 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN desordenadas_semana.cant; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';


--
-- TOC entry 4155 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN desordenadas_semana.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4156 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN desordenadas_semana.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.updated_at IS 'Timestamp de modificación del registro';


--
-- TOC entry 4157 (class 0 OID 0)
-- Dependencies: 271
-- Name: COLUMN desordenadas_semana.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.desordenadas_semana.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 218 (class 1259 OID 25391)
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
-- TOC entry 4158 (class 0 OID 0)
-- Dependencies: 218
-- Name: desordenadas_semana_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.desordenadas_semana_id_seq OWNED BY public.desordenadas_semana.id;


--
-- TOC entry 291 (class 1259 OID 25966)
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
-- TOC entry 4159 (class 0 OID 0)
-- Dependencies: 291
-- Name: TABLE gb_perfiles; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gb_perfiles IS 'Perrfiles dfe usuario';


--
-- TOC entry 4160 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN gb_perfiles.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.id IS 'ID unico del registro';


--
-- TOC entry 4161 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN gb_perfiles.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.nombre IS 'Nombre del perfil del usuario';


--
-- TOC entry 4162 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN gb_perfiles.permisos; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.permisos IS 'Permisos del usuario';


--
-- TOC entry 4163 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN gb_perfiles.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 4164 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN gb_perfiles.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.updated_at IS 'Timestamp de modificacion del registro';


--
-- TOC entry 4165 (class 0 OID 0)
-- Dependencies: 291
-- Name: COLUMN gb_perfiles.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gb_perfiles.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- TOC entry 219 (class 1259 OID 25392)
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
-- TOC entry 220 (class 1259 OID 25393)
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
-- TOC entry 290 (class 1259 OID 25965)
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
-- TOC entry 4166 (class 0 OID 0)
-- Dependencies: 290
-- Name: gb_perfiles_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gb_perfiles_id_seq2 OWNED BY public.gb_perfiles.id;


--
-- TOC entry 272 (class 1259 OID 25488)
-- Name: gps_imei; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gps_imei (
    id bigint NOT NULL,
    transportista_id integer NOT NULL,
    proveedor_id bigint,
    patente_id bigint,
    imei character varying(15) NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.gps_imei OWNER TO postgres;

--
-- TOC entry 4167 (class 0 OID 0)
-- Dependencies: 272
-- Name: TABLE gps_imei; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gps_imei IS 'Tabla de de IMEI vinculada a la patente y al transportista';


--
-- TOC entry 4168 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN gps_imei.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.id IS 'ID unico del registro';


--
-- TOC entry 4169 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN gps_imei.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.transportista_id IS 'ID del transportista al cualk pertenece la patente';


--
-- TOC entry 4170 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN gps_imei.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.proveedor_id IS 'ID del proveefor de servicio GPS coion el cual se relaciona el IMEI';


--
-- TOC entry 4171 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN gps_imei.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.patente_id IS 'ID de la patente con la cual se relaciona el IMWI';


--
-- TOC entry 4172 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN gps_imei.imei; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.imei IS 'C´ódigo IMEI del equipo';


--
-- TOC entry 4173 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN gps_imei.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 4174 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN gps_imei.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.updated_at IS 'Timestamp de modificacion del registro';


--
-- TOC entry 4175 (class 0 OID 0)
-- Dependencies: 272
-- Name: COLUMN gps_imei.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_imei.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- TOC entry 221 (class 1259 OID 25395)
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
-- TOC entry 222 (class 1259 OID 25396)
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
-- TOC entry 223 (class 1259 OID 25397)
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
-- TOC entry 4176 (class 0 OID 0)
-- Dependencies: 223
-- Name: gps_imei_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gps_imei_id_seq2 OWNED BY public.gps_imei.id;


--
-- TOC entry 224 (class 1259 OID 25398)
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
-- TOC entry 225 (class 1259 OID 25399)
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
-- TOC entry 226 (class 1259 OID 25400)
-- Name: gps_imei_transportista_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_imei_transportista_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.gps_imei_transportista_id_seq2 OWNER TO postgres;

--
-- TOC entry 4177 (class 0 OID 0)
-- Dependencies: 226
-- Name: gps_imei_transportista_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gps_imei_transportista_id_seq2 OWNED BY public.gps_imei.transportista_id;


--
-- TOC entry 273 (class 1259 OID 25494)
-- Name: gps_proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gps_proveedor (
    id integer NOT NULL,
    razon_social character(50) NOT NULL,
    email character(50) NOT NULL,
    total integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.gps_proveedor OWNER TO postgres;

--
-- TOC entry 4178 (class 0 OID 0)
-- Dependencies: 273
-- Name: TABLE gps_proveedor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gps_proveedor IS 'Tabla del del provedor del dervicio GPS';


--
-- TOC entry 4179 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN gps_proveedor.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.id IS 'Identificaciu´ón ´único del registro';


--
-- TOC entry 4180 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN gps_proveedor.razon_social; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.razon_social IS 'Razon sociual del proveedor del servicio GPS';


--
-- TOC entry 4181 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN gps_proveedor.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.email IS 'Email del contacto del proveedor del sdervicio GPS';


--
-- TOC entry 4182 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN gps_proveedor.total; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.total IS 'Cantidad total de vehiculos que maneja el proveedor del servicio GPS';


--
-- TOC entry 4183 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN gps_proveedor.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.created_at IS 'Timestamp de creaci´ón del registro';


--
-- TOC entry 4184 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN gps_proveedor.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.updated_at IS 'Timestamp de actiañizacion´ón del registro';


--
-- TOC entry 4185 (class 0 OID 0)
-- Dependencies: 273
-- Name: COLUMN gps_proveedor.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_proveedor.deleted_at IS 'Timestamp de borrado logico´ón del registro';


--
-- TOC entry 227 (class 1259 OID 25401)
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
-- TOC entry 228 (class 1259 OID 25402)
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
-- TOC entry 229 (class 1259 OID 25403)
-- Name: gps_proveedor_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gps_proveedor_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.gps_proveedor_id_seq2 OWNER TO postgres;

--
-- TOC entry 4186 (class 0 OID 0)
-- Dependencies: 229
-- Name: gps_proveedor_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gps_proveedor_id_seq2 OWNED BY public.gps_proveedor.id;


--
-- TOC entry 274 (class 1259 OID 25499)
-- Name: gps_real_time; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gps_real_time (
    id bigint NOT NULL,
    rejected boolean DEFAULT false,
    imei_id bigint,
    transportista_id bigint,
    proveedor_id bigint,
    patente_id bigint,
    timestamp_gps timestamp(6) without time zone,
    timestamp_sys timestamp(6) without time zone,
    frecuencia time(6) without time zone,
    latencia integer NOT NULL,
    ordenada smallint DEFAULT 1 NOT NULL,
    motor smallint DEFAULT 1 NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    raw_data text NOT NULL
);


ALTER TABLE public.gps_real_time OWNER TO postgres;

--
-- TOC entry 4187 (class 0 OID 0)
-- Dependencies: 274
-- Name: TABLE gps_real_time; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.gps_real_time IS 'Tabla de almacenamiento de toda la data entrante';


--
-- TOC entry 4188 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.id IS 'Identificación única del registro';


--
-- TOC entry 4189 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.rejected; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.rejected IS 'Cadena rechazada proveniente del gps';


--
-- TOC entry 4190 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.imei_id IS 'ID del  IMEI';


--
-- TOC entry 4191 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.proveedor_id IS 'ID del proveefor del dercivio de GPS';


--
-- TOC entry 4192 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.patente_id IS 'ID de la patente';


--
-- TOC entry 4193 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.timestamp_gps; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.timestamp_gps IS 'Timestamp en la cual se generó la señal en el GPS';


--
-- TOC entry 4194 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.timestamp_sys; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.timestamp_sys IS 'Timestamp de la recepción de la data del GPS';


--
-- TOC entry 4195 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.frecuencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.frecuencia IS 'Diferencia de tiempo entre el registro actual y el anterior';


--
-- TOC entry 4196 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.latencia IS 'Latencia dek GPS';


--
-- TOC entry 4197 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.ordenada; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.ordenada IS 'Indica si la fecha de recpción del datos es posterior al dato anterior, en cuyo caso su valor es 1; si la fecha de recepción es naterior al registro previo, su valor es 0';


--
-- TOC entry 4198 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.motor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.motor IS 'Indica si el dato fue enciado con el motor encendido o no; en caso de ser asi, su valor es 1, encaso contrario 0';


--
-- TOC entry 4199 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.created_at IS 'Timestamp de creación del registro';


--
-- TOC entry 4200 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.updated_at IS 'Timestamp de modificación del registro';


--
-- TOC entry 4201 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.deleted_at IS 'Timestamp de borrado lógico del registro';


--
-- TOC entry 4202 (class 0 OID 0)
-- Dependencies: 274
-- Name: COLUMN gps_real_time.raw_data; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.gps_real_time.raw_data IS 'Data en bruto proveniente del GPS';


--
-- TOC entry 230 (class 1259 OID 25404)
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
-- TOC entry 231 (class 1259 OID 25405)
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
-- TOC entry 232 (class 1259 OID 25406)
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
-- TOC entry 4203 (class 0 OID 0)
-- Dependencies: 232
-- Name: gps_real_time_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gps_real_time_id_seq2 OWNED BY public.gps_real_time.id;


--
-- TOC entry 233 (class 1259 OID 25407)
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
-- TOC entry 234 (class 1259 OID 25408)
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
-- TOC entry 297 (class 1259 OID 53160)
-- Name: logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logs (
    id bigint NOT NULL,
    vista_id bigint NOT NULL,
    descripcion text NOT NULL,
    datos_previos json,
    datos_nuevos json,
    usuario_id bigint NOT NULL,
    accion_id integer NOT NULL,
    fecha_creacion timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.logs OWNER TO postgres;

--
-- TOC entry 296 (class 1259 OID 53159)
-- Name: logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logs_id_seq OWNER TO postgres;

--
-- TOC entry 4204 (class 0 OID 0)
-- Dependencies: 296
-- Name: logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logs_id_seq OWNED BY public.logs.id;


--
-- TOC entry 299 (class 1259 OID 53185)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 298 (class 1259 OID 53184)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 4205 (class 0 OID 0)
-- Dependencies: 298
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 333 (class 1259 OID 67886)
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp without time zone,
    expires_at timestamp without time zone,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- TOC entry 328 (class 1259 OID 67865)
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 332 (class 1259 OID 67885)
-- Name: personal_access_tokens_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.personal_access_tokens ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.personal_access_tokens_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 235 (class 1259 OID 25410)
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
-- TOC entry 236 (class 1259 OID 25411)
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
-- TOC entry 275 (class 1259 OID 25516)
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
    frecuencia_motor_on time(6) without time zone NOT NULL,
    frecuencia_motor_off time(6) without time zone NOT NULL,
    latencia integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    total_cadenas integer NOT NULL,
    total_cadenas_problemas integer NOT NULL
);


ALTER TABLE public.stats_gps_dia_patente OWNER TO postgres;

--
-- TOC entry 4206 (class 0 OID 0)
-- Dependencies: 275
-- Name: TABLE stats_gps_dia_patente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_dia_patente IS 'Almacena las estadísticas por dia de la data por patente';


--
-- TOC entry 4207 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.id IS 'Identificacion unica del registro';


--
-- TOC entry 4208 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.transportista_id IS 'ID del transportista';


--
-- TOC entry 4209 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';


--
-- TOC entry 4210 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.patente_id IS 'ID de la patente';


--
-- TOC entry 4211 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.imei_id IS 'ID del IMEI del equipo';


--
-- TOC entry 4212 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.fecha IS 'Fecha de la hora';


--
-- TOC entry 4213 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.dia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.dia IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- TOC entry 4214 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';


--
-- TOC entry 4215 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';


--
-- TOC entry 4216 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- TOC entry 4217 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';


--
-- TOC entry 4218 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';


--
-- TOC entry 4219 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';


--
-- TOC entry 4220 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4221 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.updated_at IS 'Timestamp de la última modificación del registro';


--
-- TOC entry 4222 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- TOC entry 4223 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.total_cadenas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.total_cadenas IS 'Total de cadenas para una patente por dia';


--
-- TOC entry 4224 (class 0 OID 0)
-- Dependencies: 275
-- Name: COLUMN stats_gps_dia_patente.total_cadenas_problemas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_patente.total_cadenas_problemas IS 'Total de cadenas para una patente con problemas por dia';


--
-- TOC entry 237 (class 1259 OID 25412)
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
-- TOC entry 4225 (class 0 OID 0)
-- Dependencies: 237
-- Name: stats_gps_dia_patente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_dia_patente_id_seq OWNED BY public.stats_gps_dia_patente.id;


--
-- TOC entry 345 (class 1259 OID 68045)
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
-- TOC entry 4226 (class 0 OID 0)
-- Dependencies: 345
-- Name: TABLE stats_gps_dia_transportista; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_dia_transportista IS 'Almacena las estadísticas por hora de la data enviada por transportista';


--
-- TOC entry 4227 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.id IS 'Identificacion unica del registro';


--
-- TOC entry 4228 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.proveedor_id IS 'ID del proveedor del servicio GPS';


--
-- TOC entry 4229 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.fecha IS 'Fecha de la hora';


--
-- TOC entry 4230 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.dia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.dia IS 'Dia del mes en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- TOC entry 4231 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';


--
-- TOC entry 4232 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';


--
-- TOC entry 4233 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- TOC entry 4234 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';


--
-- TOC entry 4235 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';


--
-- TOC entry 4236 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';


--
-- TOC entry 4237 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4238 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.updated_at IS 'Timestamp de la última modificación del registro';


--
-- TOC entry 4239 (class 0 OID 0)
-- Dependencies: 345
-- Name: COLUMN stats_gps_dia_transportista.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_dia_transportista.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- TOC entry 344 (class 1259 OID 68044)
-- Name: stats_gps_dia_transportista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.stats_gps_dia_transportista ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.stats_gps_dia_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 276 (class 1259 OID 25526)
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
    frecuencia_motor_on time(6) without time zone NOT NULL,
    frecuencia_motor_off time(6) without time zone NOT NULL,
    latencia integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    total_cadenas integer NOT NULL,
    total_cadenas_problemas integer NOT NULL
);


ALTER TABLE public.stats_gps_hora_patente OWNER TO postgres;

--
-- TOC entry 4240 (class 0 OID 0)
-- Dependencies: 276
-- Name: TABLE stats_gps_hora_patente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_hora_patente IS 'Almacena las estadísticas por hora de la data enviada por patente';


--
-- TOC entry 4241 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.id IS 'Identificacion unica del registro';


--
-- TOC entry 4242 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.transportista_id IS 'ID del transportista';


--
-- TOC entry 4243 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';


--
-- TOC entry 4244 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.patente_id IS 'ID de la patente';


--
-- TOC entry 4245 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.imei_id IS 'ID del imei del equipo';


--
-- TOC entry 4246 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.fecha IS 'Fecha de la hora';


--
-- TOC entry 4247 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.hora IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- TOC entry 4248 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';


--
-- TOC entry 4249 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';


--
-- TOC entry 4250 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- TOC entry 4251 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';


--
-- TOC entry 4252 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';


--
-- TOC entry 4253 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';


--
-- TOC entry 4254 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4255 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.updated_at IS 'Timestamp de la última modificación del registro';


--
-- TOC entry 4256 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- TOC entry 4257 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.total_cadenas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.total_cadenas IS 'Total de cadenas para una patente por hora';


--
-- TOC entry 4258 (class 0 OID 0)
-- Dependencies: 276
-- Name: COLUMN stats_gps_hora_patente.total_cadenas_problemas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_patente.total_cadenas_problemas IS 'Total de cadenas con problemas por hora';


--
-- TOC entry 238 (class 1259 OID 25414)
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
-- TOC entry 4259 (class 0 OID 0)
-- Dependencies: 238
-- Name: stats_gps_hora_patente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_hora_patente_id_seq OWNED BY public.stats_gps_hora_patente.id;


--
-- TOC entry 277 (class 1259 OID 25531)
-- Name: stats_gps_hora_transportista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_hora_transportista (
    id bigint NOT NULL,
    transportista_id bigint,
    proveedor_id integer,
    fecha date NOT NULL,
    hora smallint NOT NULL,
    frecuencia_motor_on time(6) without time zone NOT NULL,
    frecuencia_motor_off time(6) without time zone NOT NULL,
    latencia integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.stats_gps_hora_transportista OWNER TO postgres;

--
-- TOC entry 4260 (class 0 OID 0)
-- Dependencies: 277
-- Name: TABLE stats_gps_hora_transportista; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_hora_transportista IS 'Almacena las estadísticas por hora de la data enviada por lo sGPS transportista';


--
-- TOC entry 4261 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.id IS 'Identificacion unica del registro';


--
-- TOC entry 4262 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.proveedor_id IS 'ID del proveedor de servicios GPS';


--
-- TOC entry 4263 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.fecha IS 'Fecha de la hora';


--
-- TOC entry 4264 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.hora IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- TOC entry 4265 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';


--
-- TOC entry 4266 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';


--
-- TOC entry 4267 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- TOC entry 4268 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';


--
-- TOC entry 4269 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';


--
-- TOC entry 4270 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';


--
-- TOC entry 4271 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4272 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.updated_at IS 'Timestamp de la última modificación del registro';


--
-- TOC entry 4273 (class 0 OID 0)
-- Dependencies: 277
-- Name: COLUMN stats_gps_hora_transportista.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_hora_transportista.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- TOC entry 239 (class 1259 OID 25415)
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
-- TOC entry 4274 (class 0 OID 0)
-- Dependencies: 239
-- Name: stats_gps_hora_transportista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_hora_transportista_id_seq OWNED BY public.stats_gps_hora_transportista.id;


--
-- TOC entry 240 (class 1259 OID 25416)
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
-- TOC entry 241 (class 1259 OID 25417)
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
-- TOC entry 278 (class 1259 OID 25536)
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
    frecuencia_motor_on time(6) without time zone NOT NULL,
    frecuencia_motor_off time(6) without time zone NOT NULL,
    latencia integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    total_cadenas integer NOT NULL,
    total_patentes_problemas integer NOT NULL
);


ALTER TABLE public.stats_gps_mes_patente OWNER TO postgres;

--
-- TOC entry 4275 (class 0 OID 0)
-- Dependencies: 278
-- Name: TABLE stats_gps_mes_patente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_mes_patente IS 'Almacena las estadísticas por mes de la data por patente';


--
-- TOC entry 4276 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.id IS 'Identificacion unica del registro';


--
-- TOC entry 4277 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.transportista_id IS 'ID del transportista';


--
-- TOC entry 4278 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';


--
-- TOC entry 4279 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.patente_id IS 'ID de la patente';


--
-- TOC entry 4280 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.imei_id IS 'ID del IMEI del equuipo GPS';


--
-- TOC entry 4281 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.fecha IS 'Fecha de la hora';


--
-- TOC entry 4282 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.mes IS 'Mes del año en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- TOC entry 4283 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';


--
-- TOC entry 4284 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';


--
-- TOC entry 4285 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- TOC entry 4286 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';


--
-- TOC entry 4287 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';


--
-- TOC entry 4288 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';


--
-- TOC entry 4289 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4290 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.updated_at IS 'Timestamp de la última modificación del registro';


--
-- TOC entry 4291 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- TOC entry 4292 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.total_cadenas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.total_cadenas IS 'Total de cadenas para una patente por mes';


--
-- TOC entry 4293 (class 0 OID 0)
-- Dependencies: 278
-- Name: COLUMN stats_gps_mes_patente.total_patentes_problemas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_patente.total_patentes_problemas IS 'Total de cadenas para una patente con problemas por mes';


--
-- TOC entry 242 (class 1259 OID 25418)
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
-- TOC entry 4294 (class 0 OID 0)
-- Dependencies: 242
-- Name: stats_gps_mes_patente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_mes_patente_id_seq OWNED BY public.stats_gps_mes_patente.id;


--
-- TOC entry 279 (class 1259 OID 25541)
-- Name: stats_gps_mes_transportista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_mes_transportista (
    id bigint NOT NULL,
    transportista_id bigint,
    proveedor_id integer,
    fecha date NOT NULL,
    mes smallint NOT NULL,
    frecuencia_motor_on time(6) without time zone NOT NULL,
    frecuencia_motor_off time(6) without time zone NOT NULL,
    latencia integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.stats_gps_mes_transportista OWNER TO postgres;

--
-- TOC entry 4295 (class 0 OID 0)
-- Dependencies: 279
-- Name: TABLE stats_gps_mes_transportista; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_mes_transportista IS 'Almacena las estadísticas por mes de la data enviada por transportista';


--
-- TOC entry 4296 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.id IS 'Identificacion unica del registro';


--
-- TOC entry 4297 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.proveedor_id IS 'ID del proveedor del servicio GPS';


--
-- TOC entry 4298 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.fecha IS 'Fecha de la hora';


--
-- TOC entry 4299 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.mes IS 'Mes del año en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- TOC entry 4300 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';


--
-- TOC entry 4301 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';


--
-- TOC entry 4302 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- TOC entry 4303 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';


--
-- TOC entry 4304 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';


--
-- TOC entry 4305 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';


--
-- TOC entry 4306 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4307 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.updated_at IS 'Timestamp de la última modificación del registro';


--
-- TOC entry 4308 (class 0 OID 0)
-- Dependencies: 279
-- Name: COLUMN stats_gps_mes_transportista.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_mes_transportista.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- TOC entry 243 (class 1259 OID 25419)
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
-- TOC entry 4309 (class 0 OID 0)
-- Dependencies: 243
-- Name: stats_gps_mes_transportista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_mes_transportista_id_seq OWNED BY public.stats_gps_mes_transportista.id;


--
-- TOC entry 244 (class 1259 OID 25420)
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
-- TOC entry 337 (class 1259 OID 67902)
-- Name: stats_gps_proveedor_dia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_proveedor_dia (
    id bigint NOT NULL,
    patentes_total bigint,
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


ALTER TABLE public.stats_gps_proveedor_dia OWNER TO postgres;

--
-- TOC entry 4310 (class 0 OID 0)
-- Dependencies: 337
-- Name: TABLE stats_gps_proveedor_dia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_proveedor_dia IS 'Almacena las estadísticas por hora de la data enviada por transportista';


--
-- TOC entry 4311 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.id IS 'Identificacion unica del registro';


--
-- TOC entry 4312 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.patentes_total; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.patentes_total IS 'Cantidad de patentes relacionadas al Proveedor';


--
-- TOC entry 4313 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.proveedor_id IS 'ID del proveedor del servicio GPS';


--
-- TOC entry 4314 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.fecha IS 'Fecha de la hora';


--
-- TOC entry 4315 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.dia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.dia IS 'Dia del mes en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- TOC entry 4316 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';


--
-- TOC entry 4317 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';


--
-- TOC entry 4318 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- TOC entry 4319 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';


--
-- TOC entry 4320 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';


--
-- TOC entry 4321 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';


--
-- TOC entry 4322 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4323 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.updated_at IS 'Timestamp de la última modificación del registro';


--
-- TOC entry 4324 (class 0 OID 0)
-- Dependencies: 337
-- Name: COLUMN stats_gps_proveedor_dia.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_dia.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- TOC entry 336 (class 1259 OID 67901)
-- Name: stats_gps_proveedor_dia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.stats_gps_proveedor_dia ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.stats_gps_proveedor_dia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 335 (class 1259 OID 67895)
-- Name: stats_gps_proveedor_hora; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_proveedor_hora (
    id bigint NOT NULL,
    patentes_total bigint,
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


ALTER TABLE public.stats_gps_proveedor_hora OWNER TO postgres;

--
-- TOC entry 4325 (class 0 OID 0)
-- Dependencies: 335
-- Name: TABLE stats_gps_proveedor_hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_proveedor_hora IS 'Almacena las estadísticas por hora de la data enviada por lo sGPS transportista';


--
-- TOC entry 4326 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.id IS 'Identificacion unica del registro';


--
-- TOC entry 4327 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.proveedor_id IS 'ID del proveedor de servicios GPS';


--
-- TOC entry 4328 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.fecha IS 'Fecha de la hora';


--
-- TOC entry 4329 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.hora IS 'Hora del día en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- TOC entry 4330 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';


--
-- TOC entry 4331 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';


--
-- TOC entry 4332 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- TOC entry 4333 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';


--
-- TOC entry 4334 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';


--
-- TOC entry 4335 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';


--
-- TOC entry 4336 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4337 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.updated_at IS 'Timestamp de la última modificación del registro';


--
-- TOC entry 4338 (class 0 OID 0)
-- Dependencies: 335
-- Name: COLUMN stats_gps_proveedor_hora.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_hora.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- TOC entry 334 (class 1259 OID 67894)
-- Name: stats_gps_proveedor_hora_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.stats_gps_proveedor_hora ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.stats_gps_proveedor_hora_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 339 (class 1259 OID 67916)
-- Name: stats_gps_proveedor_mes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_proveedor_mes (
    id bigint NOT NULL,
    patentes_total bigint,
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


ALTER TABLE public.stats_gps_proveedor_mes OWNER TO postgres;

--
-- TOC entry 4339 (class 0 OID 0)
-- Dependencies: 339
-- Name: TABLE stats_gps_proveedor_mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_proveedor_mes IS 'Almacena las estadísticas por mes de la data enviada por transportista';


--
-- TOC entry 4340 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.id IS 'Identificacion unica del registro';


--
-- TOC entry 4341 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.proveedor_id IS 'ID del proveedor del servicio GPS';


--
-- TOC entry 4342 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.fecha IS 'Fecha de la hora';


--
-- TOC entry 4343 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.mes IS 'Mes del año en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- TOC entry 4344 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';


--
-- TOC entry 4345 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';


--
-- TOC entry 4346 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- TOC entry 4347 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';


--
-- TOC entry 4348 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';


--
-- TOC entry 4349 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';


--
-- TOC entry 4350 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4351 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.updated_at IS 'Timestamp de la última modificación del registro';


--
-- TOC entry 4352 (class 0 OID 0)
-- Dependencies: 339
-- Name: COLUMN stats_gps_proveedor_mes.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_mes.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- TOC entry 338 (class 1259 OID 67915)
-- Name: stats_gps_proveedor_mes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.stats_gps_proveedor_mes ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.stats_gps_proveedor_mes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 341 (class 1259 OID 67929)
-- Name: stats_gps_proveedor_semana; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_proveedor_semana (
    id bigint NOT NULL,
    patentes_total bigint,
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


ALTER TABLE public.stats_gps_proveedor_semana OWNER TO postgres;

--
-- TOC entry 4353 (class 0 OID 0)
-- Dependencies: 341
-- Name: TABLE stats_gps_proveedor_semana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_proveedor_semana IS 'Almacena las estadísticas por semana de la data enviada por transportista';


--
-- TOC entry 4354 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.id IS 'Identificacion unica del registro';


--
-- TOC entry 4355 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.proveedor_id IS 'ID del proveedor del servicio GPS';


--
-- TOC entry 4356 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.fecha IS 'Fecha de la hora';


--
-- TOC entry 4357 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.semana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.semana IS 'Semana del año en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- TOC entry 4358 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';


--
-- TOC entry 4359 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';


--
-- TOC entry 4360 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- TOC entry 4361 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';


--
-- TOC entry 4362 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';


--
-- TOC entry 4363 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';


--
-- TOC entry 4364 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4365 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.updated_at IS 'Timestamp de la última modificación del registro';


--
-- TOC entry 4366 (class 0 OID 0)
-- Dependencies: 341
-- Name: COLUMN stats_gps_proveedor_semana.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_proveedor_semana.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- TOC entry 340 (class 1259 OID 67928)
-- Name: stats_gps_proveedor_semana_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.stats_gps_proveedor_semana ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.stats_gps_proveedor_semana_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 280 (class 1259 OID 25546)
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
    frecuencia_motor_on time(6) without time zone NOT NULL,
    frecuencia_motor_off time(6) without time zone NOT NULL,
    latencia integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    total_cadenas integer NOT NULL,
    total_cadenas_problemas integer NOT NULL
);


ALTER TABLE public.stats_gps_semana_patente OWNER TO postgres;

--
-- TOC entry 4367 (class 0 OID 0)
-- Dependencies: 280
-- Name: TABLE stats_gps_semana_patente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_semana_patente IS 'Almacena las estadísticas por semana de la data POR PATENTE';


--
-- TOC entry 4368 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.id IS 'Identificacion unica del registro';


--
-- TOC entry 4369 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.transportista_id IS 'ID del transportista';


--
-- TOC entry 4370 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';


--
-- TOC entry 4371 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.patente_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.patente_id IS 'ID de la patente';


--
-- TOC entry 4372 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.imei_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.imei_id IS 'ID del IMEI del equipo GPS';


--
-- TOC entry 4373 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.fecha IS 'Fecha de la hora';


--
-- TOC entry 4374 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.semana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.semana IS 'Semana del año en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- TOC entry 4375 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';


--
-- TOC entry 4376 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';


--
-- TOC entry 4377 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- TOC entry 4378 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';


--
-- TOC entry 4379 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';


--
-- TOC entry 4380 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';


--
-- TOC entry 4381 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4382 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.updated_at IS 'Timestamp de la última modificación del registro';


--
-- TOC entry 4383 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- TOC entry 4384 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.total_cadenas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.total_cadenas IS 'Total de cadenas para una patente por semana';


--
-- TOC entry 4385 (class 0 OID 0)
-- Dependencies: 280
-- Name: COLUMN stats_gps_semana_patente.total_cadenas_problemas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_patente.total_cadenas_problemas IS 'Total de cadenas para una patente con problemas por semana';


--
-- TOC entry 245 (class 1259 OID 25421)
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
-- TOC entry 4386 (class 0 OID 0)
-- Dependencies: 245
-- Name: stats_gps_semana_patente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_semana_patente_id_seq OWNED BY public.stats_gps_semana_patente.id;


--
-- TOC entry 281 (class 1259 OID 25551)
-- Name: stats_gps_semana_transportista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_gps_semana_transportista (
    id bigint NOT NULL,
    transportista_id bigint,
    proveedor_id integer,
    fecha date NOT NULL,
    semana smallint NOT NULL,
    frecuencia_motor_on time(6) without time zone NOT NULL,
    frecuencia_motor_off time(6) without time zone NOT NULL,
    latencia integer NOT NULL,
    q_patetentes_no_ign integer NOT NULL,
    q_patentes_no_deteccion integer NOT NULL,
    q_desordenadas integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.stats_gps_semana_transportista OWNER TO postgres;

--
-- TOC entry 4387 (class 0 OID 0)
-- Dependencies: 281
-- Name: TABLE stats_gps_semana_transportista; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_gps_semana_transportista IS 'Almacena las estadísticas por semana de la data enviada por transportista';


--
-- TOC entry 4388 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.id IS 'Identificacion unica del registro';


--
-- TOC entry 4389 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.proveedor_id IS 'ID del proveedor del servicio GPS';


--
-- TOC entry 4390 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.fecha IS 'Fecha de la hora';


--
-- TOC entry 4391 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.semana; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.semana IS 'Semana del año en la cual se genera el resúmen de la estadística, para esa fecha';


--
-- TOC entry 4392 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.frecuencia_motor_on; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor encendido';


--
-- TOC entry 4393 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.frecuencia_motor_off; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del día, para esa fecha con el motor apagado';


--
-- TOC entry 4394 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.latencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.latencia IS 'Latencia promedio durante esa hora del día, para esa fecha';


--
-- TOC entry 4395 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.q_patetentes_no_ign; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidi´ón en las ultimas 24 horas';


--
-- TOC entry 4396 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.q_patentes_no_deteccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las ´últimas 24 horas';


--
-- TOC entry 4397 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.q_desordenadas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del día, para esa fecha';


--
-- TOC entry 4398 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4399 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.updated_at IS 'Timestamp de la última modificación del registro';


--
-- TOC entry 4400 (class 0 OID 0)
-- Dependencies: 281
-- Name: COLUMN stats_gps_semana_transportista.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_gps_semana_transportista.deleted_at IS 'Timestamp del borrado lógico del registro';


--
-- TOC entry 246 (class 1259 OID 25422)
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
-- TOC entry 4401 (class 0 OID 0)
-- Dependencies: 246
-- Name: stats_gps_semana_transportista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_gps_semana_transportista_id_seq OWNED BY public.stats_gps_semana_transportista.id;


--
-- TOC entry 247 (class 1259 OID 25423)
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
-- TOC entry 248 (class 1259 OID 25424)
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
-- TOC entry 282 (class 1259 OID 25556)
-- Name: stats_trafic_proveedor_day; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_trafic_proveedor_day (
    id bigint NOT NULL,
    proveedor_id integer,
    fecha date NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.stats_trafic_proveedor_day OWNER TO postgres;

--
-- TOC entry 4402 (class 0 OID 0)
-- Dependencies: 282
-- Name: TABLE stats_trafic_proveedor_day; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_trafic_proveedor_day IS 'Stadísitcas de tráfico del proveedor por minuto';


--
-- TOC entry 4403 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN stats_trafic_proveedor_day.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.id IS 'Identificador unico del registro';


--
-- TOC entry 4404 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN stats_trafic_proveedor_day.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.proveedor_id IS 'ID dfeñpr';


--
-- TOC entry 4405 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN stats_trafic_proveedor_day.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.fecha IS 'Fecha de la data';


--
-- TOC entry 4406 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN stats_trafic_proveedor_day.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.cantidad IS 'Cantidad recibidos en la ventana de tiempo';


--
-- TOC entry 4407 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN stats_trafic_proveedor_day.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.created_at IS 'Timestamp de la creación del registro';


--
-- TOC entry 4408 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN stats_trafic_proveedor_day.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.updated_at IS 'Timestamp de la ultima actualización del registro';


--
-- TOC entry 4409 (class 0 OID 0)
-- Dependencies: 282
-- Name: COLUMN stats_trafic_proveedor_day.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_day.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 249 (class 1259 OID 25425)
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
-- TOC entry 250 (class 1259 OID 25426)
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
-- TOC entry 251 (class 1259 OID 25427)
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
-- TOC entry 4410 (class 0 OID 0)
-- Dependencies: 251
-- Name: stats_trafic_proveedor_day_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_trafic_proveedor_day_id_seq2 OWNED BY public.stats_trafic_proveedor_day.id;


--
-- TOC entry 283 (class 1259 OID 25561)
-- Name: stats_trafic_proveedor_hour; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_trafic_proveedor_hour (
    id bigint NOT NULL,
    proveedor_id integer NOT NULL,
    fecha date NOT NULL,
    hora smallint NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.stats_trafic_proveedor_hour OWNER TO postgres;

--
-- TOC entry 4411 (class 0 OID 0)
-- Dependencies: 283
-- Name: TABLE stats_trafic_proveedor_hour; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_trafic_proveedor_hour IS 'Stadísitcas de tráfico del proveedor por hora';


--
-- TOC entry 4412 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_trafic_proveedor_hour.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.id IS 'Identificador unico del registro';


--
-- TOC entry 4413 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_trafic_proveedor_hour.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.proveedor_id IS 'ID del probeedpr';


--
-- TOC entry 4414 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_trafic_proveedor_hour.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.fecha IS 'Fecha de la data';


--
-- TOC entry 4415 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_trafic_proveedor_hour.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.hora IS 'Hora de la data';


--
-- TOC entry 4416 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_trafic_proveedor_hour.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.cantidad IS 'Cantidad recibidos en la ventana de tiempo';


--
-- TOC entry 4417 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_trafic_proveedor_hour.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.created_at IS 'Timestamp de creación del registro';


--
-- TOC entry 4418 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_trafic_proveedor_hour.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.updated_at IS 'Timestamp de última actualización del registro';


--
-- TOC entry 4419 (class 0 OID 0)
-- Dependencies: 283
-- Name: COLUMN stats_trafic_proveedor_hour.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_hour.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 252 (class 1259 OID 25428)
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
-- TOC entry 253 (class 1259 OID 25429)
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
-- TOC entry 254 (class 1259 OID 25430)
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
-- TOC entry 4420 (class 0 OID 0)
-- Dependencies: 254
-- Name: stats_trafic_proveedor_hour_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_trafic_proveedor_hour_id_seq2 OWNED BY public.stats_trafic_proveedor_hour.id;


--
-- TOC entry 284 (class 1259 OID 25566)
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
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.stats_trafic_proveedor_min OWNER TO postgres;

--
-- TOC entry 4421 (class 0 OID 0)
-- Dependencies: 284
-- Name: TABLE stats_trafic_proveedor_min; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_trafic_proveedor_min IS 'Stadísitcas de tráfico del proveedor por minuto';


--
-- TOC entry 4422 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN stats_trafic_proveedor_min.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.id IS 'Identificador unico del registro';


--
-- TOC entry 4423 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN stats_trafic_proveedor_min.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.proveedor_id IS 'ID del probeedpr';


--
-- TOC entry 4424 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN stats_trafic_proveedor_min.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.fecha IS 'Fecha de la data';


--
-- TOC entry 4425 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN stats_trafic_proveedor_min.hora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.hora IS 'Hora de la data';


--
-- TOC entry 4426 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN stats_trafic_proveedor_min.minuto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.minuto IS 'Minuto de la data (0 - 59)';


--
-- TOC entry 4427 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN stats_trafic_proveedor_min.motor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.motor IS 'Estado de ignici´ón del motor: 0 apagado  1 encendido';


--
-- TOC entry 4428 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN stats_trafic_proveedor_min.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.cantidad IS 'Cantidad recibidos en la ventana de tiempo';


--
-- TOC entry 4429 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN stats_trafic_proveedor_min.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.created_at IS 'Timestamp de creación del registro';


--
-- TOC entry 4430 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN stats_trafic_proveedor_min.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.updated_at IS 'Timestamp de última actualización del registro';


--
-- TOC entry 4431 (class 0 OID 0)
-- Dependencies: 284
-- Name: COLUMN stats_trafic_proveedor_min.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_min.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 255 (class 1259 OID 25431)
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
-- TOC entry 256 (class 1259 OID 25432)
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
-- TOC entry 257 (class 1259 OID 25433)
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
-- TOC entry 4432 (class 0 OID 0)
-- Dependencies: 257
-- Name: stats_trafic_proveedor_min_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_trafic_proveedor_min_id_seq2 OWNED BY public.stats_trafic_proveedor_min.id;


--
-- TOC entry 285 (class 1259 OID 25571)
-- Name: stats_trafic_proveedor_month; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stats_trafic_proveedor_month (
    id bigint NOT NULL,
    proveedor_id integer,
    anio integer,
    mes smallint NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone
);


ALTER TABLE public.stats_trafic_proveedor_month OWNER TO postgres;

--
-- TOC entry 4433 (class 0 OID 0)
-- Dependencies: 285
-- Name: TABLE stats_trafic_proveedor_month; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.stats_trafic_proveedor_month IS 'Stadísitcas de tráfico del proveedor por mes';


--
-- TOC entry 4434 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_trafic_proveedor_month.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.id IS 'Identificador unico del registro';


--
-- TOC entry 4435 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_trafic_proveedor_month.proveedor_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.proveedor_id IS 'ID del proveedor de servio GPS';


--
-- TOC entry 4436 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_trafic_proveedor_month.anio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.anio IS 'Aniode del mes';


--
-- TOC entry 4437 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_trafic_proveedor_month.mes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.mes IS 'Mes de la data (1-12)';


--
-- TOC entry 4438 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_trafic_proveedor_month.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.cantidad IS 'Cantidad recibidos en la ventana de tiempo';


--
-- TOC entry 4439 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_trafic_proveedor_month.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.created_at IS 'Timestamp de creación del registro';


--
-- TOC entry 4440 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_trafic_proveedor_month.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.updated_at IS 'Timestamp de la ultima actualizacion del registro';


--
-- TOC entry 4441 (class 0 OID 0)
-- Dependencies: 285
-- Name: COLUMN stats_trafic_proveedor_month.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.stats_trafic_proveedor_month.deleted_at IS 'Timestamp del borrado logico del registro';


--
-- TOC entry 258 (class 1259 OID 25434)
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
-- TOC entry 259 (class 1259 OID 25435)
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
-- TOC entry 260 (class 1259 OID 25436)
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
-- TOC entry 4442 (class 0 OID 0)
-- Dependencies: 260
-- Name: stats_trafic_proveedor_month_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stats_trafic_proveedor_month_id_seq2 OWNED BY public.stats_trafic_proveedor_month.id;


--
-- TOC entry 342 (class 1259 OID 67936)
-- Name: trn_marcas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trn_marcas (
    id integer NOT NULL,
    marca character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.trn_marcas OWNER TO postgres;

--
-- TOC entry 4443 (class 0 OID 0)
-- Dependencies: 342
-- Name: COLUMN trn_marcas.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_marcas.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 4444 (class 0 OID 0)
-- Dependencies: 342
-- Name: COLUMN trn_marcas.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_marcas.updated_at IS 'Timestamp de modificacion del registro';


--
-- TOC entry 4445 (class 0 OID 0)
-- Dependencies: 342
-- Name: COLUMN trn_marcas.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_marcas.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- TOC entry 286 (class 1259 OID 25576)
-- Name: trn_patentes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trn_patentes (
    id bigint NOT NULL,
    transportista_id integer NOT NULL,
    patente character varying(6),
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    marca_id bigint,
    modelo character varying(255),
    hp_motor character varying(255),
    anio integer,
    tipo_id bigint,
    created_by integer,
    updated_by integer
);


ALTER TABLE public.trn_patentes OWNER TO postgres;

--
-- TOC entry 4446 (class 0 OID 0)
-- Dependencies: 286
-- Name: TABLE trn_patentes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.trn_patentes IS 'Tabla de patentes de los transportistas';


--
-- TOC entry 4447 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN trn_patentes.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.id IS 'ID unico del registro';


--
-- TOC entry 4448 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN trn_patentes.transportista_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.transportista_id IS 'ID del transportista al cualk pertenece la patente';


--
-- TOC entry 4449 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN trn_patentes.patente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.patente IS '´´umero de la patente';


--
-- TOC entry 4450 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN trn_patentes.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 4451 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN trn_patentes.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.updated_at IS 'Timestamp de modificacion del registro';


--
-- TOC entry 4452 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN trn_patentes.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- TOC entry 4453 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN trn_patentes.created_by; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.created_by IS 'TCreado por';


--
-- TOC entry 4454 (class 0 OID 0)
-- Dependencies: 286
-- Name: COLUMN trn_patentes.updated_by; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_patentes.updated_by IS 'Actualizado por';


--
-- TOC entry 261 (class 1259 OID 25437)
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
-- TOC entry 262 (class 1259 OID 25438)
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
-- TOC entry 263 (class 1259 OID 25439)
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
-- TOC entry 4455 (class 0 OID 0)
-- Dependencies: 263
-- Name: trn_patentes_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trn_patentes_id_seq2 OWNED BY public.trn_patentes.id;


--
-- TOC entry 264 (class 1259 OID 25440)
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
-- TOC entry 265 (class 1259 OID 25441)
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
-- TOC entry 266 (class 1259 OID 25442)
-- Name: trn_patentes_transportista_id_seq2; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trn_patentes_transportista_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.trn_patentes_transportista_id_seq2 OWNER TO postgres;

--
-- TOC entry 4456 (class 0 OID 0)
-- Dependencies: 266
-- Name: trn_patentes_transportista_id_seq2; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trn_patentes_transportista_id_seq2 OWNED BY public.trn_patentes.transportista_id;


--
-- TOC entry 343 (class 1259 OID 67942)
-- Name: trn_tipo_transporte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trn_tipo_transporte (
    id integer NOT NULL,
    tipo character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);


ALTER TABLE public.trn_tipo_transporte OWNER TO postgres;

--
-- TOC entry 4457 (class 0 OID 0)
-- Dependencies: 343
-- Name: COLUMN trn_tipo_transporte.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_tipo_transporte.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 4458 (class 0 OID 0)
-- Dependencies: 343
-- Name: COLUMN trn_tipo_transporte.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_tipo_transporte.updated_at IS 'Timestamp de modificacion del registro';


--
-- TOC entry 4459 (class 0 OID 0)
-- Dependencies: 343
-- Name: COLUMN trn_tipo_transporte.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_tipo_transporte.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- TOC entry 301 (class 1259 OID 53781)
-- Name: trn_transportista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trn_transportista (
    id integer NOT NULL,
    razon_social character(50) NOT NULL,
    codigo character(50) NOT NULL,
    email character(50) NOT NULL,
    total integer NOT NULL,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    created_by integer,
    updated_by integer
);


ALTER TABLE public.trn_transportista OWNER TO postgres;

--
-- TOC entry 4460 (class 0 OID 0)
-- Dependencies: 301
-- Name: TABLE trn_transportista; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.trn_transportista IS 'Tabla del del transportista';


--
-- TOC entry 4461 (class 0 OID 0)
-- Dependencies: 301
-- Name: COLUMN trn_transportista.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_transportista.id IS 'Identificacion unico del registro';


--
-- TOC entry 4462 (class 0 OID 0)
-- Dependencies: 301
-- Name: COLUMN trn_transportista.razon_social; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_transportista.razon_social IS 'Razon social del proveedor del servicio GPS';


--
-- TOC entry 4463 (class 0 OID 0)
-- Dependencies: 301
-- Name: COLUMN trn_transportista.codigo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_transportista.codigo IS 'Codigo del transportista';


--
-- TOC entry 4464 (class 0 OID 0)
-- Dependencies: 301
-- Name: COLUMN trn_transportista.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_transportista.email IS 'Email del contacto del proveedor del sdervicio GPS';


--
-- TOC entry 4465 (class 0 OID 0)
-- Dependencies: 301
-- Name: COLUMN trn_transportista.total; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_transportista.total IS 'Cantidad total de vehiculos que maneja el proveedor del servicio GPS';


--
-- TOC entry 4466 (class 0 OID 0)
-- Dependencies: 301
-- Name: COLUMN trn_transportista.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_transportista.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 4467 (class 0 OID 0)
-- Dependencies: 301
-- Name: COLUMN trn_transportista.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_transportista.updated_at IS 'Timestamp de actualizacion del registro';


--
-- TOC entry 4468 (class 0 OID 0)
-- Dependencies: 301
-- Name: COLUMN trn_transportista.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_transportista.deleted_at IS 'Timestamp de borrado logico del registro';


--
-- TOC entry 4469 (class 0 OID 0)
-- Dependencies: 301
-- Name: COLUMN trn_transportista.created_by; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_transportista.created_by IS 'Creado por';


--
-- TOC entry 4470 (class 0 OID 0)
-- Dependencies: 301
-- Name: COLUMN trn_transportista.updated_by; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.trn_transportista.updated_by IS 'Actualizado por';


--
-- TOC entry 300 (class 1259 OID 53780)
-- Name: trn_transportista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.trn_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER SEQUENCE public.trn_transportista_id_seq OWNER TO postgres;

--
-- TOC entry 4471 (class 0 OID 0)
-- Dependencies: 300
-- Name: trn_transportista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.trn_transportista_id_seq OWNED BY public.trn_transportista.id;


--
-- TOC entry 289 (class 1259 OID 25962)
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
-- TOC entry 288 (class 1259 OID 25588)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    perfil_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(6) without time zone NOT NULL,
    password character varying(255) NOT NULL,
    avatar text,
    remember_token character varying(100),
    bloqueado boolean DEFAULT false,
    old_psw text,
    two_steps boolean DEFAULT false,
    created_at timestamp(6) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(6) without time zone,
    deleted_at timestamp(6) without time zone,
    activo boolean DEFAULT false,
    vence timestamp without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 4472 (class 0 OID 0)
-- Dependencies: 288
-- Name: TABLE users; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.users IS 'Tabla de usuarios';


--
-- TOC entry 4473 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.id IS 'ID unico del registro';


--
-- TOC entry 4474 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.perfil_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.perfil_id IS 'ID del perfil del usuario';


--
-- TOC entry 4475 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.name IS 'Nombre dek usuario';


--
-- TOC entry 4476 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.email IS 'Emaik del usuario';


--
-- TOC entry 4477 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.email_verified_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.email_verified_at IS 'Timestamp de la verificacion del correo';


--
-- TOC entry 4478 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.password; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.password IS 'Clave del usuario';


--
-- TOC entry 4479 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.avatar; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.avatar IS 'Avatar deñ usuario';


--
-- TOC entry 4480 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.remember_token; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.remember_token IS 'Recordar toalen de usuario';


--
-- TOC entry 4481 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.bloqueado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.bloqueado IS 'Indica si el usuario est´á bloqueado o no';


--
-- TOC entry 4482 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.old_psw; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.old_psw IS 'Clave anterior';


--
-- TOC entry 4483 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.two_steps; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.two_steps IS 'Verificacion de dos factores';


--
-- TOC entry 4484 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.created_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.created_at IS 'Timestamp de creacion del registro';


--
-- TOC entry 4485 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.updated_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.updated_at IS 'Timestamp de modificacion del registro';


--
-- TOC entry 4486 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.deleted_at; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.deleted_at IS 'Timestamp de borrADO LOGICO del registro';


--
-- TOC entry 4487 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.activo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.activo IS 'Indica si el usuario está activo o no';


--
-- TOC entry 4488 (class 0 OID 0)
-- Dependencies: 288
-- Name: COLUMN users.vence; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.users.vence IS 'Timestamp de creacion del registro';


--
-- TOC entry 329 (class 1259 OID 67866)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 25587)
-- Name: users_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 325 (class 1259 OID 62262)
-- Name: v_cant_imei_proveedores; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_cant_imei_proveedores AS
 SELECT gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    count(gps_imei.imei) AS cant_imei
   FROM ((public.gps_imei
     LEFT JOIN public.gps_proveedor ON ((gps_imei.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.trn_patentes ON ((gps_imei.patente_id = trn_patentes.id)))
  GROUP BY gps_proveedor.id, gps_proveedor.razon_social
  ORDER BY (count(gps_imei.imei)) DESC;


ALTER VIEW public.v_cant_imei_proveedores OWNER TO postgres;

--
-- TOC entry 323 (class 1259 OID 62252)
-- Name: v_cant_imei_transportistas; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_cant_imei_transportistas AS
 SELECT trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    count(gps_imei.imei) AS cant_imei
   FROM (public.gps_imei
     LEFT JOIN public.trn_transportista ON ((gps_imei.transportista_id = trn_transportista.id)))
  GROUP BY trn_transportista.id, trn_transportista.razon_social
  ORDER BY (count(gps_imei.imei)) DESC;


ALTER VIEW public.v_cant_imei_transportistas OWNER TO postgres;

--
-- TOC entry 320 (class 1259 OID 62238)
-- Name: v_cant_patentes_proveedores; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_cant_patentes_proveedores AS
 SELECT gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    count(trn_patentes.patente) AS cant_patentes
   FROM ((public.gps_imei
     LEFT JOIN public.gps_proveedor ON ((gps_imei.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.trn_patentes ON ((gps_imei.patente_id = trn_patentes.id)))
  GROUP BY gps_proveedor.id, gps_proveedor.razon_social
  ORDER BY (count(trn_patentes.patente)) DESC;


ALTER VIEW public.v_cant_patentes_proveedores OWNER TO postgres;

--
-- TOC entry 318 (class 1259 OID 62229)
-- Name: v_cant_patentes_transportistas; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_cant_patentes_transportistas AS
 SELECT trn_patentes.transportista_id,
    trn_transportista.razon_social AS transportista,
    count(trn_patentes.patente) AS cant_patentes
   FROM (public.trn_patentes
     LEFT JOIN public.trn_transportista ON ((trn_patentes.transportista_id = trn_transportista.id)))
  GROUP BY trn_patentes.transportista_id, trn_transportista.razon_social
  ORDER BY (count(trn_patentes.patente)) DESC;


ALTER VIEW public.v_cant_patentes_transportistas OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 62148)
-- Name: v_desordenadas_dia; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_desordenadas_dia AS
 SELECT desordenadas_dia.id,
    trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    trn_patentes.id AS patente_id,
    trn_patentes.patente,
    gps_imei.id AS imei_id,
    gps_imei.imei,
    desordenadas_dia.fecha,
    desordenadas_dia.dia,
    desordenadas_dia.cant
   FROM ((((public.desordenadas_dia
     LEFT JOIN public.trn_transportista ON ((desordenadas_dia.transportista_id = trn_transportista.id)))
     LEFT JOIN public.trn_patentes ON ((desordenadas_dia.patente_id = trn_patentes.id)))
     LEFT JOIN public.gps_proveedor ON ((desordenadas_dia.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.gps_imei ON ((desordenadas_dia.imei_id = gps_imei.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, trn_patentes.patente, gps_imei.imei, desordenadas_dia.fecha, desordenadas_dia.dia;


ALTER VIEW public.v_desordenadas_dia OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 62153)
-- Name: v_desordenadas_hora; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_desordenadas_hora AS
 SELECT desordenadas_hora.id,
    trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    trn_patentes.id AS patente_id,
    trn_patentes.patente,
    gps_imei.id AS imei_id,
    gps_imei.imei,
    desordenadas_hora.fecha,
    desordenadas_hora.hora,
    desordenadas_hora.cant
   FROM ((((public.desordenadas_hora
     LEFT JOIN public.trn_transportista ON ((desordenadas_hora.transportista_id = trn_transportista.id)))
     LEFT JOIN public.trn_patentes ON ((desordenadas_hora.patente_id = trn_patentes.id)))
     LEFT JOIN public.gps_proveedor ON ((desordenadas_hora.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.gps_imei ON ((desordenadas_hora.imei_id = gps_imei.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, trn_patentes.patente, gps_imei.imei, desordenadas_hora.fecha, desordenadas_hora.hora;


ALTER VIEW public.v_desordenadas_hora OWNER TO postgres;

--
-- TOC entry 304 (class 1259 OID 62158)
-- Name: v_desordenadas_mes; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_desordenadas_mes AS
 SELECT desordenadas_mes.id,
    trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    trn_patentes.id AS patente_id,
    trn_patentes.patente,
    gps_imei.id AS imei_id,
    gps_imei.imei,
    desordenadas_mes.fecha,
    desordenadas_mes.mes,
    desordenadas_mes.cant
   FROM ((((public.desordenadas_mes
     LEFT JOIN public.trn_transportista ON ((desordenadas_mes.transportista_id = trn_transportista.id)))
     LEFT JOIN public.trn_patentes ON ((desordenadas_mes.patente_id = trn_patentes.id)))
     LEFT JOIN public.gps_proveedor ON ((desordenadas_mes.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.gps_imei ON ((desordenadas_mes.imei_id = gps_imei.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, trn_patentes.patente, gps_imei.imei, desordenadas_mes.fecha, desordenadas_mes.mes;


ALTER VIEW public.v_desordenadas_mes OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 62163)
-- Name: v_desordenadas_semana; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_desordenadas_semana AS
 SELECT desordenadas_semana.id,
    trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    trn_patentes.id AS patente_id,
    trn_patentes.patente,
    gps_imei.id AS imei_id,
    gps_imei.imei,
    desordenadas_semana.fecha,
    desordenadas_semana.semana,
    desordenadas_semana.cant
   FROM ((((public.desordenadas_semana
     LEFT JOIN public.trn_transportista ON ((desordenadas_semana.transportista_id = trn_transportista.id)))
     LEFT JOIN public.trn_patentes ON ((desordenadas_semana.patente_id = trn_patentes.id)))
     LEFT JOIN public.gps_proveedor ON ((desordenadas_semana.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.gps_imei ON ((desordenadas_semana.imei_id = gps_imei.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, trn_patentes.patente, gps_imei.imei, desordenadas_semana.fecha, desordenadas_semana.semana;


ALTER VIEW public.v_desordenadas_semana OWNER TO postgres;

--
-- TOC entry 321 (class 1259 OID 62243)
-- Name: v_imei_patentes_transportistas; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_imei_patentes_transportistas AS
 SELECT trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    trn_patentes.id AS patente_id,
    trn_patentes.patente,
    gps_imei.id,
    gps_imei.imei
   FROM ((public.gps_imei
     LEFT JOIN public.trn_patentes ON ((gps_imei.patente_id = trn_patentes.id)))
     LEFT JOIN public.trn_transportista ON ((gps_imei.transportista_id = trn_transportista.id)))
  ORDER BY trn_transportista.razon_social, trn_patentes.patente, gps_imei.imei;


ALTER VIEW public.v_imei_patentes_transportistas OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 62267)
-- Name: v_imei_patentes_transportistas_proveedores; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_imei_patentes_transportistas_proveedores AS
 SELECT trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    trn_patentes.id AS patente_id,
    trn_patentes.patente,
    gps_imei.id,
    gps_imei.imei
   FROM (((public.gps_imei
     LEFT JOIN public.gps_proveedor ON ((gps_imei.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.trn_patentes ON ((gps_imei.patente_id = trn_patentes.id)))
     LEFT JOIN public.trn_transportista ON ((gps_imei.transportista_id = trn_transportista.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, trn_patentes.patente, gps_imei.imei;


ALTER VIEW public.v_imei_patentes_transportistas_proveedores OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 62257)
-- Name: v_imei_proveedores; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_imei_proveedores AS
 SELECT gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    trn_patentes.id AS patente_id,
    trn_patentes.patente,
    gps_imei.id,
    gps_imei.imei
   FROM ((public.gps_imei
     LEFT JOIN public.gps_proveedor ON ((gps_imei.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.trn_patentes ON ((gps_imei.patente_id = trn_patentes.id)))
  ORDER BY gps_proveedor.razon_social, trn_patentes.patente, gps_imei.imei;


ALTER VIEW public.v_imei_proveedores OWNER TO postgres;

--
-- TOC entry 322 (class 1259 OID 62248)
-- Name: v_imei_transportistas; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_imei_transportistas AS
 SELECT trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_imei.id AS imei_id,
    gps_imei.imei
   FROM (public.gps_imei
     LEFT JOIN public.trn_transportista ON ((gps_imei.transportista_id = trn_transportista.id)))
  ORDER BY trn_transportista.razon_social, gps_imei.imei;


ALTER VIEW public.v_imei_transportistas OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 62233)
-- Name: v_patentes_proveedores; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_patentes_proveedores AS
 SELECT gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    trn_patentes.id AS patente_id,
    trn_patentes.patente
   FROM ((public.gps_imei
     LEFT JOIN public.gps_proveedor ON ((gps_imei.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.trn_patentes ON ((gps_imei.patente_id = trn_patentes.id)))
  ORDER BY gps_proveedor.razon_social, trn_patentes.patente;


ALTER VIEW public.v_patentes_proveedores OWNER TO postgres;

--
-- TOC entry 306 (class 1259 OID 62168)
-- Name: v_stats_gps_dia_patente; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_gps_dia_patente AS
 SELECT stats_gps_dia_patente.id,
    trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    trn_patentes.id AS patente_id,
    trn_patentes.patente,
    gps_imei.id AS imei_id,
    gps_imei.imei,
    stats_gps_dia_patente.fecha,
    stats_gps_dia_patente.dia,
    stats_gps_dia_patente.frecuencia_motor_on,
    stats_gps_dia_patente.frecuencia_motor_off,
    stats_gps_dia_patente.latencia,
    stats_gps_dia_patente.q_patetentes_no_ign,
    stats_gps_dia_patente.q_patentes_no_deteccion,
    stats_gps_dia_patente.q_desordenadas
   FROM ((((public.stats_gps_dia_patente
     LEFT JOIN public.trn_patentes ON ((stats_gps_dia_patente.patente_id = trn_patentes.id)))
     LEFT JOIN public.trn_transportista ON ((stats_gps_dia_patente.transportista_id = trn_transportista.id)))
     LEFT JOIN public.gps_proveedor ON ((stats_gps_dia_patente.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.gps_imei ON ((stats_gps_dia_patente.imei_id = gps_imei.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, trn_patentes.patente, gps_imei.imei;


ALTER VIEW public.v_stats_gps_dia_patente OWNER TO postgres;

--
-- TOC entry 346 (class 1259 OID 68082)
-- Name: v_stats_gps_dia_transportista; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_gps_dia_transportista AS
 SELECT stats_gps_dia_transportista.id,
    trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    stats_gps_dia_transportista.fecha,
    stats_gps_dia_transportista.dia,
    stats_gps_dia_transportista.frecuencia_motor_on,
    stats_gps_dia_transportista.frecuencia_motor_off,
    stats_gps_dia_transportista.latencia,
    stats_gps_dia_transportista.q_patetentes_no_ign,
    stats_gps_dia_transportista.q_patentes_no_deteccion,
    stats_gps_dia_transportista.q_desordenadas
   FROM ((public.stats_gps_dia_transportista
     LEFT JOIN public.trn_transportista ON ((stats_gps_dia_transportista.transportista_id = trn_transportista.id)))
     LEFT JOIN public.gps_proveedor ON ((stats_gps_dia_transportista.proveedor_id = gps_proveedor.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, stats_gps_dia_transportista.fecha, stats_gps_dia_transportista.dia;


ALTER VIEW public.v_stats_gps_dia_transportista OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 62173)
-- Name: v_stats_gps_hora_patente; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_gps_hora_patente AS
 SELECT stats_gps_hora_patente.id,
    trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    trn_patentes.id AS patente_id,
    trn_patentes.patente,
    gps_imei.id AS imei_id,
    gps_imei.imei,
    stats_gps_hora_patente.fecha,
    stats_gps_hora_patente.hora,
    stats_gps_hora_patente.frecuencia_motor_on,
    stats_gps_hora_patente.frecuencia_motor_off,
    stats_gps_hora_patente.latencia,
    stats_gps_hora_patente.q_patetentes_no_ign,
    stats_gps_hora_patente.q_patentes_no_deteccion,
    stats_gps_hora_patente.q_desordenadas
   FROM ((((public.stats_gps_hora_patente
     LEFT JOIN public.trn_patentes ON ((stats_gps_hora_patente.patente_id = trn_patentes.id)))
     LEFT JOIN public.trn_transportista ON ((stats_gps_hora_patente.transportista_id = trn_transportista.id)))
     LEFT JOIN public.gps_proveedor ON ((stats_gps_hora_patente.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.gps_imei ON ((stats_gps_hora_patente.imei_id = gps_imei.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, trn_patentes.patente, gps_imei.imei;


ALTER VIEW public.v_stats_gps_hora_patente OWNER TO postgres;

--
-- TOC entry 310 (class 1259 OID 62193)
-- Name: v_stats_gps_hora_transportista; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_gps_hora_transportista AS
 SELECT stats_gps_hora_transportista.id,
    trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    stats_gps_hora_transportista.fecha,
    stats_gps_hora_transportista.hora,
    stats_gps_hora_transportista.frecuencia_motor_on,
    stats_gps_hora_transportista.frecuencia_motor_off,
    stats_gps_hora_transportista.latencia,
    stats_gps_hora_transportista.q_patetentes_no_ign,
    stats_gps_hora_transportista.q_patentes_no_deteccion,
    stats_gps_hora_transportista.q_desordenadas
   FROM ((public.stats_gps_hora_transportista
     LEFT JOIN public.trn_transportista ON ((stats_gps_hora_transportista.transportista_id = trn_transportista.id)))
     LEFT JOIN public.gps_proveedor ON ((stats_gps_hora_transportista.proveedor_id = gps_proveedor.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, stats_gps_hora_transportista.fecha, stats_gps_hora_transportista.hora;


ALTER VIEW public.v_stats_gps_hora_transportista OWNER TO postgres;

--
-- TOC entry 308 (class 1259 OID 62178)
-- Name: v_stats_gps_mes_patente; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_gps_mes_patente AS
 SELECT stats_gps_mes_patente.id,
    trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    trn_patentes.id AS patente_id,
    trn_patentes.patente,
    gps_imei.id AS imei_id,
    gps_imei.imei,
    stats_gps_mes_patente.fecha,
    stats_gps_mes_patente.mes,
    stats_gps_mes_patente.frecuencia_motor_on,
    stats_gps_mes_patente.frecuencia_motor_off,
    stats_gps_mes_patente.latencia,
    stats_gps_mes_patente.q_patetentes_no_ign,
    stats_gps_mes_patente.q_patentes_no_deteccion,
    stats_gps_mes_patente.q_desordenadas
   FROM ((((public.stats_gps_mes_patente
     LEFT JOIN public.trn_patentes ON ((stats_gps_mes_patente.patente_id = trn_patentes.id)))
     LEFT JOIN public.trn_transportista ON ((stats_gps_mes_patente.transportista_id = trn_transportista.id)))
     LEFT JOIN public.gps_proveedor ON ((stats_gps_mes_patente.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.gps_imei ON ((stats_gps_mes_patente.imei_id = gps_imei.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, trn_patentes.patente, gps_imei.imei;


ALTER VIEW public.v_stats_gps_mes_patente OWNER TO postgres;

--
-- TOC entry 311 (class 1259 OID 62198)
-- Name: v_stats_gps_mes_transportista; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_gps_mes_transportista AS
 SELECT trn_transportista.razon_social AS transportista,
    gps_proveedor.razon_social AS proveedor,
    stats_gps_mes_transportista.fecha,
    stats_gps_mes_transportista.mes,
    stats_gps_mes_transportista.frecuencia_motor_on,
    stats_gps_mes_transportista.frecuencia_motor_off,
    stats_gps_mes_transportista.latencia,
    stats_gps_mes_transportista.q_patetentes_no_ign,
    stats_gps_mes_transportista.q_patentes_no_deteccion,
    stats_gps_mes_transportista.q_desordenadas
   FROM ((public.stats_gps_mes_transportista
     LEFT JOIN public.trn_transportista ON ((stats_gps_mes_transportista.transportista_id = trn_transportista.id)))
     LEFT JOIN public.gps_proveedor ON ((stats_gps_mes_transportista.proveedor_id = gps_proveedor.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, stats_gps_mes_transportista.fecha, stats_gps_mes_transportista.mes;


ALTER VIEW public.v_stats_gps_mes_transportista OWNER TO postgres;

--
-- TOC entry 347 (class 1259 OID 68088)
-- Name: v_stats_gps_proveedor_dia; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_gps_proveedor_dia AS
 SELECT gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    stats_gps_proveedor_dia.patentes_total,
    stats_gps_proveedor_dia.fecha,
    stats_gps_proveedor_dia.dia,
    stats_gps_proveedor_dia.frecuencia_motor_on,
    stats_gps_proveedor_dia.frecuencia_motor_off,
    stats_gps_proveedor_dia.latencia,
    stats_gps_proveedor_dia.q_patetentes_no_ign,
    stats_gps_proveedor_dia.q_patentes_no_deteccion,
    stats_gps_proveedor_dia.q_desordenadas
   FROM (public.stats_gps_proveedor_dia
     LEFT JOIN public.gps_proveedor ON ((stats_gps_proveedor_dia.proveedor_id = gps_proveedor.id)))
  ORDER BY gps_proveedor.razon_social, stats_gps_proveedor_dia.fecha, stats_gps_proveedor_dia.dia;


ALTER VIEW public.v_stats_gps_proveedor_dia OWNER TO postgres;

--
-- TOC entry 348 (class 1259 OID 68093)
-- Name: v_stats_gps_proveedor_hora; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_gps_proveedor_hora AS
 SELECT gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    stats_gps_proveedor_hora.patentes_total,
    stats_gps_proveedor_hora.fecha,
    stats_gps_proveedor_hora.hora,
    stats_gps_proveedor_hora.frecuencia_motor_on,
    stats_gps_proveedor_hora.frecuencia_motor_off,
    stats_gps_proveedor_hora.latencia,
    stats_gps_proveedor_hora.q_patetentes_no_ign,
    stats_gps_proveedor_hora.q_patentes_no_deteccion,
    stats_gps_proveedor_hora.q_desordenadas
   FROM (public.stats_gps_proveedor_hora
     LEFT JOIN public.gps_proveedor ON ((stats_gps_proveedor_hora.proveedor_id = gps_proveedor.id)))
  ORDER BY gps_proveedor.razon_social, stats_gps_proveedor_hora.fecha, stats_gps_proveedor_hora.hora;


ALTER VIEW public.v_stats_gps_proveedor_hora OWNER TO postgres;

--
-- TOC entry 349 (class 1259 OID 68098)
-- Name: v_stats_gps_proveedor_mes; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_gps_proveedor_mes AS
 SELECT gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    stats_gps_proveedor_mes.patentes_total,
    stats_gps_proveedor_mes.fecha,
    stats_gps_proveedor_mes.mes,
    stats_gps_proveedor_mes.frecuencia_motor_on,
    stats_gps_proveedor_mes.frecuencia_motor_off,
    stats_gps_proveedor_mes.latencia,
    stats_gps_proveedor_mes.q_patetentes_no_ign,
    stats_gps_proveedor_mes.q_patentes_no_deteccion,
    stats_gps_proveedor_mes.q_desordenadas
   FROM (public.stats_gps_proveedor_mes
     LEFT JOIN public.gps_proveedor ON ((stats_gps_proveedor_mes.proveedor_id = gps_proveedor.id)))
  ORDER BY gps_proveedor.razon_social, stats_gps_proveedor_mes.fecha, stats_gps_proveedor_mes.mes;


ALTER VIEW public.v_stats_gps_proveedor_mes OWNER TO postgres;

--
-- TOC entry 350 (class 1259 OID 68103)
-- Name: v_stats_gps_proveedor_semana; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_gps_proveedor_semana AS
 SELECT gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    stats_gps_proveedor_semana.patentes_total,
    stats_gps_proveedor_semana.fecha,
    stats_gps_proveedor_semana.semana,
    stats_gps_proveedor_semana.frecuencia_motor_on,
    stats_gps_proveedor_semana.frecuencia_motor_off,
    stats_gps_proveedor_semana.latencia,
    stats_gps_proveedor_semana.q_patetentes_no_ign,
    stats_gps_proveedor_semana.q_patentes_no_deteccion,
    stats_gps_proveedor_semana.q_desordenadas
   FROM (public.stats_gps_proveedor_semana
     LEFT JOIN public.gps_proveedor ON ((stats_gps_proveedor_semana.proveedor_id = gps_proveedor.id)))
  ORDER BY gps_proveedor.razon_social, stats_gps_proveedor_semana.fecha, stats_gps_proveedor_semana.semana;


ALTER VIEW public.v_stats_gps_proveedor_semana OWNER TO postgres;

--
-- TOC entry 309 (class 1259 OID 62183)
-- Name: v_stats_gps_semana_patente; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_gps_semana_patente AS
 SELECT stats_gps_semana_patente.id,
    trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    trn_patentes.id AS patente_id,
    trn_patentes.patente,
    gps_imei.id AS imei_id,
    gps_imei.imei,
    stats_gps_semana_patente.fecha,
    stats_gps_semana_patente.semana,
    stats_gps_semana_patente.frecuencia_motor_on,
    stats_gps_semana_patente.frecuencia_motor_off,
    stats_gps_semana_patente.latencia,
    stats_gps_semana_patente.q_patetentes_no_ign,
    stats_gps_semana_patente.q_patentes_no_deteccion,
    stats_gps_semana_patente.q_desordenadas
   FROM ((((public.stats_gps_semana_patente
     LEFT JOIN public.trn_patentes ON ((stats_gps_semana_patente.patente_id = trn_patentes.id)))
     LEFT JOIN public.trn_transportista ON ((stats_gps_semana_patente.transportista_id = trn_transportista.id)))
     LEFT JOIN public.gps_proveedor ON ((stats_gps_semana_patente.proveedor_id = gps_proveedor.id)))
     LEFT JOIN public.gps_imei ON ((stats_gps_semana_patente.imei_id = gps_imei.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, trn_patentes.patente, gps_imei.imei;


ALTER VIEW public.v_stats_gps_semana_patente OWNER TO postgres;

--
-- TOC entry 312 (class 1259 OID 62203)
-- Name: v_stats_gps_semana_transportista; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_gps_semana_transportista AS
 SELECT stats_gps_semana_transportista.id,
    trn_transportista.id AS transportista_id,
    trn_transportista.razon_social AS transportista,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    stats_gps_semana_transportista.fecha,
    stats_gps_semana_transportista.semana,
    stats_gps_semana_transportista.frecuencia_motor_on,
    stats_gps_semana_transportista.frecuencia_motor_off,
    stats_gps_semana_transportista.latencia,
    stats_gps_semana_transportista.q_patetentes_no_ign,
    stats_gps_semana_transportista.q_patentes_no_deteccion,
    stats_gps_semana_transportista.q_desordenadas
   FROM ((public.stats_gps_semana_transportista
     LEFT JOIN public.trn_transportista ON ((stats_gps_semana_transportista.transportista_id = trn_transportista.id)))
     LEFT JOIN public.gps_proveedor ON ((stats_gps_semana_transportista.proveedor_id = gps_proveedor.id)))
  ORDER BY trn_transportista.razon_social, gps_proveedor.razon_social, stats_gps_semana_transportista.fecha, stats_gps_semana_transportista.semana;


ALTER VIEW public.v_stats_gps_semana_transportista OWNER TO postgres;

--
-- TOC entry 313 (class 1259 OID 62208)
-- Name: v_stats_trafic_proveedor_day; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_trafic_proveedor_day AS
 SELECT stats_trafic_proveedor_day.id,
    gps_proveedor.id AS proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    stats_trafic_proveedor_day.fecha,
    stats_trafic_proveedor_day.cantidad
   FROM (public.stats_trafic_proveedor_day
     JOIN public.gps_proveedor ON ((stats_trafic_proveedor_day.proveedor_id = gps_proveedor.id)));


ALTER VIEW public.v_stats_trafic_proveedor_day OWNER TO postgres;

--
-- TOC entry 314 (class 1259 OID 62212)
-- Name: v_stats_trafic_proveedor_hour; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_trafic_proveedor_hour AS
 SELECT stats_trafic_proveedor_hour.id,
    stats_trafic_proveedor_hour.proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    stats_trafic_proveedor_hour.fecha,
    stats_trafic_proveedor_hour.hora,
    stats_trafic_proveedor_hour.cantidad
   FROM (public.stats_trafic_proveedor_hour
     LEFT JOIN public.gps_proveedor ON ((stats_trafic_proveedor_hour.proveedor_id = gps_proveedor.id)))
  ORDER BY gps_proveedor.razon_social, stats_trafic_proveedor_hour.fecha, stats_trafic_proveedor_hour.hora;


ALTER VIEW public.v_stats_trafic_proveedor_hour OWNER TO postgres;

--
-- TOC entry 315 (class 1259 OID 62216)
-- Name: v_stats_trafic_proveedor_min; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_trafic_proveedor_min AS
 SELECT stats_trafic_proveedor_min.id,
    stats_trafic_proveedor_min.proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    stats_trafic_proveedor_min.fecha,
    stats_trafic_proveedor_min.hora,
    stats_trafic_proveedor_min.minuto,
    stats_trafic_proveedor_min.cantidad
   FROM (public.stats_trafic_proveedor_min
     LEFT JOIN public.gps_proveedor ON ((stats_trafic_proveedor_min.proveedor_id = gps_proveedor.id)))
  ORDER BY gps_proveedor.razon_social, stats_trafic_proveedor_min.fecha, stats_trafic_proveedor_min.hora, stats_trafic_proveedor_min.minuto;


ALTER VIEW public.v_stats_trafic_proveedor_min OWNER TO postgres;

--
-- TOC entry 316 (class 1259 OID 62221)
-- Name: v_stats_trafic_proveedor_month; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_stats_trafic_proveedor_month AS
 SELECT stats_trafic_proveedor_month.id,
    stats_trafic_proveedor_month.proveedor_id,
    gps_proveedor.razon_social AS proveedor,
    stats_trafic_proveedor_month.anio,
    stats_trafic_proveedor_month.mes,
    stats_trafic_proveedor_month.cantidad
   FROM (public.stats_trafic_proveedor_month
     LEFT JOIN public.gps_proveedor ON ((stats_trafic_proveedor_month.proveedor_id = gps_proveedor.id)))
  ORDER BY gps_proveedor.razon_social, stats_trafic_proveedor_month.anio, stats_trafic_proveedor_month.mes;


ALTER VIEW public.v_stats_trafic_proveedor_month OWNER TO postgres;

--
-- TOC entry 317 (class 1259 OID 62225)
-- Name: v_transportistas_patentes; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.v_transportistas_patentes AS
 SELECT trn_patentes.id,
    trn_patentes.transportista_id,
    trn_transportista.razon_social AS transportista,
    trn_patentes.patente
   FROM (public.trn_patentes
     LEFT JOIN public.trn_transportista ON ((trn_patentes.transportista_id = trn_transportista.id)))
  ORDER BY trn_transportista.razon_social, trn_patentes.patente;


ALTER VIEW public.v_transportistas_patentes OWNER TO postgres;

--
-- TOC entry 3545 (class 2604 OID 25448)
-- Name: cnf_colores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cnf_colores ALTER COLUMN id SET DEFAULT nextval('public.cnf_colores_id_seq'::regclass);


--
-- TOC entry 3596 (class 2604 OID 53143)
-- Name: cnf_tipo_accion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cnf_tipo_accion ALTER COLUMN id SET DEFAULT nextval('public.cnf_tipo_accion_id_seq'::regclass);


--
-- TOC entry 3597 (class 2604 OID 53150)
-- Name: cnf_vistas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cnf_vistas ALTER COLUMN id SET DEFAULT nextval('public.cnf_vistas_id_seq'::regclass);


--
-- TOC entry 3547 (class 2604 OID 25471)
-- Name: desordenadas_dia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_dia ALTER COLUMN id SET DEFAULT nextval('public.desordenadas_dia_id_seq'::regclass);


--
-- TOC entry 3549 (class 2604 OID 25476)
-- Name: desordenadas_hora id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_hora ALTER COLUMN id SET DEFAULT nextval('public.desordenadas_hora_id_seq'::regclass);


--
-- TOC entry 3551 (class 2604 OID 25481)
-- Name: desordenadas_mes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_mes ALTER COLUMN id SET DEFAULT nextval('public.desordenadas_mes_id_seq'::regclass);


--
-- TOC entry 3553 (class 2604 OID 25486)
-- Name: desordenadas_semana id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_semana ALTER COLUMN id SET DEFAULT nextval('public.desordenadas_semana_id_seq'::regclass);


--
-- TOC entry 3594 (class 2604 OID 25969)
-- Name: gb_perfiles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gb_perfiles ALTER COLUMN id SET DEFAULT nextval('public.gb_perfiles_id_seq2'::regclass);


--
-- TOC entry 3555 (class 2604 OID 25491)
-- Name: gps_imei id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei ALTER COLUMN id SET DEFAULT nextval('public.gps_imei_id_seq2'::regclass);


--
-- TOC entry 3556 (class 2604 OID 25492)
-- Name: gps_imei transportista_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei ALTER COLUMN transportista_id SET DEFAULT nextval('public.gps_imei_transportista_id_seq2'::regclass);


--
-- TOC entry 3558 (class 2604 OID 25497)
-- Name: gps_proveedor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_proveedor ALTER COLUMN id SET DEFAULT nextval('public.gps_proveedor_id_seq2'::regclass);


--
-- TOC entry 3560 (class 2604 OID 25502)
-- Name: gps_real_time id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time ALTER COLUMN id SET DEFAULT nextval('public.gps_real_time_id_seq2'::regclass);


--
-- TOC entry 3599 (class 2604 OID 53163)
-- Name: logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs ALTER COLUMN id SET DEFAULT nextval('public.logs_id_seq'::regclass);


--
-- TOC entry 3601 (class 2604 OID 53188)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 3565 (class 2604 OID 25519)
-- Name: stats_gps_dia_patente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_dia_patente_id_seq'::regclass);


--
-- TOC entry 3567 (class 2604 OID 25529)
-- Name: stats_gps_hora_patente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_patente ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_hora_patente_id_seq'::regclass);


--
-- TOC entry 3569 (class 2604 OID 25534)
-- Name: stats_gps_hora_transportista id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_transportista ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_hora_transportista_id_seq'::regclass);


--
-- TOC entry 3571 (class 2604 OID 25539)
-- Name: stats_gps_mes_patente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_patente ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_mes_patente_id_seq'::regclass);


--
-- TOC entry 3573 (class 2604 OID 25544)
-- Name: stats_gps_mes_transportista id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_transportista ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_mes_transportista_id_seq'::regclass);


--
-- TOC entry 3575 (class 2604 OID 25549)
-- Name: stats_gps_semana_patente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_patente ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_semana_patente_id_seq'::regclass);


--
-- TOC entry 3577 (class 2604 OID 25554)
-- Name: stats_gps_semana_transportista id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_transportista ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_semana_transportista_id_seq'::regclass);


--
-- TOC entry 3579 (class 2604 OID 25559)
-- Name: stats_trafic_proveedor_day id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_day ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_day_id_seq2'::regclass);


--
-- TOC entry 3581 (class 2604 OID 25564)
-- Name: stats_trafic_proveedor_hour id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_hour ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_hour_id_seq2'::regclass);


--
-- TOC entry 3583 (class 2604 OID 25569)
-- Name: stats_trafic_proveedor_min id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_min ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_min_id_seq2'::regclass);


--
-- TOC entry 3585 (class 2604 OID 25574)
-- Name: stats_trafic_proveedor_month id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_month ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_month_id_seq2'::regclass);


--
-- TOC entry 3587 (class 2604 OID 25579)
-- Name: trn_patentes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_patentes ALTER COLUMN id SET DEFAULT nextval('public.trn_patentes_id_seq2'::regclass);


--
-- TOC entry 3588 (class 2604 OID 25580)
-- Name: trn_patentes transportista_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_patentes ALTER COLUMN transportista_id SET DEFAULT nextval('public.trn_patentes_transportista_id_seq2'::regclass);


--
-- TOC entry 3602 (class 2604 OID 53784)
-- Name: trn_transportista id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_transportista ALTER COLUMN id SET DEFAULT nextval('public.trn_transportista_id_seq'::regclass);


--
-- TOC entry 4028 (class 0 OID 25445)
-- Dependencies: 267
-- Data for Name: cnf_colores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cnf_colores (id, inicio, final, color, descripcion, deleted_at, created_at, updated_at, unidad) FROM stdin;
\.


--
-- TOC entry 4067 (class 0 OID 67877)
-- Dependencies: 331
-- Data for Name: cnf_perfiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cnf_perfiles (id, nombre, permisos, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4054 (class 0 OID 53140)
-- Dependencies: 293
-- Data for Name: cnf_tipo_accion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cnf_tipo_accion (id, text) FROM stdin;
\.


--
-- TOC entry 4056 (class 0 OID 53147)
-- Dependencies: 295
-- Data for Name: cnf_vistas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cnf_vistas (id, modulo, vista, fecha_creacion) FROM stdin;
\.


--
-- TOC entry 4029 (class 0 OID 25468)
-- Dependencies: 268
-- Data for Name: desordenadas_dia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.desordenadas_dia (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, dia, cant, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4030 (class 0 OID 25473)
-- Dependencies: 269
-- Data for Name: desordenadas_hora; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.desordenadas_hora (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, hora, cant, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4031 (class 0 OID 25478)
-- Dependencies: 270
-- Data for Name: desordenadas_mes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.desordenadas_mes (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, mes, cant, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4032 (class 0 OID 25483)
-- Dependencies: 271
-- Data for Name: desordenadas_semana; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.desordenadas_semana (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, semana, cant, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4052 (class 0 OID 25966)
-- Dependencies: 291
-- Data for Name: gb_perfiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gb_perfiles (id, nombre, permisos, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4033 (class 0 OID 25488)
-- Dependencies: 272
-- Data for Name: gps_imei; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gps_imei (id, transportista_id, proveedor_id, patente_id, imei, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4034 (class 0 OID 25494)
-- Dependencies: 273
-- Data for Name: gps_proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gps_proveedor (id, razon_social, email, total, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4035 (class 0 OID 25499)
-- Dependencies: 274
-- Data for Name: gps_real_time; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gps_real_time (id, rejected, imei_id, transportista_id, proveedor_id, patente_id, timestamp_gps, timestamp_sys, frecuencia, latencia, ordenada, motor, created_at, updated_at, deleted_at, raw_data) FROM stdin;
\.


--
-- TOC entry 4058 (class 0 OID 53160)
-- Dependencies: 297
-- Data for Name: logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.logs (id, vista_id, descripcion, datos_previos, datos_nuevos, usuario_id, accion_id, fecha_creacion) FROM stdin;
\.


--
-- TOC entry 4060 (class 0 OID 53185)
-- Dependencies: 299
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
\.


--
-- TOC entry 4069 (class 0 OID 67886)
-- Dependencies: 333
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 4036 (class 0 OID 25516)
-- Dependencies: 275
-- Data for Name: stats_gps_dia_patente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_dia_patente (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, dia, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at, total_cadenas, total_cadenas_problemas) FROM stdin;
\.


--
-- TOC entry 4081 (class 0 OID 68045)
-- Dependencies: 345
-- Data for Name: stats_gps_dia_transportista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_dia_transportista (id, transportista_id, proveedor_id, fecha, dia, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4037 (class 0 OID 25526)
-- Dependencies: 276
-- Data for Name: stats_gps_hora_patente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_hora_patente (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, hora, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at, total_cadenas, total_cadenas_problemas) FROM stdin;
\.


--
-- TOC entry 4038 (class 0 OID 25531)
-- Dependencies: 277
-- Data for Name: stats_gps_hora_transportista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_hora_transportista (id, transportista_id, proveedor_id, fecha, hora, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4039 (class 0 OID 25536)
-- Dependencies: 278
-- Data for Name: stats_gps_mes_patente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_mes_patente (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, mes, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at, total_cadenas, total_patentes_problemas) FROM stdin;
\.


--
-- TOC entry 4040 (class 0 OID 25541)
-- Dependencies: 279
-- Data for Name: stats_gps_mes_transportista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_mes_transportista (id, transportista_id, proveedor_id, fecha, mes, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4073 (class 0 OID 67902)
-- Dependencies: 337
-- Data for Name: stats_gps_proveedor_dia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_proveedor_dia (id, patentes_total, proveedor_id, fecha, dia, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4071 (class 0 OID 67895)
-- Dependencies: 335
-- Data for Name: stats_gps_proveedor_hora; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_proveedor_hora (id, patentes_total, proveedor_id, fecha, hora, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4075 (class 0 OID 67916)
-- Dependencies: 339
-- Data for Name: stats_gps_proveedor_mes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_proveedor_mes (id, patentes_total, proveedor_id, fecha, mes, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4077 (class 0 OID 67929)
-- Dependencies: 341
-- Data for Name: stats_gps_proveedor_semana; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_proveedor_semana (id, patentes_total, proveedor_id, fecha, semana, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4041 (class 0 OID 25546)
-- Dependencies: 280
-- Data for Name: stats_gps_semana_patente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_semana_patente (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, semana, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at, total_cadenas, total_cadenas_problemas) FROM stdin;
\.


--
-- TOC entry 4042 (class 0 OID 25551)
-- Dependencies: 281
-- Data for Name: stats_gps_semana_transportista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_gps_semana_transportista (id, transportista_id, proveedor_id, fecha, semana, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4043 (class 0 OID 25556)
-- Dependencies: 282
-- Data for Name: stats_trafic_proveedor_day; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_trafic_proveedor_day (id, proveedor_id, fecha, cantidad, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4044 (class 0 OID 25561)
-- Dependencies: 283
-- Data for Name: stats_trafic_proveedor_hour; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_trafic_proveedor_hour (id, proveedor_id, fecha, hora, cantidad, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4045 (class 0 OID 25566)
-- Dependencies: 284
-- Data for Name: stats_trafic_proveedor_min; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_trafic_proveedor_min (id, proveedor_id, fecha, hora, minuto, motor, cantidad, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4046 (class 0 OID 25571)
-- Dependencies: 285
-- Data for Name: stats_trafic_proveedor_month; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stats_trafic_proveedor_month (id, proveedor_id, anio, mes, cantidad, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4078 (class 0 OID 67936)
-- Dependencies: 342
-- Data for Name: trn_marcas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trn_marcas (id, marca, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4047 (class 0 OID 25576)
-- Dependencies: 286
-- Data for Name: trn_patentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trn_patentes (id, transportista_id, patente, created_at, updated_at, deleted_at, marca_id, modelo, hp_motor, anio, tipo_id, created_by, updated_by) FROM stdin;
\.


--
-- TOC entry 4079 (class 0 OID 67942)
-- Dependencies: 343
-- Data for Name: trn_tipo_transporte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trn_tipo_transporte (id, tipo, created_at, updated_at, deleted_at) FROM stdin;
\.


--
-- TOC entry 4062 (class 0 OID 53781)
-- Dependencies: 301
-- Data for Name: trn_transportista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trn_transportista (id, razon_social, codigo, email, total, created_at, updated_at, deleted_at, created_by, updated_by) FROM stdin;
\.


--
-- TOC entry 4049 (class 0 OID 25588)
-- Dependencies: 288
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, perfil_id, name, email, email_verified_at, password, avatar, remember_token, bloqueado, old_psw, two_steps, created_at, updated_at, deleted_at, activo, vence) FROM stdin;
\.


--
-- TOC entry 4489 (class 0 OID 0)
-- Dependencies: 214
-- Name: cnf_colores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cnf_colores_id_seq', 1, false);


--
-- TOC entry 4490 (class 0 OID 0)
-- Dependencies: 327
-- Name: cnf_perfiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cnf_perfiles_id_seq', 1, false);


--
-- TOC entry 4491 (class 0 OID 0)
-- Dependencies: 330
-- Name: cnf_perfiles_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cnf_perfiles_id_seq1', 1, false);


--
-- TOC entry 4492 (class 0 OID 0)
-- Dependencies: 292
-- Name: cnf_tipo_accion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cnf_tipo_accion_id_seq', 1, false);


--
-- TOC entry 4493 (class 0 OID 0)
-- Dependencies: 294
-- Name: cnf_vistas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cnf_vistas_id_seq', 1, false);


--
-- TOC entry 4494 (class 0 OID 0)
-- Dependencies: 215
-- Name: desordenadas_dia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.desordenadas_dia_id_seq', 1, false);


--
-- TOC entry 4495 (class 0 OID 0)
-- Dependencies: 216
-- Name: desordenadas_hora_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.desordenadas_hora_id_seq', 1, false);


--
-- TOC entry 4496 (class 0 OID 0)
-- Dependencies: 217
-- Name: desordenadas_mes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.desordenadas_mes_id_seq', 1, false);


--
-- TOC entry 4497 (class 0 OID 0)
-- Dependencies: 218
-- Name: desordenadas_semana_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.desordenadas_semana_id_seq', 1, false);


--
-- TOC entry 4498 (class 0 OID 0)
-- Dependencies: 219
-- Name: gb_perfiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gb_perfiles_id_seq', 1, false);


--
-- TOC entry 4499 (class 0 OID 0)
-- Dependencies: 220
-- Name: gb_perfiles_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gb_perfiles_id_seq1', 1, false);


--
-- TOC entry 4500 (class 0 OID 0)
-- Dependencies: 290
-- Name: gb_perfiles_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gb_perfiles_id_seq2', 1, false);


--
-- TOC entry 4501 (class 0 OID 0)
-- Dependencies: 221
-- Name: gps_imei_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_imei_id_seq', 1, false);


--
-- TOC entry 4502 (class 0 OID 0)
-- Dependencies: 222
-- Name: gps_imei_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_imei_id_seq1', 1, false);


--
-- TOC entry 4503 (class 0 OID 0)
-- Dependencies: 223
-- Name: gps_imei_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_imei_id_seq2', 1, false);


--
-- TOC entry 4504 (class 0 OID 0)
-- Dependencies: 224
-- Name: gps_imei_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_imei_transportista_id_seq', 1, false);


--
-- TOC entry 4505 (class 0 OID 0)
-- Dependencies: 225
-- Name: gps_imei_transportista_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_imei_transportista_id_seq1', 1, false);


--
-- TOC entry 4506 (class 0 OID 0)
-- Dependencies: 226
-- Name: gps_imei_transportista_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_imei_transportista_id_seq2', 1, false);


--
-- TOC entry 4507 (class 0 OID 0)
-- Dependencies: 227
-- Name: gps_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_proveedor_id_seq', 1, false);


--
-- TOC entry 4508 (class 0 OID 0)
-- Dependencies: 228
-- Name: gps_proveedor_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_proveedor_id_seq1', 1, false);


--
-- TOC entry 4509 (class 0 OID 0)
-- Dependencies: 229
-- Name: gps_proveedor_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_proveedor_id_seq2', 1, false);


--
-- TOC entry 4510 (class 0 OID 0)
-- Dependencies: 230
-- Name: gps_real_time_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_real_time_id_seq', 1, false);


--
-- TOC entry 4511 (class 0 OID 0)
-- Dependencies: 231
-- Name: gps_real_time_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_real_time_id_seq1', 1, false);


--
-- TOC entry 4512 (class 0 OID 0)
-- Dependencies: 232
-- Name: gps_real_time_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_real_time_id_seq2', 1, false);


--
-- TOC entry 4513 (class 0 OID 0)
-- Dependencies: 233
-- Name: gps_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_transportista_id_seq', 1, false);


--
-- TOC entry 4514 (class 0 OID 0)
-- Dependencies: 234
-- Name: gps_transportista_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gps_transportista_id_seq1', 1, false);


--
-- TOC entry 4515 (class 0 OID 0)
-- Dependencies: 296
-- Name: logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.logs_id_seq', 1, false);


--
-- TOC entry 4516 (class 0 OID 0)
-- Dependencies: 298
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 1, false);


--
-- TOC entry 4517 (class 0 OID 0)
-- Dependencies: 328
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- TOC entry 4518 (class 0 OID 0)
-- Dependencies: 332
-- Name: personal_access_tokens_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq1', 1, false);


--
-- TOC entry 4519 (class 0 OID 0)
-- Dependencies: 235
-- Name: stats_gps_day_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_day_id_seq', 1, false);


--
-- TOC entry 4520 (class 0 OID 0)
-- Dependencies: 236
-- Name: stats_gps_day_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_day_id_seq1', 1, false);


--
-- TOC entry 4521 (class 0 OID 0)
-- Dependencies: 237
-- Name: stats_gps_dia_patente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_dia_patente_id_seq', 1, false);


--
-- TOC entry 4522 (class 0 OID 0)
-- Dependencies: 344
-- Name: stats_gps_dia_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_dia_transportista_id_seq', 1, false);


--
-- TOC entry 4523 (class 0 OID 0)
-- Dependencies: 238
-- Name: stats_gps_hora_patente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_hora_patente_id_seq', 1, false);


--
-- TOC entry 4524 (class 0 OID 0)
-- Dependencies: 239
-- Name: stats_gps_hora_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_hora_transportista_id_seq', 1, false);


--
-- TOC entry 4525 (class 0 OID 0)
-- Dependencies: 240
-- Name: stats_gps_hour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_hour_id_seq', 1, false);


--
-- TOC entry 4526 (class 0 OID 0)
-- Dependencies: 241
-- Name: stats_gps_hour_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_hour_id_seq1', 1, false);


--
-- TOC entry 4527 (class 0 OID 0)
-- Dependencies: 242
-- Name: stats_gps_mes_patente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_mes_patente_id_seq', 1, false);


--
-- TOC entry 4528 (class 0 OID 0)
-- Dependencies: 243
-- Name: stats_gps_mes_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_mes_transportista_id_seq', 1, false);


--
-- TOC entry 4529 (class 0 OID 0)
-- Dependencies: 244
-- Name: stats_gps_month_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_month_id_seq', 1, false);


--
-- TOC entry 4530 (class 0 OID 0)
-- Dependencies: 336
-- Name: stats_gps_proveedor_dia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_proveedor_dia_id_seq', 1, false);


--
-- TOC entry 4531 (class 0 OID 0)
-- Dependencies: 334
-- Name: stats_gps_proveedor_hora_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_proveedor_hora_id_seq', 1, false);


--
-- TOC entry 4532 (class 0 OID 0)
-- Dependencies: 338
-- Name: stats_gps_proveedor_mes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_proveedor_mes_id_seq', 1, false);


--
-- TOC entry 4533 (class 0 OID 0)
-- Dependencies: 340
-- Name: stats_gps_proveedor_semana_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_proveedor_semana_id_seq', 1, false);


--
-- TOC entry 4534 (class 0 OID 0)
-- Dependencies: 245
-- Name: stats_gps_semana_patente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_semana_patente_id_seq', 1, false);


--
-- TOC entry 4535 (class 0 OID 0)
-- Dependencies: 246
-- Name: stats_gps_semana_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_semana_transportista_id_seq', 1, false);


--
-- TOC entry 4536 (class 0 OID 0)
-- Dependencies: 247
-- Name: stats_gps_week_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_week_id_seq', 1, false);


--
-- TOC entry 4537 (class 0 OID 0)
-- Dependencies: 248
-- Name: stats_gps_week_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_gps_week_id_seq1', 1, false);


--
-- TOC entry 4538 (class 0 OID 0)
-- Dependencies: 249
-- Name: stats_trafic_proveedor_day_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_day_id_seq', 1, false);


--
-- TOC entry 4539 (class 0 OID 0)
-- Dependencies: 250
-- Name: stats_trafic_proveedor_day_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_day_id_seq1', 1, false);


--
-- TOC entry 4540 (class 0 OID 0)
-- Dependencies: 251
-- Name: stats_trafic_proveedor_day_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_day_id_seq2', 1, false);


--
-- TOC entry 4541 (class 0 OID 0)
-- Dependencies: 252
-- Name: stats_trafic_proveedor_hour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_hour_id_seq', 1, false);


--
-- TOC entry 4542 (class 0 OID 0)
-- Dependencies: 253
-- Name: stats_trafic_proveedor_hour_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_hour_id_seq1', 1, false);


--
-- TOC entry 4543 (class 0 OID 0)
-- Dependencies: 254
-- Name: stats_trafic_proveedor_hour_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_hour_id_seq2', 1, false);


--
-- TOC entry 4544 (class 0 OID 0)
-- Dependencies: 255
-- Name: stats_trafic_proveedor_min_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_min_id_seq', 1, false);


--
-- TOC entry 4545 (class 0 OID 0)
-- Dependencies: 256
-- Name: stats_trafic_proveedor_min_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_min_id_seq1', 1, false);


--
-- TOC entry 4546 (class 0 OID 0)
-- Dependencies: 257
-- Name: stats_trafic_proveedor_min_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_min_id_seq2', 1, false);


--
-- TOC entry 4547 (class 0 OID 0)
-- Dependencies: 258
-- Name: stats_trafic_proveedor_month_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_month_id_seq', 1, false);


--
-- TOC entry 4548 (class 0 OID 0)
-- Dependencies: 259
-- Name: stats_trafic_proveedor_month_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_month_id_seq1', 1, false);


--
-- TOC entry 4549 (class 0 OID 0)
-- Dependencies: 260
-- Name: stats_trafic_proveedor_month_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stats_trafic_proveedor_month_id_seq2', 1, false);


--
-- TOC entry 4550 (class 0 OID 0)
-- Dependencies: 261
-- Name: trn_patentes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_id_seq', 1, false);


--
-- TOC entry 4551 (class 0 OID 0)
-- Dependencies: 262
-- Name: trn_patentes_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_id_seq1', 1, false);


--
-- TOC entry 4552 (class 0 OID 0)
-- Dependencies: 263
-- Name: trn_patentes_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_id_seq2', 1, false);


--
-- TOC entry 4553 (class 0 OID 0)
-- Dependencies: 264
-- Name: trn_patentes_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_transportista_id_seq', 1, false);


--
-- TOC entry 4554 (class 0 OID 0)
-- Dependencies: 265
-- Name: trn_patentes_transportista_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_transportista_id_seq1', 1, false);


--
-- TOC entry 4555 (class 0 OID 0)
-- Dependencies: 266
-- Name: trn_patentes_transportista_id_seq2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_patentes_transportista_id_seq2', 1, false);


--
-- TOC entry 4556 (class 0 OID 0)
-- Dependencies: 300
-- Name: trn_transportista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.trn_transportista_id_seq', 1, false);


--
-- TOC entry 4557 (class 0 OID 0)
-- Dependencies: 289
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 1, false);


--
-- TOC entry 4558 (class 0 OID 0)
-- Dependencies: 329
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- TOC entry 4559 (class 0 OID 0)
-- Dependencies: 287
-- Name: users_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq1', 1, false);


--
-- TOC entry 3717 (class 2606 OID 67884)
-- Name: cnf_perfiles cnf_perfiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cnf_perfiles
    ADD CONSTRAINT cnf_perfiles_pkey PRIMARY KEY (id);


--
-- TOC entry 3709 (class 2606 OID 53155)
-- Name: cnf_vistas cnf_vistas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cnf_vistas
    ADD CONSTRAINT cnf_vistas_pkey PRIMARY KEY (id);


--
-- TOC entry 3615 (class 2606 OID 67868)
-- Name: desordenadas_dia desordenadas_dia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT desordenadas_dia_pkey PRIMARY KEY (id);


--
-- TOC entry 3633 (class 2606 OID 67870)
-- Name: desordenadas_mes desordenadas_mes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT desordenadas_mes_pkey PRIMARY KEY (id);


--
-- TOC entry 3642 (class 2606 OID 67872)
-- Name: desordenadas_semana desordenadas_semana_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT desordenadas_semana_pkey PRIMARY KEY (id);


--
-- TOC entry 3707 (class 2606 OID 53145)
-- Name: cnf_tipo_accion gb_tipo_accion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cnf_tipo_accion
    ADD CONSTRAINT gb_tipo_accion_pkey PRIMARY KEY (id);


--
-- TOC entry 3651 (class 2606 OID 25639)
-- Name: gps_imei idx_gps_imei; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT idx_gps_imei UNIQUE (imei);


--
-- TOC entry 3719 (class 2606 OID 68043)
-- Name: personal_access_tokens idx_personal_access_tokens; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT idx_personal_access_tokens UNIQUE (token);


--
-- TOC entry 3695 (class 2606 OID 57545)
-- Name: trn_patentes idx_trn_patentes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_patentes
    ADD CONSTRAINT idx_trn_patentes UNIQUE (patente);


--
-- TOC entry 3700 (class 2606 OID 25693)
-- Name: users idx_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT idx_user UNIQUE (email);


--
-- TOC entry 3711 (class 2606 OID 53168)
-- Name: logs logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT logs_pkey PRIMARY KEY (id);


--
-- TOC entry 3713 (class 2606 OID 53190)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3721 (class 2606 OID 67892)
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3613 (class 2606 OID 25598)
-- Name: cnf_colores pk_cnf_colores_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cnf_colores
    ADD CONSTRAINT pk_cnf_colores_id PRIMARY KEY (id);


--
-- TOC entry 3631 (class 2606 OID 25620)
-- Name: desordenadas_hora pk_desordenadas_hora_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT pk_desordenadas_hora_id PRIMARY KEY (id);


--
-- TOC entry 3705 (class 2606 OID 25974)
-- Name: gb_perfiles pk_gb_perfiles_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gb_perfiles
    ADD CONSTRAINT pk_gb_perfiles_id PRIMARY KEY (id);


--
-- TOC entry 3660 (class 2606 OID 25646)
-- Name: gps_real_time pk_gps_real_time_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT pk_gps_real_time_id PRIMARY KEY (id);


--
-- TOC entry 3657 (class 2606 OID 25643)
-- Name: gps_proveedor pk_gps_transportista_id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_proveedor
    ADD CONSTRAINT pk_gps_transportista_id_0 PRIMARY KEY (id);


--
-- TOC entry 3669 (class 2606 OID 25660)
-- Name: stats_gps_hora_transportista pk_stat_gps_hour_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_transportista
    ADD CONSTRAINT pk_stat_gps_hour_id PRIMARY KEY (id);


--
-- TOC entry 3681 (class 2606 OID 25672)
-- Name: stats_gps_semana_transportista pk_stat_gps_hour_id_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_transportista
    ADD CONSTRAINT pk_stat_gps_hour_id_1 PRIMARY KEY (id);


--
-- TOC entry 3675 (class 2606 OID 25666)
-- Name: stats_gps_mes_transportista pk_stat_gps_hour_id_2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_transportista
    ADD CONSTRAINT pk_stat_gps_hour_id_2 PRIMARY KEY (id);


--
-- TOC entry 3666 (class 2606 OID 25657)
-- Name: stats_gps_hora_patente pk_stat_gps_hour_id_3; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT pk_stat_gps_hour_id_3 PRIMARY KEY (id);


--
-- TOC entry 3663 (class 2606 OID 25651)
-- Name: stats_gps_dia_patente pk_stat_gps_hour_id_4; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT pk_stat_gps_hour_id_4 PRIMARY KEY (id);


--
-- TOC entry 3678 (class 2606 OID 25669)
-- Name: stats_gps_semana_patente pk_stat_gps_hour_id_5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_patente
    ADD CONSTRAINT pk_stat_gps_hour_id_5 PRIMARY KEY (id);


--
-- TOC entry 3672 (class 2606 OID 25663)
-- Name: stats_gps_mes_patente pk_stat_gps_hour_id_6; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_patente
    ADD CONSTRAINT pk_stat_gps_hour_id_6 PRIMARY KEY (id);


--
-- TOC entry 3690 (class 2606 OID 25681)
-- Name: stats_trafic_proveedor_min pk_stats_trafic_proveedor_min_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_min
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id PRIMARY KEY (id);


--
-- TOC entry 3684 (class 2606 OID 25675)
-- Name: stats_trafic_proveedor_day pk_stats_trafic_proveedor_min_id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_day
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id_0 PRIMARY KEY (id);


--
-- TOC entry 3693 (class 2606 OID 25684)
-- Name: stats_trafic_proveedor_month pk_stats_trafic_proveedor_min_id_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_month
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id_1 PRIMARY KEY (id);


--
-- TOC entry 3687 (class 2606 OID 25678)
-- Name: stats_trafic_proveedor_hour pk_stats_trafic_proveedor_min_id_2; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_hour
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id_2 PRIMARY KEY (id);


--
-- TOC entry 3697 (class 2606 OID 25688)
-- Name: trn_patentes pk_trn_patentes_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_patentes
    ADD CONSTRAINT pk_trn_patentes_id PRIMARY KEY (id);


--
-- TOC entry 3654 (class 2606 OID 25641)
-- Name: gps_imei pk_trn_patentes_id_0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT pk_trn_patentes_id_0 PRIMARY KEY (id);


--
-- TOC entry 3703 (class 2606 OID 25695)
-- Name: users pk_user_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT pk_user_id PRIMARY KEY (id);


--
-- TOC entry 3728 (class 2606 OID 67907)
-- Name: stats_gps_proveedor_dia stats_gps_dia_transportista_copy1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_proveedor_dia
    ADD CONSTRAINT stats_gps_dia_transportista_copy1_pkey PRIMARY KEY (id);


--
-- TOC entry 3741 (class 2606 OID 68050)
-- Name: stats_gps_dia_transportista stats_gps_dia_transportista_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_transportista
    ADD CONSTRAINT stats_gps_dia_transportista_pkey PRIMARY KEY (id);


--
-- TOC entry 3725 (class 2606 OID 67900)
-- Name: stats_gps_proveedor_hora stats_gps_hora_transportista_copy1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_proveedor_hora
    ADD CONSTRAINT stats_gps_hora_transportista_copy1_pkey PRIMARY KEY (id);


--
-- TOC entry 3731 (class 2606 OID 67921)
-- Name: stats_gps_proveedor_mes stats_gps_mes_transportista_copy1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_proveedor_mes
    ADD CONSTRAINT stats_gps_mes_transportista_copy1_pkey PRIMARY KEY (id);


--
-- TOC entry 3734 (class 2606 OID 67934)
-- Name: stats_gps_proveedor_semana stats_gps_semana_transportista_copy1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_proveedor_semana
    ADD CONSTRAINT stats_gps_semana_transportista_copy1_pkey PRIMARY KEY (id);


--
-- TOC entry 3736 (class 2606 OID 67941)
-- Name: trn_marcas trn_marcas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_marcas
    ADD CONSTRAINT trn_marcas_pkey PRIMARY KEY (id);


--
-- TOC entry 3738 (class 2606 OID 67947)
-- Name: trn_tipo_transporte trn_tipo_transporte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_tipo_transporte
    ADD CONSTRAINT trn_tipo_transporte_pkey PRIMARY KEY (id);


--
-- TOC entry 3715 (class 2606 OID 62077)
-- Name: trn_transportista trn_transportista_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_transportista
    ADD CONSTRAINT trn_transportista_pkey PRIMARY KEY (id);


--
-- TOC entry 3616 (class 1259 OID 25605)
-- Name: idx_desordenadas_dia; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia ON public.desordenadas_dia USING btree (proveedor_id);


--
-- TOC entry 3617 (class 1259 OID 25606)
-- Name: idx_desordenadas_dia_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia_0 ON public.desordenadas_dia USING btree (transportista_id);


--
-- TOC entry 3618 (class 1259 OID 25607)
-- Name: idx_desordenadas_dia_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia_1 ON public.desordenadas_dia USING btree (patente_id);


--
-- TOC entry 3619 (class 1259 OID 25608)
-- Name: idx_desordenadas_dia_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia_2 ON public.desordenadas_dia USING btree (fecha);


--
-- TOC entry 3620 (class 1259 OID 25609)
-- Name: idx_desordenadas_dia_3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia_3 ON public.desordenadas_dia USING btree (dia);


--
-- TOC entry 3621 (class 1259 OID 25610)
-- Name: idx_desordenadas_dia_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia_4 ON public.desordenadas_dia USING btree (imei_id);


--
-- TOC entry 3622 (class 1259 OID 25611)
-- Name: idx_desordenadas_dia_5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_dia_5 ON public.desordenadas_dia USING btree (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, dia);


--
-- TOC entry 3623 (class 1259 OID 25612)
-- Name: idx_desordenadas_hora; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora ON public.desordenadas_hora USING btree (transportista_id);


--
-- TOC entry 3624 (class 1259 OID 25613)
-- Name: idx_desordenadas_hora_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora_0 ON public.desordenadas_hora USING btree (proveedor_id);


--
-- TOC entry 3625 (class 1259 OID 25614)
-- Name: idx_desordenadas_hora_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora_1 ON public.desordenadas_hora USING btree (patente_id);


--
-- TOC entry 3626 (class 1259 OID 25615)
-- Name: idx_desordenadas_hora_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora_2 ON public.desordenadas_hora USING btree (fecha);


--
-- TOC entry 3627 (class 1259 OID 25616)
-- Name: idx_desordenadas_hora_3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora_3 ON public.desordenadas_hora USING btree (hora);


--
-- TOC entry 3628 (class 1259 OID 25617)
-- Name: idx_desordenadas_hora_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora_4 ON public.desordenadas_hora USING btree (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, hora);


--
-- TOC entry 3629 (class 1259 OID 25618)
-- Name: idx_desordenadas_hora_5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_hora_5 ON public.desordenadas_hora USING btree (imei_id);


--
-- TOC entry 3634 (class 1259 OID 25621)
-- Name: idx_desordenadas_mes; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes ON public.desordenadas_mes USING btree (transportista_id);


--
-- TOC entry 3635 (class 1259 OID 25622)
-- Name: idx_desordenadas_mes_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes_0 ON public.desordenadas_mes USING btree (proveedor_id);


--
-- TOC entry 3636 (class 1259 OID 25623)
-- Name: idx_desordenadas_mes_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes_1 ON public.desordenadas_mes USING btree (patente_id);


--
-- TOC entry 3637 (class 1259 OID 25624)
-- Name: idx_desordenadas_mes_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes_2 ON public.desordenadas_mes USING btree (imei_id);


--
-- TOC entry 3638 (class 1259 OID 25625)
-- Name: idx_desordenadas_mes_3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes_3 ON public.desordenadas_mes USING btree (fecha);


--
-- TOC entry 3639 (class 1259 OID 25626)
-- Name: idx_desordenadas_mes_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes_4 ON public.desordenadas_mes USING btree (mes);


--
-- TOC entry 3640 (class 1259 OID 25627)
-- Name: idx_desordenadas_mes_5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_mes_5 ON public.desordenadas_mes USING btree (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, mes);


--
-- TOC entry 3643 (class 1259 OID 25628)
-- Name: idx_desordenadas_semana; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana ON public.desordenadas_semana USING btree (transportista_id);


--
-- TOC entry 3644 (class 1259 OID 25629)
-- Name: idx_desordenadas_semana_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana_0 ON public.desordenadas_semana USING btree (proveedor_id);


--
-- TOC entry 3645 (class 1259 OID 25630)
-- Name: idx_desordenadas_semana_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana_1 ON public.desordenadas_semana USING btree (patente_id);


--
-- TOC entry 3646 (class 1259 OID 25631)
-- Name: idx_desordenadas_semana_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana_2 ON public.desordenadas_semana USING btree (imei_id);


--
-- TOC entry 3647 (class 1259 OID 25632)
-- Name: idx_desordenadas_semana_3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana_3 ON public.desordenadas_semana USING btree (fecha);


--
-- TOC entry 3648 (class 1259 OID 25633)
-- Name: idx_desordenadas_semana_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana_4 ON public.desordenadas_semana USING btree (semana);


--
-- TOC entry 3649 (class 1259 OID 25634)
-- Name: idx_desordenadas_semana_5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_desordenadas_semana_5 ON public.desordenadas_semana USING btree (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, semana);


--
-- TOC entry 3652 (class 1259 OID 25635)
-- Name: idx_gps_imei_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_gps_imei_0 ON public.gps_imei USING btree (id, transportista_id, proveedor_id, patente_id);


--
-- TOC entry 3658 (class 1259 OID 25644)
-- Name: idx_gps_real_time; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_gps_real_time ON public.gps_real_time USING btree (id, imei_id, transportista_id, proveedor_id, patente_id);


--
-- TOC entry 3667 (class 1259 OID 25658)
-- Name: idx_stats_gps_hour; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour ON public.stats_gps_hora_transportista USING btree (id, transportista_id);


--
-- TOC entry 3739 (class 1259 OID 68051)
-- Name: idx_stats_gps_hour_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_0 ON public.stats_gps_dia_transportista USING btree (id, transportista_id);


--
-- TOC entry 3726 (class 1259 OID 67908)
-- Name: idx_stats_gps_hour_0_copy1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_0_copy1 ON public.stats_gps_proveedor_dia USING btree (id, patentes_total);


--
-- TOC entry 3679 (class 1259 OID 25670)
-- Name: idx_stats_gps_hour_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_1 ON public.stats_gps_semana_transportista USING btree (id, transportista_id);


--
-- TOC entry 3732 (class 1259 OID 67935)
-- Name: idx_stats_gps_hour_1_copy1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_1_copy1 ON public.stats_gps_proveedor_semana USING btree (id, patentes_total);


--
-- TOC entry 3673 (class 1259 OID 25664)
-- Name: idx_stats_gps_hour_2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_2 ON public.stats_gps_mes_transportista USING btree (id, transportista_id);


--
-- TOC entry 3729 (class 1259 OID 67922)
-- Name: idx_stats_gps_hour_2_copy1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_2_copy1 ON public.stats_gps_proveedor_mes USING btree (id, patentes_total);


--
-- TOC entry 3664 (class 1259 OID 25655)
-- Name: idx_stats_gps_hour_3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_3 ON public.stats_gps_hora_patente USING btree (id, proveedor_id);


--
-- TOC entry 3661 (class 1259 OID 25649)
-- Name: idx_stats_gps_hour_4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_4 ON public.stats_gps_dia_patente USING btree (id, proveedor_id);


--
-- TOC entry 3676 (class 1259 OID 25667)
-- Name: idx_stats_gps_hour_5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_5 ON public.stats_gps_semana_patente USING btree (id, proveedor_id);


--
-- TOC entry 3670 (class 1259 OID 25661)
-- Name: idx_stats_gps_hour_6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_6 ON public.stats_gps_mes_patente USING btree (id, proveedor_id);


--
-- TOC entry 3723 (class 1259 OID 67909)
-- Name: idx_stats_gps_hour_copy1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_gps_hour_copy1 ON public.stats_gps_proveedor_hora USING btree (id, patentes_total);


--
-- TOC entry 3682 (class 1259 OID 25673)
-- Name: idx_stats_trafic_proveedor_day; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_trafic_proveedor_day ON public.stats_trafic_proveedor_day USING btree (id, proveedor_id);


--
-- TOC entry 3685 (class 1259 OID 25676)
-- Name: idx_stats_trafic_proveedor_hour; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_trafic_proveedor_hour ON public.stats_trafic_proveedor_hour USING btree (id, proveedor_id);


--
-- TOC entry 3688 (class 1259 OID 25679)
-- Name: idx_stats_trafic_proveedor_min; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_trafic_proveedor_min ON public.stats_trafic_proveedor_min USING btree (id, proveedor_id);


--
-- TOC entry 3691 (class 1259 OID 25682)
-- Name: idx_stats_trafic_proveedor_month; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_stats_trafic_proveedor_month ON public.stats_trafic_proveedor_month USING btree (id, proveedor_id);


--
-- TOC entry 3701 (class 1259 OID 25691)
-- Name: idx_user_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_user_0 ON public.users USING btree (id, perfil_id);


--
-- TOC entry 3722 (class 1259 OID 67893)
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- TOC entry 3698 (class 1259 OID 57923)
-- Name: unq_trn_patentes_transportista-id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "unq_trn_patentes_transportista-id" ON public.trn_patentes USING btree (transportista_id);


--
-- TOC entry 3655 (class 1259 OID 53138)
-- Name: unq_trn_patentes_transportista-id_0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "unq_trn_patentes_transportista-id_0" ON public.gps_imei USING btree (transportista_id);


--
-- TOC entry 3742 (class 2606 OID 25696)
-- Name: desordenadas_dia fk_desordenadas_dia_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT fk_desordenadas_dia_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3743 (class 2606 OID 25701)
-- Name: desordenadas_dia fk_desordenadas_dia_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT fk_desordenadas_dia_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3744 (class 2606 OID 62078)
-- Name: desordenadas_dia fk_desordenadas_dia_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT fk_desordenadas_dia_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3745 (class 2606 OID 25711)
-- Name: desordenadas_dia fk_desordenadas_dia_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT fk_desordenadas_dia_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3746 (class 2606 OID 25716)
-- Name: desordenadas_hora fk_desordenadas_hora_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT fk_desordenadas_hora_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3747 (class 2606 OID 25721)
-- Name: desordenadas_hora fk_desordenadas_hora_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT fk_desordenadas_hora_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3748 (class 2606 OID 25731)
-- Name: desordenadas_hora fk_desordenadas_hora_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT fk_desordenadas_hora_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3749 (class 2606 OID 62083)
-- Name: desordenadas_hora fk_desordenadas_hora_trn_transportistas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT fk_desordenadas_hora_trn_transportistas FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3750 (class 2606 OID 25736)
-- Name: desordenadas_mes fk_desordenadas_mes_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT fk_desordenadas_mes_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3751 (class 2606 OID 25741)
-- Name: desordenadas_mes fk_desordenadas_mes_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT fk_desordenadas_mes_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3752 (class 2606 OID 62088)
-- Name: desordenadas_mes fk_desordenadas_mes_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT fk_desordenadas_mes_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3753 (class 2606 OID 25751)
-- Name: desordenadas_mes fk_desordenadas_mes_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT fk_desordenadas_mes_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3754 (class 2606 OID 25756)
-- Name: desordenadas_semana fk_desordenadas_semana_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT fk_desordenadas_semana_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3755 (class 2606 OID 25761)
-- Name: desordenadas_semana fk_desordenadas_semana_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT fk_desordenadas_semana_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3756 (class 2606 OID 62093)
-- Name: desordenadas_semana fk_desordenadas_semana_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT fk_desordenadas_semana_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3757 (class 2606 OID 25771)
-- Name: desordenadas_semana fk_desordenadas_semana_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT fk_desordenadas_semana_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3758 (class 2606 OID 25776)
-- Name: gps_imei fk_gps_imei_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT fk_gps_imei_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3759 (class 2606 OID 62098)
-- Name: gps_imei fk_gps_imei_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT fk_gps_imei_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3760 (class 2606 OID 25786)
-- Name: gps_imei fk_gps_imei_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT fk_gps_imei_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3761 (class 2606 OID 67713)
-- Name: gps_real_time fk_gps_real_time_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3762 (class 2606 OID 25796)
-- Name: gps_real_time fk_gps_real_time_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3763 (class 2606 OID 62103)
-- Name: gps_real_time fk_gps_real_time_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3764 (class 2606 OID 67708)
-- Name: gps_real_time fk_gps_real_time_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3794 (class 2606 OID 53169)
-- Name: logs fk_l_accion_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT fk_l_accion_id FOREIGN KEY (accion_id) REFERENCES public.cnf_tipo_accion(id);


--
-- TOC entry 3795 (class 2606 OID 53174)
-- Name: logs fk_l_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT fk_l_usuario_id FOREIGN KEY (usuario_id) REFERENCES public.users(id);


--
-- TOC entry 3796 (class 2606 OID 53179)
-- Name: logs fk_l_vista_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT fk_l_vista_id FOREIGN KEY (vista_id) REFERENCES public.cnf_vistas(id);


--
-- TOC entry 3765 (class 2606 OID 25826)
-- Name: stats_gps_dia_patente fk_stats_gps_dia_patente_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_dia_patente_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3766 (class 2606 OID 62108)
-- Name: stats_gps_dia_patente fk_stats_gps_dia_patente_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_dia_patente_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3767 (class 2606 OID 25841)
-- Name: stats_gps_dia_patente fk_stats_gps_dia_patente_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_dia_patente_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3801 (class 2606 OID 68052)
-- Name: stats_gps_dia_transportista fk_stats_gps_dia_transportista_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_transportista
    ADD CONSTRAINT fk_stats_gps_dia_transportista_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3769 (class 2606 OID 25861)
-- Name: stats_gps_hora_patente fk_stats_gps_hora_patente_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT fk_stats_gps_hora_patente_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3770 (class 2606 OID 62123)
-- Name: stats_gps_hora_patente fk_stats_gps_hora_patente_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT fk_stats_gps_hora_patente_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3771 (class 2606 OID 25871)
-- Name: stats_gps_hora_patente fk_stats_gps_hora_patente_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT fk_stats_gps_hora_patente_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3772 (class 2606 OID 25876)
-- Name: stats_gps_hora_patente fk_stats_gps_hora_proveedor_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3768 (class 2606 OID 25846)
-- Name: stats_gps_dia_patente fk_stats_gps_hora_proveedor_gps_proveedor_0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_0 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3780 (class 2606 OID 25916)
-- Name: stats_gps_semana_patente fk_stats_gps_hora_proveedor_gps_proveedor_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_patente
    ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_1 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3775 (class 2606 OID 25891)
-- Name: stats_gps_mes_patente fk_stats_gps_hora_proveedor_gps_proveedor_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_patente
    ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_2 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3773 (class 2606 OID 25881)
-- Name: stats_gps_hora_transportista fk_stats_gps_hora_transportista_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_transportista
    ADD CONSTRAINT fk_stats_gps_hora_transportista_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3774 (class 2606 OID 62128)
-- Name: stats_gps_hora_transportista fk_stats_gps_hour_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_hora_transportista
    ADD CONSTRAINT fk_stats_gps_hour_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3802 (class 2606 OID 68057)
-- Name: stats_gps_dia_transportista fk_stats_gps_hour_gps_transportista_0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_dia_transportista
    ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_0 FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3783 (class 2606 OID 62138)
-- Name: stats_gps_semana_transportista fk_stats_gps_hour_gps_transportista_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_transportista
    ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_1 FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3778 (class 2606 OID 62133)
-- Name: stats_gps_mes_transportista fk_stats_gps_hour_gps_transportista_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_transportista
    ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_2 FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3776 (class 2606 OID 25896)
-- Name: stats_gps_mes_patente fk_stats_gps_mes_patente_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_patente
    ADD CONSTRAINT fk_stats_gps_mes_patente_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3777 (class 2606 OID 25901)
-- Name: stats_gps_mes_patente fk_stats_gps_mes_patente_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_patente
    ADD CONSTRAINT fk_stats_gps_mes_patente_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3779 (class 2606 OID 25911)
-- Name: stats_gps_mes_transportista fk_stats_gps_mes_transportista_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_mes_transportista
    ADD CONSTRAINT fk_stats_gps_mes_transportista_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3798 (class 2606 OID 68108)
-- Name: stats_gps_proveedor_dia fk_stats_gps_proveedor_dia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_proveedor_dia
    ADD CONSTRAINT fk_stats_gps_proveedor_dia FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3800 (class 2606 OID 68113)
-- Name: stats_gps_proveedor_semana fk_stats_gps_proveedor_semana; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_proveedor_semana
    ADD CONSTRAINT fk_stats_gps_proveedor_semana FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3781 (class 2606 OID 25921)
-- Name: stats_gps_semana_patente fk_stats_gps_semana_patente_gps_imei; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_patente
    ADD CONSTRAINT fk_stats_gps_semana_patente_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);


--
-- TOC entry 3782 (class 2606 OID 25926)
-- Name: stats_gps_semana_patente fk_stats_gps_semana_patente_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_patente
    ADD CONSTRAINT fk_stats_gps_semana_patente_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);


--
-- TOC entry 3784 (class 2606 OID 25936)
-- Name: stats_gps_semana_transportista fk_stats_gps_semana_transportista_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_semana_transportista
    ADD CONSTRAINT fk_stats_gps_semana_transportista_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3785 (class 2606 OID 25941)
-- Name: stats_trafic_proveedor_day fk_stats_trafic_proveedor_day_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_day
    ADD CONSTRAINT fk_stats_trafic_proveedor_day_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3787 (class 2606 OID 25951)
-- Name: stats_trafic_proveedor_min fk_stats_trafic_proveedor_min_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_min
    ADD CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3786 (class 2606 OID 25946)
-- Name: stats_trafic_proveedor_hour fk_stats_trafic_proveedor_min_gps_proveedor_0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_hour
    ADD CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor_0 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3788 (class 2606 OID 25956)
-- Name: stats_trafic_proveedor_month fk_stats_trafic_proveedor_month_gps_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_trafic_proveedor_month
    ADD CONSTRAINT fk_stats_trafic_proveedor_month_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3789 (class 2606 OID 68123)
-- Name: trn_patentes fk_trn_patentes; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_patentes
    ADD CONSTRAINT fk_trn_patentes FOREIGN KEY (tipo_id) REFERENCES public.trn_tipo_transporte(id);


--
-- TOC entry 3790 (class 2606 OID 62143)
-- Name: trn_patentes fk_trn_patentes_gps_transportista; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_patentes
    ADD CONSTRAINT fk_trn_patentes_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.trn_transportista(id);


--
-- TOC entry 3791 (class 2606 OID 68118)
-- Name: trn_patentes fk_trn_patentes_trn_marcas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trn_patentes
    ADD CONSTRAINT fk_trn_patentes_trn_marcas FOREIGN KEY (marca_id) REFERENCES public.trn_marcas(id);


--
-- TOC entry 3792 (class 2606 OID 26678)
-- Name: users fk_user_gb_perfiles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_user_gb_perfiles FOREIGN KEY (perfil_id) REFERENCES public.gb_perfiles(id);


--
-- TOC entry 3793 (class 2606 OID 68128)
-- Name: users fk_users_cnf_perfiles; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_cnf_perfiles FOREIGN KEY (perfil_id) REFERENCES public.cnf_perfiles(id);


--
-- TOC entry 3797 (class 2606 OID 67910)
-- Name: stats_gps_proveedor_hora stats_gps_hora_transportista_copy1_proveedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_proveedor_hora
    ADD CONSTRAINT stats_gps_hora_transportista_copy1_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


--
-- TOC entry 3799 (class 2606 OID 67923)
-- Name: stats_gps_proveedor_mes stats_gps_mes_transportista_copy1_proveedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stats_gps_proveedor_mes
    ADD CONSTRAINT stats_gps_mes_transportista_copy1_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);


-- Completed on 2023-11-20 11:44:48

--
-- PostgreSQL database dump complete
--

