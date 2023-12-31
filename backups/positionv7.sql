PGDMP              	    
    {            pos4    15.4    16.0 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    53191    pos4    DATABASE     w   CREATE DATABASE pos4 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE pos4;
                postgres    false                       1247    53479    ghstore    TYPE        CREATE TYPE public.ghstore;
    DROP TYPE public.ghstore;
       public          postgres    false                       1247    53486    hstore    TYPE        CREATE TYPE public.hstore;
    DROP TYPE public.hstore;
       public          postgres    false            (           1255    53477    ghstore_compress(internal)    FUNCTION     �   CREATE FUNCTION public.ghstore_compress(internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_compress';
 1   DROP FUNCTION public.ghstore_compress(internal);
       public          postgres    false            )           1255    53478    ghstore_decompress(internal)    FUNCTION     �   CREATE FUNCTION public.ghstore_decompress(internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_decompress';
 3   DROP FUNCTION public.ghstore_decompress(internal);
       public          postgres    false            *           1255    53480    ghstore_in(cstring)    FUNCTION     �   CREATE FUNCTION public.ghstore_in(cstring) RETURNS public.ghstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_in';
 *   DROP FUNCTION public.ghstore_in(cstring);
       public          postgres    false    1030            +           1255    53481    ghstore_out(public.ghstore)    FUNCTION     �   CREATE FUNCTION public.ghstore_out(public.ghstore) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_out';
 2   DROP FUNCTION public.ghstore_out(public.ghstore);
       public          postgres    false    1030            ,           1255    53482 -   ghstore_penalty(internal, internal, internal)    FUNCTION     �   CREATE FUNCTION public.ghstore_penalty(internal, internal, internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_penalty';
 D   DROP FUNCTION public.ghstore_penalty(internal, internal, internal);
       public          postgres    false            -           1255    53483 %   ghstore_picksplit(internal, internal)    FUNCTION     �   CREATE FUNCTION public.ghstore_picksplit(internal, internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_picksplit';
 <   DROP FUNCTION public.ghstore_picksplit(internal, internal);
       public          postgres    false            .           1255    53484 6   ghstore_same(public.ghstore, public.ghstore, internal)    FUNCTION     �   CREATE FUNCTION public.ghstore_same(public.ghstore, public.ghstore, internal) RETURNS internal
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_same';
 M   DROP FUNCTION public.ghstore_same(public.ghstore, public.ghstore, internal);
       public          postgres    false    1030            /           1255    53485 !   ghstore_union(internal, internal)    FUNCTION     �   CREATE FUNCTION public.ghstore_union(internal, internal) RETURNS public.ghstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'ghstore_union';
 8   DROP FUNCTION public.ghstore_union(internal, internal);
       public          postgres    false    1030            1           1255    53488    hstore(text[])    FUNCTION     �   CREATE FUNCTION public.hstore(text[]) RETURNS public.hstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_array';
 %   DROP FUNCTION public.hstore(text[]);
       public          postgres    false    1031            0           1255    53487    hstore(record)    FUNCTION     �   CREATE FUNCTION public.hstore(record) RETURNS public.hstore
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_record';
 %   DROP FUNCTION public.hstore(record);
       public          postgres    false    1031            2           1255    53489    hstore(text[], text[])    FUNCTION     �   CREATE FUNCTION public.hstore(text[], text[]) RETURNS public.hstore
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_arrays';
 -   DROP FUNCTION public.hstore(text[], text[]);
       public          postgres    false    1031            3           1255    53490    hstore(text, text)    FUNCTION     �   CREATE FUNCTION public.hstore(text, text) RETURNS public.hstore
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_text';
 )   DROP FUNCTION public.hstore(text, text);
       public          postgres    false    1031            4           1255    53491 (   hstore_cmp(public.hstore, public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_cmp(public.hstore, public.hstore) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_cmp';
 ?   DROP FUNCTION public.hstore_cmp(public.hstore, public.hstore);
       public          postgres    false    1031            5           1255    53492 '   hstore_eq(public.hstore, public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_eq(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_eq';
 >   DROP FUNCTION public.hstore_eq(public.hstore, public.hstore);
       public          postgres    false    1031            6           1255    53493 '   hstore_ge(public.hstore, public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_ge(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_ge';
 >   DROP FUNCTION public.hstore_ge(public.hstore, public.hstore);
       public          postgres    false    1031            7           1255    53494 '   hstore_gt(public.hstore, public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_gt(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_gt';
 >   DROP FUNCTION public.hstore_gt(public.hstore, public.hstore);
       public          postgres    false    1031            8           1255    53495    hstore_hash(public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_hash(public.hstore) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_hash';
 1   DROP FUNCTION public.hstore_hash(public.hstore);
       public          postgres    false    1031            9           1255    53496 +   hstore_hash_extended(public.hstore, bigint)    FUNCTION     �   CREATE FUNCTION public.hstore_hash_extended(public.hstore, bigint) RETURNS bigint
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_hash_extended';
 B   DROP FUNCTION public.hstore_hash_extended(public.hstore, bigint);
       public          postgres    false    1031            :           1255    53497    hstore_in(cstring)    FUNCTION     �   CREATE FUNCTION public.hstore_in(cstring) RETURNS public.hstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_in';
 )   DROP FUNCTION public.hstore_in(cstring);
       public          postgres    false    1031            ;           1255    53498 '   hstore_le(public.hstore, public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_le(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_le';
 >   DROP FUNCTION public.hstore_le(public.hstore, public.hstore);
       public          postgres    false    1031            <           1255    53499 '   hstore_lt(public.hstore, public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_lt(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_lt';
 >   DROP FUNCTION public.hstore_lt(public.hstore, public.hstore);
       public          postgres    false    1031            =           1255    53500 '   hstore_ne(public.hstore, public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_ne(public.hstore, public.hstore) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_ne';
 >   DROP FUNCTION public.hstore_ne(public.hstore, public.hstore);
       public          postgres    false    1031            >           1255    53501    hstore_out(public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_out(public.hstore) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_out';
 0   DROP FUNCTION public.hstore_out(public.hstore);
       public          postgres    false    1031            ?           1255    53502    hstore_recv(internal)    FUNCTION     �   CREATE FUNCTION public.hstore_recv(internal) RETURNS public.hstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_recv';
 ,   DROP FUNCTION public.hstore_recv(internal);
       public          postgres    false    1031            @           1255    53503    hstore_send(public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_send(public.hstore) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_send';
 1   DROP FUNCTION public.hstore_send(public.hstore);
       public          postgres    false    1031            A           1255    53504    hstore_to_array(public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_to_array(public.hstore) RETURNS text[]
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_array';
 5   DROP FUNCTION public.hstore_to_array(public.hstore);
       public          postgres    false    1031            B           1255    53505    hstore_to_json(public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_to_json(public.hstore) RETURNS json
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_json';
 4   DROP FUNCTION public.hstore_to_json(public.hstore);
       public          postgres    false    1031            C           1255    53506 #   hstore_to_json_loose(public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_to_json_loose(public.hstore) RETURNS json
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_json_loose';
 :   DROP FUNCTION public.hstore_to_json_loose(public.hstore);
       public          postgres    false    1031            D           1255    53507    hstore_to_jsonb(public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_to_jsonb(public.hstore) RETURNS jsonb
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_jsonb';
 5   DROP FUNCTION public.hstore_to_jsonb(public.hstore);
       public          postgres    false    1031            E           1255    53508 $   hstore_to_jsonb_loose(public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_to_jsonb_loose(public.hstore) RETURNS jsonb
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_jsonb_loose';
 ;   DROP FUNCTION public.hstore_to_jsonb_loose(public.hstore);
       public          postgres    false    1031            F           1255    53509    hstore_to_matrix(public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_to_matrix(public.hstore) RETURNS text[]
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_to_matrix';
 6   DROP FUNCTION public.hstore_to_matrix(public.hstore);
       public          postgres    false    1031            G           1255    53510 "   hstore_version_diag(public.hstore)    FUNCTION     �   CREATE FUNCTION public.hstore_version_diag(public.hstore) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_version_diag';
 9   DROP FUNCTION public.hstore_version_diag(public.hstore);
       public          postgres    false    1031            H           1255    53511    isdefined(public.hstore, text)    FUNCTION     �   CREATE FUNCTION public.isdefined(public.hstore, text) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_defined';
 5   DROP FUNCTION public.isdefined(public.hstore, text);
       public          postgres    false    1031            I           1255    53512    isexists(public.hstore, text)    FUNCTION     �   CREATE FUNCTION public.isexists(public.hstore, text) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_exists';
 4   DROP FUNCTION public.isexists(public.hstore, text);
       public          postgres    false    1031            J           1255    53513 *   populate_record(anyelement, public.hstore)    FUNCTION     �   CREATE FUNCTION public.populate_record(anyelement, public.hstore) RETURNS anyelement
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_populate_record';
 A   DROP FUNCTION public.populate_record(anyelement, public.hstore);
       public          postgres    false    1031            K           1255    53514    skeys(public.hstore)    FUNCTION     �   CREATE FUNCTION public.skeys(public.hstore) RETURNS SETOF text
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_skeys';
 +   DROP FUNCTION public.skeys(public.hstore);
       public          postgres    false    1031            L           1255    53515    slice(public.hstore, text[])    FUNCTION     �   CREATE FUNCTION public.slice(public.hstore, text[]) RETURNS public.hstore
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_slice_to_hstore';
 3   DROP FUNCTION public.slice(public.hstore, text[]);
       public          postgres    false    1031            M           1255    53516 "   slice_array(public.hstore, text[])    FUNCTION     �   CREATE FUNCTION public.slice_array(public.hstore, text[]) RETURNS text[]
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_slice_to_array';
 9   DROP FUNCTION public.slice_array(public.hstore, text[]);
       public          postgres    false    1031            N           1255    53517    svals(public.hstore)    FUNCTION     �   CREATE FUNCTION public.svals(public.hstore) RETURNS SETOF text
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_svals';
 +   DROP FUNCTION public.svals(public.hstore);
       public          postgres    false    1031            O           1255    53518    tconvert(text, text)    FUNCTION     �   CREATE FUNCTION public.tconvert(text, text) RETURNS public.hstore
    LANGUAGE c IMMUTABLE PARALLEL SAFE
    AS '$libdir/hstore', 'hstore_from_text';
 +   DROP FUNCTION public.tconvert(text, text);
       public          postgres    false    1031            �            1259    53225    cnf_colores    TABLE     �  CREATE TABLE public.cnf_colores (
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
    DROP TABLE public.cnf_colores;
       public         heap    postgres    false            �           0    0    TABLE cnf_colores    COMMENT     q   COMMENT ON TABLE public.cnf_colores IS 'ConfiguraciÂ´Ã³n de rango de colores de las patentes desarodenadas';
          public          postgres    false    247            �           0    0    COLUMN cnf_colores.id    COMMENT     D   COMMENT ON COLUMN public.cnf_colores.id IS 'Id unico del registro';
          public          postgres    false    247            �           0    0    COLUMN cnf_colores.inicio    COMMENT     J   COMMENT ON COLUMN public.cnf_colores.inicio IS 'Valor inicial del rango';
          public          postgres    false    247            �           0    0    COLUMN cnf_colores.final    COMMENT     G   COMMENT ON COLUMN public.cnf_colores.final IS 'Valor final del rango';
          public          postgres    false    247            �           0    0    COLUMN cnf_colores.color    COMMENT     Z   COMMENT ON COLUMN public.cnf_colores.color IS 'Color a aplicar al rango, en hexadecimal';
          public          postgres    false    247            �           0    0    COLUMN cnf_colores.descripcion    COMMENT     \   COMMENT ON COLUMN public.cnf_colores.descripcion IS 'Descripcion de donde aplica el rango';
          public          postgres    false    247            �           0    0    COLUMN cnf_colores.deleted_at    COMMENT     _   COMMENT ON COLUMN public.cnf_colores.deleted_at IS 'Timestamp de borrado logico del registro';
          public          postgres    false    247            �           0    0    COLUMN cnf_colores.created_at    COMMENT     Y   COMMENT ON COLUMN public.cnf_colores.created_at IS 'Timestamp de creacion del registro';
          public          postgres    false    247            �           0    0    COLUMN cnf_colores.updated_at    COMMENT     \   COMMENT ON COLUMN public.cnf_colores.updated_at IS 'Timestamp de moficiacion del registro';
          public          postgres    false    247            �           0    0    COLUMN cnf_colores.unidad    COMMENT     ^   COMMENT ON COLUMN public.cnf_colores.unidad IS 'Unidad del rango: 1 porcewntaje, 2 cantidad';
          public          postgres    false    247            �            1259    53224    cnf_colores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cnf_colores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cnf_colores_id_seq;
       public          postgres    false    247            �           0    0    cnf_colores_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cnf_colores_id_seq OWNED BY public.cnf_colores.id;
          public          postgres    false    246            !           1259    53424    desordenadas_dia    TABLE     �  CREATE TABLE public.desordenadas_dia (
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
 $   DROP TABLE public.desordenadas_dia;
       public         heap    postgres    false            �           0    0    TABLE desordenadas_dia    COMMENT     _   COMMENT ON TABLE public.desordenadas_dia IS 'Tabla de cadenas desordenadas recibidas por dia';
          public          postgres    false    289            �           0    0    COLUMN desordenadas_dia.id    COMMENT     I   COMMENT ON COLUMN public.desordenadas_dia.id IS 'ID unico del registro';
          public          postgres    false    289            �           0    0 (   COLUMN desordenadas_dia.transportista_id    COMMENT     V   COMMENT ON COLUMN public.desordenadas_dia.transportista_id IS 'ID del transportista';
          public          postgres    false    289            �           0    0 $   COLUMN desordenadas_dia.proveedor_id    COMMENT     ^   COMMENT ON COLUMN public.desordenadas_dia.proveedor_id IS 'ID del proveedor de servicio GPS';
          public          postgres    false    289            �           0    0 "   COLUMN desordenadas_dia.patente_id    COMMENT     L   COMMENT ON COLUMN public.desordenadas_dia.patente_id IS 'ID de la patente';
          public          postgres    false    289            �           0    0    COLUMN desordenadas_dia.imei_id    COMMENT     D   COMMENT ON COLUMN public.desordenadas_dia.imei_id IS 'Id del IMEI';
          public          postgres    false    289            �           0    0    COLUMN desordenadas_dia.fecha    COMMENT     Z   COMMENT ON COLUMN public.desordenadas_dia.fecha IS 'Fecha de receepciÃ³n de la cadena';
          public          postgres    false    289            �           0    0    COLUMN desordenadas_dia.dia    COMMENT     _   COMMENT ON COLUMN public.desordenadas_dia.dia IS 'Hora del marco del tiempo a evaluar (0-31)';
          public          postgres    false    289            �           0    0    COLUMN desordenadas_dia.cant    COMMENT     w   COMMENT ON COLUMN public.desordenadas_dia.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';
          public          postgres    false    289            �           0    0 "   COLUMN desordenadas_dia.created_at    COMMENT     d   COMMENT ON COLUMN public.desordenadas_dia.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    289            �           0    0 "   COLUMN desordenadas_dia.updated_at    COMMENT     e   COMMENT ON COLUMN public.desordenadas_dia.updated_at IS 'Timestamp de modificaciÃ³n del registro';
          public          postgres    false    289            �           0    0 "   COLUMN desordenadas_dia.deleted_at    COMMENT     e   COMMENT ON COLUMN public.desordenadas_dia.deleted_at IS 'Timestamp del borrado logico del registro';
          public          postgres    false    289                        1259    53423    desordenadas_dia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.desordenadas_dia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.desordenadas_dia_id_seq;
       public          postgres    false    289            �           0    0    desordenadas_dia_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.desordenadas_dia_id_seq OWNED BY public.desordenadas_dia.id;
          public          postgres    false    288            #           1259    53437    desordenadas_hora    TABLE     �  CREATE TABLE public.desordenadas_hora (
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
 %   DROP TABLE public.desordenadas_hora;
       public         heap    postgres    false            �           0    0    TABLE desordenadas_hora    COMMENT     a   COMMENT ON TABLE public.desordenadas_hora IS 'Tabla de cadenas desordenadas recibidas por hora';
          public          postgres    false    291            �           0    0    COLUMN desordenadas_hora.id    COMMENT     J   COMMENT ON COLUMN public.desordenadas_hora.id IS 'ID unico del registro';
          public          postgres    false    291            �           0    0 )   COLUMN desordenadas_hora.transportista_id    COMMENT     W   COMMENT ON COLUMN public.desordenadas_hora.transportista_id IS 'ID del transportista';
          public          postgres    false    291            �           0    0 %   COLUMN desordenadas_hora.proveedor_id    COMMENT     _   COMMENT ON COLUMN public.desordenadas_hora.proveedor_id IS 'ID del proveedor de servicio GPS';
          public          postgres    false    291            �           0    0 #   COLUMN desordenadas_hora.patente_id    COMMENT     M   COMMENT ON COLUMN public.desordenadas_hora.patente_id IS 'ID de la patente';
          public          postgres    false    291            �           0    0     COLUMN desordenadas_hora.imei_id    COMMENT     E   COMMENT ON COLUMN public.desordenadas_hora.imei_id IS 'Id del IMEI';
          public          postgres    false    291            �           0    0    COLUMN desordenadas_hora.fecha    COMMENT     [   COMMENT ON COLUMN public.desordenadas_hora.fecha IS 'Fecha de receepciÃ³n de la cadena';
          public          postgres    false    291            �           0    0    COLUMN desordenadas_hora.hora    COMMENT     a   COMMENT ON COLUMN public.desordenadas_hora.hora IS 'Hora del marco del tiempo a evaluar (0-24)';
          public          postgres    false    291            �           0    0    COLUMN desordenadas_hora.cant    COMMENT     x   COMMENT ON COLUMN public.desordenadas_hora.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';
          public          postgres    false    291            �           0    0 #   COLUMN desordenadas_hora.created_at    COMMENT     e   COMMENT ON COLUMN public.desordenadas_hora.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    291            �           0    0 #   COLUMN desordenadas_hora.updated_at    COMMENT     f   COMMENT ON COLUMN public.desordenadas_hora.updated_at IS 'Timestamp de modificaciÃ³n del registro';
          public          postgres    false    291            �           0    0 #   COLUMN desordenadas_hora.deleted_at    COMMENT     f   COMMENT ON COLUMN public.desordenadas_hora.deleted_at IS 'Timestamp del borrado logico del registro';
          public          postgres    false    291            "           1259    53436    desordenadas_hora_id_seq    SEQUENCE     �   CREATE SEQUENCE public.desordenadas_hora_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.desordenadas_hora_id_seq;
       public          postgres    false    291            �           0    0    desordenadas_hora_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.desordenadas_hora_id_seq OWNED BY public.desordenadas_hora.id;
          public          postgres    false    290            %           1259    53452    desordenadas_mes    TABLE     �  CREATE TABLE public.desordenadas_mes (
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
 $   DROP TABLE public.desordenadas_mes;
       public         heap    postgres    false            �           0    0    TABLE desordenadas_mes    COMMENT     _   COMMENT ON TABLE public.desordenadas_mes IS 'Tabla de cadenas desordenadas recibidas por mes';
          public          postgres    false    293            �           0    0    COLUMN desordenadas_mes.id    COMMENT     I   COMMENT ON COLUMN public.desordenadas_mes.id IS 'ID unico del registro';
          public          postgres    false    293            �           0    0 (   COLUMN desordenadas_mes.transportista_id    COMMENT     V   COMMENT ON COLUMN public.desordenadas_mes.transportista_id IS 'ID del transportista';
          public          postgres    false    293            �           0    0 $   COLUMN desordenadas_mes.proveedor_id    COMMENT     ^   COMMENT ON COLUMN public.desordenadas_mes.proveedor_id IS 'ID del proveedor de servicio GPS';
          public          postgres    false    293            �           0    0 "   COLUMN desordenadas_mes.patente_id    COMMENT     L   COMMENT ON COLUMN public.desordenadas_mes.patente_id IS 'ID de la patente';
          public          postgres    false    293            �           0    0    COLUMN desordenadas_mes.imei_id    COMMENT     D   COMMENT ON COLUMN public.desordenadas_mes.imei_id IS 'Id del IMEI';
          public          postgres    false    293            �           0    0    COLUMN desordenadas_mes.fecha    COMMENT     Z   COMMENT ON COLUMN public.desordenadas_mes.fecha IS 'Fecha de receepciÃ³n de la cadena';
          public          postgres    false    293            �           0    0    COLUMN desordenadas_mes.mes    COMMENT     ^   COMMENT ON COLUMN public.desordenadas_mes.mes IS 'Mes del marco del tiempo a evaluar (0-12)';
          public          postgres    false    293                        0    0    COLUMN desordenadas_mes.cant    COMMENT     w   COMMENT ON COLUMN public.desordenadas_mes.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';
          public          postgres    false    293                       0    0 "   COLUMN desordenadas_mes.created_at    COMMENT     d   COMMENT ON COLUMN public.desordenadas_mes.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    293                       0    0 "   COLUMN desordenadas_mes.updated_at    COMMENT     e   COMMENT ON COLUMN public.desordenadas_mes.updated_at IS 'Timestamp de modificaciÃ³n del registro';
          public          postgres    false    293                       0    0 "   COLUMN desordenadas_mes.deleted_at    COMMENT     e   COMMENT ON COLUMN public.desordenadas_mes.deleted_at IS 'Timestamp del borrado logico del registro';
          public          postgres    false    293            $           1259    53451    desordenadas_mes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.desordenadas_mes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.desordenadas_mes_id_seq;
       public          postgres    false    293                       0    0    desordenadas_mes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.desordenadas_mes_id_seq OWNED BY public.desordenadas_mes.id;
          public          postgres    false    292            '           1259    53465    desordenadas_semana    TABLE     �  CREATE TABLE public.desordenadas_semana (
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
 '   DROP TABLE public.desordenadas_semana;
       public         heap    postgres    false                       0    0    TABLE desordenadas_semana    COMMENT     e   COMMENT ON TABLE public.desordenadas_semana IS 'Tabla de cadenas desordenadas recibidas por semana';
          public          postgres    false    295                       0    0    COLUMN desordenadas_semana.id    COMMENT     L   COMMENT ON COLUMN public.desordenadas_semana.id IS 'ID unico del registro';
          public          postgres    false    295                       0    0 +   COLUMN desordenadas_semana.transportista_id    COMMENT     Y   COMMENT ON COLUMN public.desordenadas_semana.transportista_id IS 'ID del transportista';
          public          postgres    false    295                       0    0 '   COLUMN desordenadas_semana.proveedor_id    COMMENT     a   COMMENT ON COLUMN public.desordenadas_semana.proveedor_id IS 'ID del proveedor de servicio GPS';
          public          postgres    false    295            	           0    0 %   COLUMN desordenadas_semana.patente_id    COMMENT     O   COMMENT ON COLUMN public.desordenadas_semana.patente_id IS 'ID de la patente';
          public          postgres    false    295            
           0    0 "   COLUMN desordenadas_semana.imei_id    COMMENT     G   COMMENT ON COLUMN public.desordenadas_semana.imei_id IS 'Id del IMEI';
          public          postgres    false    295                       0    0     COLUMN desordenadas_semana.fecha    COMMENT     ]   COMMENT ON COLUMN public.desordenadas_semana.fecha IS 'Fecha de receepciÃ³n de la cadena';
          public          postgres    false    295                       0    0 !   COLUMN desordenadas_semana.semana    COMMENT     g   COMMENT ON COLUMN public.desordenadas_semana.semana IS 'Semana del marco del tiempo a evaluar (0-52)';
          public          postgres    false    295                       0    0    COLUMN desordenadas_semana.cant    COMMENT     z   COMMENT ON COLUMN public.desordenadas_semana.cant IS 'Cantidad de cadenas desordenadas recibidas en el marcho de tiempo';
          public          postgres    false    295                       0    0 %   COLUMN desordenadas_semana.created_at    COMMENT     g   COMMENT ON COLUMN public.desordenadas_semana.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    295                       0    0 %   COLUMN desordenadas_semana.updated_at    COMMENT     h   COMMENT ON COLUMN public.desordenadas_semana.updated_at IS 'Timestamp de modificaciÃ³n del registro';
          public          postgres    false    295                       0    0 %   COLUMN desordenadas_semana.deleted_at    COMMENT     h   COMMENT ON COLUMN public.desordenadas_semana.deleted_at IS 'Timestamp del borrado logico del registro';
          public          postgres    false    295            &           1259    53464    desordenadas_semana_id_seq    SEQUENCE     �   CREATE SEQUENCE public.desordenadas_semana_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.desordenadas_semana_id_seq;
       public          postgres    false    295                       0    0    desordenadas_semana_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.desordenadas_semana_id_seq OWNED BY public.desordenadas_semana.id;
          public          postgres    false    294            �            1259    53233    gb_perfiles    TABLE     #  CREATE TABLE public.gb_perfiles (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    permisos text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE public.gb_perfiles;
       public         heap    postgres    false                       0    0    TABLE gb_perfiles    COMMENT     @   COMMENT ON TABLE public.gb_perfiles IS 'Perrfiles dfe usuario';
          public          postgres    false    249                       0    0    COLUMN gb_perfiles.id    COMMENT     D   COMMENT ON COLUMN public.gb_perfiles.id IS 'ID unico del registro';
          public          postgres    false    249                       0    0    COLUMN gb_perfiles.nombre    COMMENT     P   COMMENT ON COLUMN public.gb_perfiles.nombre IS 'Nombre del perfil del usuario';
          public          postgres    false    249                       0    0    COLUMN gb_perfiles.permisos    COMMENT     I   COMMENT ON COLUMN public.gb_perfiles.permisos IS 'Permisos del usuario';
          public          postgres    false    249                       0    0    COLUMN gb_perfiles.created_at    COMMENT     Y   COMMENT ON COLUMN public.gb_perfiles.created_at IS 'Timestamp de creacion del registro';
          public          postgres    false    249                       0    0    COLUMN gb_perfiles.updated_at    COMMENT     ]   COMMENT ON COLUMN public.gb_perfiles.updated_at IS 'Timestamp de modificacion del registro';
          public          postgres    false    249                       0    0    COLUMN gb_perfiles.deleted_at    COMMENT     _   COMMENT ON COLUMN public.gb_perfiles.deleted_at IS 'Timestamp de borrado logico del registro';
          public          postgres    false    249            �            1259    53192    gb_perfiles_id_seq    SEQUENCE     {   CREATE SEQUENCE public.gb_perfiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.gb_perfiles_id_seq;
       public          postgres    false            �            1259    53193    gb_perfiles_id_seq1    SEQUENCE     |   CREATE SEQUENCE public.gb_perfiles_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.gb_perfiles_id_seq1;
       public          postgres    false            �            1259    53232    gb_perfiles_id_seq2    SEQUENCE     �   CREATE SEQUENCE public.gb_perfiles_id_seq2
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.gb_perfiles_id_seq2;
       public          postgres    false    249                       0    0    gb_perfiles_id_seq2    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.gb_perfiles_id_seq2 OWNED BY public.gb_perfiles.id;
          public          postgres    false    248                       1259    53360    gps_imei    TABLE     W  CREATE TABLE public.gps_imei (
    id bigint NOT NULL,
    transportista_id integer NOT NULL,
    proveedor_id bigint,
    patente_id bigint,
    imei character varying(15) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
    DROP TABLE public.gps_imei;
       public         heap    postgres    false                       0    0    TABLE gps_imei    COMMENT     b   COMMENT ON TABLE public.gps_imei IS 'Tabla de de IMEI vinculada a la patente y al transportista';
          public          postgres    false    277                       0    0    COLUMN gps_imei.id    COMMENT     A   COMMENT ON COLUMN public.gps_imei.id IS 'ID unico del registro';
          public          postgres    false    277                       0    0     COLUMN gps_imei.transportista_id    COMMENT     l   COMMENT ON COLUMN public.gps_imei.transportista_id IS 'ID del transportista al cualk pertenece la patente';
          public          postgres    false    277                       0    0    COLUMN gps_imei.proveedor_id    COMMENT     y   COMMENT ON COLUMN public.gps_imei.proveedor_id IS 'ID del proveefor de servicio GPS coion el cual se relaciona el IMEI';
          public          postgres    false    277                       0    0    COLUMN gps_imei.patente_id    COMMENT     e   COMMENT ON COLUMN public.gps_imei.patente_id IS 'ID de la patente con la cual se relaciona el IMWI';
          public          postgres    false    277                       0    0    COLUMN gps_imei.imei    COMMENT     K   COMMENT ON COLUMN public.gps_imei.imei IS 'CÂ´Ã³digo IMEI del equipo';
          public          postgres    false    277                        0    0    COLUMN gps_imei.created_at    COMMENT     V   COMMENT ON COLUMN public.gps_imei.created_at IS 'Timestamp de creacion del registro';
          public          postgres    false    277            !           0    0    COLUMN gps_imei.updated_at    COMMENT     Z   COMMENT ON COLUMN public.gps_imei.updated_at IS 'Timestamp de modificacion del registro';
          public          postgres    false    277            "           0    0    COLUMN gps_imei.deleted_at    COMMENT     \   COMMENT ON COLUMN public.gps_imei.deleted_at IS 'Timestamp de borrado logico del registro';
          public          postgres    false    277            �            1259    53194    gps_imei_id_seq    SEQUENCE     x   CREATE SEQUENCE public.gps_imei_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.gps_imei_id_seq;
       public          postgres    false            �            1259    53195    gps_imei_id_seq1    SEQUENCE     y   CREATE SEQUENCE public.gps_imei_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.gps_imei_id_seq1;
       public          postgres    false                       1259    53358    gps_imei_id_seq2    SEQUENCE     y   CREATE SEQUENCE public.gps_imei_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.gps_imei_id_seq2;
       public          postgres    false    277            #           0    0    gps_imei_id_seq2    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.gps_imei_id_seq2 OWNED BY public.gps_imei.id;
          public          postgres    false    275            �            1259    53196    gps_imei_transportista_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gps_imei_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.gps_imei_transportista_id_seq;
       public          postgres    false            �            1259    53197    gps_imei_transportista_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.gps_imei_transportista_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.gps_imei_transportista_id_seq1;
       public          postgres    false                       1259    53359    gps_imei_transportista_id_seq2    SEQUENCE     �   CREATE SEQUENCE public.gps_imei_transportista_id_seq2
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.gps_imei_transportista_id_seq2;
       public          postgres    false    277            $           0    0    gps_imei_transportista_id_seq2    SEQUENCE OWNED BY     `   ALTER SEQUENCE public.gps_imei_transportista_id_seq2 OWNED BY public.gps_imei.transportista_id;
          public          postgres    false    276            �            1259    53243    gps_proveedor    TABLE     D  CREATE TABLE public.gps_proveedor (
    id integer NOT NULL,
    razon_social character(50) NOT NULL,
    email character(50) NOT NULL,
    total integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
 !   DROP TABLE public.gps_proveedor;
       public         heap    postgres    false            %           0    0    TABLE gps_proveedor    COMMENT     T   COMMENT ON TABLE public.gps_proveedor IS 'Tabla del del provedor del dervicio GPS';
          public          postgres    false    251            &           0    0    COLUMN gps_proveedor.id    COMMENT     a   COMMENT ON COLUMN public.gps_proveedor.id IS 'IdentificaciuÂ´Ã³n Â´Ãºnico del registro';
          public          postgres    false    251            '           0    0 !   COLUMN gps_proveedor.razon_social    COMMENT     g   COMMENT ON COLUMN public.gps_proveedor.razon_social IS 'Razon sociual del proveedor del servicio GPS';
          public          postgres    false    251            (           0    0    COLUMN gps_proveedor.email    COMMENT     f   COMMENT ON COLUMN public.gps_proveedor.email IS 'Email del contacto del proveedor del sdervicio GPS';
          public          postgres    false    251            )           0    0    COLUMN gps_proveedor.total    COMMENT     x   COMMENT ON COLUMN public.gps_proveedor.total IS 'Cantidad total de vehiculos que maneja el proveedor del servicio GPS';
          public          postgres    false    251            *           0    0    COLUMN gps_proveedor.created_at    COMMENT     b   COMMENT ON COLUMN public.gps_proveedor.created_at IS 'Timestamp de creaciÂ´Ã³n del registro';
          public          postgres    false    251            +           0    0    COLUMN gps_proveedor.updated_at    COMMENT     l   COMMENT ON COLUMN public.gps_proveedor.updated_at IS 'Timestamp de actiaÃ±izacionÂ´Ã³n del registro';
          public          postgres    false    251            ,           0    0    COLUMN gps_proveedor.deleted_at    COMMENT     j   COMMENT ON COLUMN public.gps_proveedor.deleted_at IS 'Timestamp de borrado logicoÂ´Ã³n del registro';
          public          postgres    false    251            �            1259    53198    gps_proveedor_id_seq    SEQUENCE     }   CREATE SEQUENCE public.gps_proveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.gps_proveedor_id_seq;
       public          postgres    false            �            1259    53199    gps_proveedor_id_seq1    SEQUENCE     ~   CREATE SEQUENCE public.gps_proveedor_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.gps_proveedor_id_seq1;
       public          postgres    false            �            1259    53242    gps_proveedor_id_seq2    SEQUENCE     �   CREATE SEQUENCE public.gps_proveedor_id_seq2
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.gps_proveedor_id_seq2;
       public          postgres    false    251            -           0    0    gps_proveedor_id_seq2    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.gps_proveedor_id_seq2 OWNED BY public.gps_proveedor.id;
          public          postgres    false    250                       1259    53374    gps_real_time    TABLE     r  CREATE TABLE public.gps_real_time (
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
 !   DROP TABLE public.gps_real_time;
       public         heap    postgres    false            .           0    0    TABLE gps_real_time    COMMENT     ]   COMMENT ON TABLE public.gps_real_time IS 'Tabla de almacenamiento de toda la data entrante';
          public          postgres    false    279            /           0    0    COLUMN gps_real_time.id    COMMENT     X   COMMENT ON COLUMN public.gps_real_time.id IS 'IdentificaciÃ³n Ãºnica del registro';
          public          postgres    false    279            0           0    0    COLUMN gps_real_time.rejected    COMMENT     [   COMMENT ON COLUMN public.gps_real_time.rejected IS 'Cadena rechazada proveniente del gps';
          public          postgres    false    279            1           0    0    COLUMN gps_real_time.imei_id    COMMENT     B   COMMENT ON COLUMN public.gps_real_time.imei_id IS 'ID del  IMEI';
          public          postgres    false    279            2           0    0 !   COLUMN gps_real_time.proveedor_id    COMMENT     _   COMMENT ON COLUMN public.gps_real_time.proveedor_id IS 'ID del proveefor del dercivio de GPS';
          public          postgres    false    279            3           0    0    COLUMN gps_real_time.patente_id    COMMENT     I   COMMENT ON COLUMN public.gps_real_time.patente_id IS 'ID de la patente';
          public          postgres    false    279            4           0    0 "   COLUMN gps_real_time.timestamp_gps    COMMENT     s   COMMENT ON COLUMN public.gps_real_time.timestamp_gps IS 'Timestamp en la cual se generÃ³ la seÃ±al en el GPS';
          public          postgres    false    279            5           0    0 "   COLUMN gps_real_time.timestamp_sys    COMMENT     k   COMMENT ON COLUMN public.gps_real_time.timestamp_sys IS 'Timestamp de la recepciÃ³n de la data del GPS';
          public          postgres    false    279            6           0    0    COLUMN gps_real_time.frecuencia    COMMENT     t   COMMENT ON COLUMN public.gps_real_time.frecuencia IS 'Diferencia de tiempo entre el registro actual y el anterior';
          public          postgres    false    279            7           0    0    COLUMN gps_real_time.latencia    COMMENT     G   COMMENT ON COLUMN public.gps_real_time.latencia IS 'Latencia dek GPS';
          public          postgres    false    279            8           0    0    COLUMN gps_real_time.ordenada    COMMENT     �   COMMENT ON COLUMN public.gps_real_time.ordenada IS 'Indica si la fecha de recpciÃ³n del datos es posterior al dato anterior, en cuyo caso su valor es 1; si la fecha de recepciÃ³n es naterior al registro previo, su valor es 0';
          public          postgres    false    279            9           0    0    COLUMN gps_real_time.motor    COMMENT     �   COMMENT ON COLUMN public.gps_real_time.motor IS 'Indica si el dato fue enciado con el motor encendido o no; en caso de ser asi, su valor es 1, encaso contrario 0';
          public          postgres    false    279            :           0    0    COLUMN gps_real_time.created_at    COMMENT     ^   COMMENT ON COLUMN public.gps_real_time.created_at IS 'Timestamp de creaciÃ³n del registro';
          public          postgres    false    279            ;           0    0    COLUMN gps_real_time.updated_at    COMMENT     b   COMMENT ON COLUMN public.gps_real_time.updated_at IS 'Timestamp de modificaciÃ³n del registro';
          public          postgres    false    279            <           0    0    COLUMN gps_real_time.deleted_at    COMMENT     d   COMMENT ON COLUMN public.gps_real_time.deleted_at IS 'Timestamp de borrado lÃ³gico del registro';
          public          postgres    false    279            =           0    0    COLUMN gps_real_time.raw_data    COMMENT     X   COMMENT ON COLUMN public.gps_real_time.raw_data IS 'Data en bruto proveniente del GPS';
          public          postgres    false    279            �            1259    53200    gps_real_time_id_seq    SEQUENCE     }   CREATE SEQUENCE public.gps_real_time_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.gps_real_time_id_seq;
       public          postgres    false            �            1259    53201    gps_real_time_id_seq1    SEQUENCE     ~   CREATE SEQUENCE public.gps_real_time_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.gps_real_time_id_seq1;
       public          postgres    false                       1259    53373    gps_real_time_id_seq2    SEQUENCE     ~   CREATE SEQUENCE public.gps_real_time_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.gps_real_time_id_seq2;
       public          postgres    false    279            >           0    0    gps_real_time_id_seq2    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.gps_real_time_id_seq2 OWNED BY public.gps_real_time.id;
          public          postgres    false    278            
           1259    53315    gps_transportista    TABLE     k  CREATE TABLE public.gps_transportista (
    id integer NOT NULL,
    razon_social character(50) NOT NULL,
    codigo character(50) NOT NULL,
    email character(50) NOT NULL,
    total integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
 %   DROP TABLE public.gps_transportista;
       public         heap    postgres    false            ?           0    0    TABLE gps_transportista    COMMENT     L   COMMENT ON TABLE public.gps_transportista IS 'Tabla del del transportista';
          public          postgres    false    266            @           0    0    COLUMN gps_transportista.id    COMMENT     e   COMMENT ON COLUMN public.gps_transportista.id IS 'IdentificaciuÂ´Ã³n Â´Ãºnico del registro';
          public          postgres    false    266            A           0    0 %   COLUMN gps_transportista.razon_social    COMMENT     k   COMMENT ON COLUMN public.gps_transportista.razon_social IS 'Razon sociual del proveedor del servicio GPS';
          public          postgres    false    266            B           0    0    COLUMN gps_transportista.codigo    COMMENT     Q   COMMENT ON COLUMN public.gps_transportista.codigo IS 'Dodigo del transportista';
          public          postgres    false    266            C           0    0    COLUMN gps_transportista.email    COMMENT     j   COMMENT ON COLUMN public.gps_transportista.email IS 'Email del contacto del proveedor del sdervicio GPS';
          public          postgres    false    266            D           0    0    COLUMN gps_transportista.total    COMMENT     |   COMMENT ON COLUMN public.gps_transportista.total IS 'Cantidad total de vehiculos que maneja el proveedor del servicio GPS';
          public          postgres    false    266            E           0    0 #   COLUMN gps_transportista.created_at    COMMENT     f   COMMENT ON COLUMN public.gps_transportista.created_at IS 'Timestamp de creaciÂ´Ã³n del registro';
          public          postgres    false    266            F           0    0 #   COLUMN gps_transportista.updated_at    COMMENT     p   COMMENT ON COLUMN public.gps_transportista.updated_at IS 'Timestamp de actiaÃ±izacionÂ´Ã³n del registro';
          public          postgres    false    266            G           0    0 #   COLUMN gps_transportista.deleted_at    COMMENT     n   COMMENT ON COLUMN public.gps_transportista.deleted_at IS 'Timestamp de borrado logicoÂ´Ã³n del registro';
          public          postgres    false    266            �            1259    53202    gps_transportista_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gps_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.gps_transportista_id_seq;
       public          postgres    false            �            1259    53203    gps_transportista_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.gps_transportista_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.gps_transportista_id_seq1;
       public          postgres    false            	           1259    53314    gps_transportista_id_seq2    SEQUENCE     �   CREATE SEQUENCE public.gps_transportista_id_seq2
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.gps_transportista_id_seq2;
       public          postgres    false    266            H           0    0    gps_transportista_id_seq2    SEQUENCE OWNED BY     V   ALTER SEQUENCE public.gps_transportista_id_seq2 OWNED BY public.gps_transportista.id;
          public          postgres    false    265            �            1259    53204    stats_gps_day_id_seq    SEQUENCE     }   CREATE SEQUENCE public.stats_gps_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.stats_gps_day_id_seq;
       public          postgres    false            �            1259    53205    stats_gps_day_id_seq1    SEQUENCE     ~   CREATE SEQUENCE public.stats_gps_day_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.stats_gps_day_id_seq1;
       public          postgres    false                       1259    53388    stats_gps_dia_patente    TABLE     �  CREATE TABLE public.stats_gps_dia_patente (
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
 )   DROP TABLE public.stats_gps_dia_patente;
       public         heap    postgres    false            I           0    0    TABLE stats_gps_dia_patente    COMMENT     p   COMMENT ON TABLE public.stats_gps_dia_patente IS 'Almacena las estadÃ­sticas por dia de la data por patente';
          public          postgres    false    281            J           0    0    COLUMN stats_gps_dia_patente.id    COMMENT     Z   COMMENT ON COLUMN public.stats_gps_dia_patente.id IS 'Identificacion unica del registro';
          public          postgres    false    281            K           0    0 -   COLUMN stats_gps_dia_patente.transportista_id    COMMENT     [   COMMENT ON COLUMN public.stats_gps_dia_patente.transportista_id IS 'ID del transportista';
          public          postgres    false    281            L           0    0 )   COLUMN stats_gps_dia_patente.proveedor_id    COMMENT     h   COMMENT ON COLUMN public.stats_gps_dia_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';
          public          postgres    false    281            M           0    0 '   COLUMN stats_gps_dia_patente.patente_id    COMMENT     Q   COMMENT ON COLUMN public.stats_gps_dia_patente.patente_id IS 'ID de la patente';
          public          postgres    false    281            N           0    0 $   COLUMN stats_gps_dia_patente.imei_id    COMMENT     T   COMMENT ON COLUMN public.stats_gps_dia_patente.imei_id IS 'ID del IMEI del equipo';
          public          postgres    false    281            O           0    0 "   COLUMN stats_gps_dia_patente.fecha    COMMENT     L   COMMENT ON COLUMN public.stats_gps_dia_patente.fecha IS 'Fecha de la hora';
          public          postgres    false    281            P           0    0     COLUMN stats_gps_dia_patente.dia    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_patente.dia IS 'Hora del dÃ­a en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';
          public          postgres    false    281            Q           0    0 0   COLUMN stats_gps_dia_patente.frecuencia_motor_on    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';
          public          postgres    false    281            R           0    0 1   COLUMN stats_gps_dia_patente.frecuencia_motor_off    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';
          public          postgres    false    281            S           0    0 %   COLUMN stats_gps_dia_patente.latencia    COMMENT     |   COMMENT ON COLUMN public.stats_gps_dia_patente.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    281            T           0    0 *   COLUMN stats_gps_dia_patente.total_cadenas    COMMENT     m   COMMENT ON COLUMN public.stats_gps_dia_patente.total_cadenas IS 'Total de cadenas para una patente por dia';
          public          postgres    false    281            U           0    0 4   COLUMN stats_gps_dia_patente.total_cadenas_problemas    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_patente.total_cadenas_problemas IS 'Total de cadenas para una patente con problemas por dia';
          public          postgres    false    281            V           0    0 0   COLUMN stats_gps_dia_patente.q_patetentes_no_ign    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';
          public          postgres    false    281            W           0    0 4   COLUMN stats_gps_dia_patente.q_patentes_no_deteccion    COMMENT        COMMENT ON COLUMN public.stats_gps_dia_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';
          public          postgres    false    281            X           0    0 +   COLUMN stats_gps_dia_patente.q_desordenadas    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    281            Y           0    0 '   COLUMN stats_gps_dia_patente.created_at    COMMENT     i   COMMENT ON COLUMN public.stats_gps_dia_patente.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    281            Z           0    0 '   COLUMN stats_gps_dia_patente.updated_at    COMMENT     w   COMMENT ON COLUMN public.stats_gps_dia_patente.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';
          public          postgres    false    281            [           0    0 '   COLUMN stats_gps_dia_patente.deleted_at    COMMENT     m   COMMENT ON COLUMN public.stats_gps_dia_patente.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';
          public          postgres    false    281                       1259    53387    stats_gps_dia_patente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_gps_dia_patente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.stats_gps_dia_patente_id_seq;
       public          postgres    false    281            \           0    0    stats_gps_dia_patente_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.stats_gps_dia_patente_id_seq OWNED BY public.stats_gps_dia_patente.id;
          public          postgres    false    280                       1259    53323    stats_gps_dia_transportista    TABLE     m  CREATE TABLE public.stats_gps_dia_transportista (
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
 /   DROP TABLE public.stats_gps_dia_transportista;
       public         heap    postgres    false            ]           0    0 !   TABLE stats_gps_dia_transportista    COMMENT     �   COMMENT ON TABLE public.stats_gps_dia_transportista IS 'Almacena las estadÃ­sticas por hora de la data enviada por transportista';
          public          postgres    false    268            ^           0    0 %   COLUMN stats_gps_dia_transportista.id    COMMENT     `   COMMENT ON COLUMN public.stats_gps_dia_transportista.id IS 'Identificacion unica del registro';
          public          postgres    false    268            _           0    0 /   COLUMN stats_gps_dia_transportista.proveedor_id    COMMENT     j   COMMENT ON COLUMN public.stats_gps_dia_transportista.proveedor_id IS 'ID del proveedor del servicio GPS';
          public          postgres    false    268            `           0    0 (   COLUMN stats_gps_dia_transportista.fecha    COMMENT     R   COMMENT ON COLUMN public.stats_gps_dia_transportista.fecha IS 'Fecha de la hora';
          public          postgres    false    268            a           0    0 &   COLUMN stats_gps_dia_transportista.dia    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_transportista.dia IS 'Dia del mes en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';
          public          postgres    false    268            b           0    0 6   COLUMN stats_gps_dia_transportista.frecuencia_motor_on    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';
          public          postgres    false    268            c           0    0 7   COLUMN stats_gps_dia_transportista.frecuencia_motor_off    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';
          public          postgres    false    268            d           0    0 +   COLUMN stats_gps_dia_transportista.latencia    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_transportista.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    268            e           0    0 6   COLUMN stats_gps_dia_transportista.q_patetentes_no_ign    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';
          public          postgres    false    268            f           0    0 :   COLUMN stats_gps_dia_transportista.q_patentes_no_deteccion    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';
          public          postgres    false    268            g           0    0 1   COLUMN stats_gps_dia_transportista.q_desordenadas    COMMENT     �   COMMENT ON COLUMN public.stats_gps_dia_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    268            h           0    0 -   COLUMN stats_gps_dia_transportista.created_at    COMMENT     o   COMMENT ON COLUMN public.stats_gps_dia_transportista.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    268            i           0    0 -   COLUMN stats_gps_dia_transportista.updated_at    COMMENT     }   COMMENT ON COLUMN public.stats_gps_dia_transportista.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';
          public          postgres    false    268            j           0    0 -   COLUMN stats_gps_dia_transportista.deleted_at    COMMENT     s   COMMENT ON COLUMN public.stats_gps_dia_transportista.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';
          public          postgres    false    268                       1259    53322 "   stats_gps_dia_transportista_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_gps_dia_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.stats_gps_dia_transportista_id_seq;
       public          postgres    false    268            k           0    0 "   stats_gps_dia_transportista_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.stats_gps_dia_transportista_id_seq OWNED BY public.stats_gps_dia_transportista.id;
          public          postgres    false    267                       1259    53397    stats_gps_hora_patente    TABLE     �  CREATE TABLE public.stats_gps_hora_patente (
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
 *   DROP TABLE public.stats_gps_hora_patente;
       public         heap    postgres    false            l           0    0    TABLE stats_gps_hora_patente    COMMENT     z   COMMENT ON TABLE public.stats_gps_hora_patente IS 'Almacena las estadÃ­sticas por hora de la data enviada por patente';
          public          postgres    false    283            m           0    0     COLUMN stats_gps_hora_patente.id    COMMENT     [   COMMENT ON COLUMN public.stats_gps_hora_patente.id IS 'Identificacion unica del registro';
          public          postgres    false    283            n           0    0 .   COLUMN stats_gps_hora_patente.transportista_id    COMMENT     \   COMMENT ON COLUMN public.stats_gps_hora_patente.transportista_id IS 'ID del transportista';
          public          postgres    false    283            o           0    0 *   COLUMN stats_gps_hora_patente.proveedor_id    COMMENT     i   COMMENT ON COLUMN public.stats_gps_hora_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';
          public          postgres    false    283            p           0    0 (   COLUMN stats_gps_hora_patente.patente_id    COMMENT     R   COMMENT ON COLUMN public.stats_gps_hora_patente.patente_id IS 'ID de la patente';
          public          postgres    false    283            q           0    0 %   COLUMN stats_gps_hora_patente.imei_id    COMMENT     U   COMMENT ON COLUMN public.stats_gps_hora_patente.imei_id IS 'ID del imei del equipo';
          public          postgres    false    283            r           0    0 #   COLUMN stats_gps_hora_patente.fecha    COMMENT     M   COMMENT ON COLUMN public.stats_gps_hora_patente.fecha IS 'Fecha de la hora';
          public          postgres    false    283            s           0    0 "   COLUMN stats_gps_hora_patente.hora    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_patente.hora IS 'Hora del dÃ­a en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';
          public          postgres    false    283            t           0    0 1   COLUMN stats_gps_hora_patente.frecuencia_motor_on    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';
          public          postgres    false    283            u           0    0 2   COLUMN stats_gps_hora_patente.frecuencia_motor_off    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';
          public          postgres    false    283            v           0    0 &   COLUMN stats_gps_hora_patente.latencia    COMMENT     }   COMMENT ON COLUMN public.stats_gps_hora_patente.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    283            w           0    0 +   COLUMN stats_gps_hora_patente.total_cadenas    COMMENT     o   COMMENT ON COLUMN public.stats_gps_hora_patente.total_cadenas IS 'Total de cadenas para una patente por hora';
          public          postgres    false    283            x           0    0 5   COLUMN stats_gps_hora_patente.total_cadenas_problemas    COMMENT     v   COMMENT ON COLUMN public.stats_gps_hora_patente.total_cadenas_problemas IS 'Total de cadenas con problemas por hora';
          public          postgres    false    283            y           0    0 1   COLUMN stats_gps_hora_patente.q_patetentes_no_ign    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';
          public          postgres    false    283            z           0    0 5   COLUMN stats_gps_hora_patente.q_patentes_no_deteccion    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';
          public          postgres    false    283            {           0    0 ,   COLUMN stats_gps_hora_patente.q_desordenadas    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    283            |           0    0 (   COLUMN stats_gps_hora_patente.created_at    COMMENT     j   COMMENT ON COLUMN public.stats_gps_hora_patente.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    283            }           0    0 (   COLUMN stats_gps_hora_patente.updated_at    COMMENT     x   COMMENT ON COLUMN public.stats_gps_hora_patente.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';
          public          postgres    false    283            ~           0    0 (   COLUMN stats_gps_hora_patente.deleted_at    COMMENT     n   COMMENT ON COLUMN public.stats_gps_hora_patente.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';
          public          postgres    false    283                       1259    53396    stats_gps_hora_patente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_gps_hora_patente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.stats_gps_hora_patente_id_seq;
       public          postgres    false    283                       0    0    stats_gps_hora_patente_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.stats_gps_hora_patente_id_seq OWNED BY public.stats_gps_hora_patente.id;
          public          postgres    false    282                       1259    53332    stats_gps_hora_transportista    TABLE     o  CREATE TABLE public.stats_gps_hora_transportista (
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
 0   DROP TABLE public.stats_gps_hora_transportista;
       public         heap    postgres    false            �           0    0 "   TABLE stats_gps_hora_transportista    COMMENT     �   COMMENT ON TABLE public.stats_gps_hora_transportista IS 'Almacena las estadÃ­sticas por hora de la data enviada por lo sGPS transportista';
          public          postgres    false    270            �           0    0 &   COLUMN stats_gps_hora_transportista.id    COMMENT     a   COMMENT ON COLUMN public.stats_gps_hora_transportista.id IS 'Identificacion unica del registro';
          public          postgres    false    270            �           0    0 0   COLUMN stats_gps_hora_transportista.proveedor_id    COMMENT     k   COMMENT ON COLUMN public.stats_gps_hora_transportista.proveedor_id IS 'ID del proveedor de servicios GPS';
          public          postgres    false    270            �           0    0 )   COLUMN stats_gps_hora_transportista.fecha    COMMENT     S   COMMENT ON COLUMN public.stats_gps_hora_transportista.fecha IS 'Fecha de la hora';
          public          postgres    false    270            �           0    0 (   COLUMN stats_gps_hora_transportista.hora    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_transportista.hora IS 'Hora del dÃ­a en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';
          public          postgres    false    270            �           0    0 7   COLUMN stats_gps_hora_transportista.frecuencia_motor_on    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';
          public          postgres    false    270            �           0    0 8   COLUMN stats_gps_hora_transportista.frecuencia_motor_off    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';
          public          postgres    false    270            �           0    0 ,   COLUMN stats_gps_hora_transportista.latencia    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_transportista.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    270            �           0    0 7   COLUMN stats_gps_hora_transportista.q_patetentes_no_ign    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';
          public          postgres    false    270            �           0    0 ;   COLUMN stats_gps_hora_transportista.q_patentes_no_deteccion    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';
          public          postgres    false    270            �           0    0 2   COLUMN stats_gps_hora_transportista.q_desordenadas    COMMENT     �   COMMENT ON COLUMN public.stats_gps_hora_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    270            �           0    0 .   COLUMN stats_gps_hora_transportista.created_at    COMMENT     p   COMMENT ON COLUMN public.stats_gps_hora_transportista.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    270            �           0    0 .   COLUMN stats_gps_hora_transportista.updated_at    COMMENT     ~   COMMENT ON COLUMN public.stats_gps_hora_transportista.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';
          public          postgres    false    270            �           0    0 .   COLUMN stats_gps_hora_transportista.deleted_at    COMMENT     t   COMMENT ON COLUMN public.stats_gps_hora_transportista.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';
          public          postgres    false    270                       1259    53331 #   stats_gps_hora_transportista_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_gps_hora_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.stats_gps_hora_transportista_id_seq;
       public          postgres    false    270            �           0    0 #   stats_gps_hora_transportista_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.stats_gps_hora_transportista_id_seq OWNED BY public.stats_gps_hora_transportista.id;
          public          postgres    false    269            �            1259    53206    stats_gps_hour_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.stats_gps_hour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.stats_gps_hour_id_seq;
       public          postgres    false            �            1259    53207    stats_gps_hour_id_seq1    SEQUENCE        CREATE SEQUENCE public.stats_gps_hour_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.stats_gps_hour_id_seq1;
       public          postgres    false                       1259    53406    stats_gps_mes_patente    TABLE     �  CREATE TABLE public.stats_gps_mes_patente (
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
 )   DROP TABLE public.stats_gps_mes_patente;
       public         heap    postgres    false            �           0    0    TABLE stats_gps_mes_patente    COMMENT     p   COMMENT ON TABLE public.stats_gps_mes_patente IS 'Almacena las estadÃ­sticas por mes de la data por patente';
          public          postgres    false    285            �           0    0    COLUMN stats_gps_mes_patente.id    COMMENT     Z   COMMENT ON COLUMN public.stats_gps_mes_patente.id IS 'Identificacion unica del registro';
          public          postgres    false    285            �           0    0 -   COLUMN stats_gps_mes_patente.transportista_id    COMMENT     [   COMMENT ON COLUMN public.stats_gps_mes_patente.transportista_id IS 'ID del transportista';
          public          postgres    false    285            �           0    0 )   COLUMN stats_gps_mes_patente.proveedor_id    COMMENT     h   COMMENT ON COLUMN public.stats_gps_mes_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';
          public          postgres    false    285            �           0    0 '   COLUMN stats_gps_mes_patente.patente_id    COMMENT     Q   COMMENT ON COLUMN public.stats_gps_mes_patente.patente_id IS 'ID de la patente';
          public          postgres    false    285            �           0    0 $   COLUMN stats_gps_mes_patente.imei_id    COMMENT     Y   COMMENT ON COLUMN public.stats_gps_mes_patente.imei_id IS 'ID del IMEI del equuipo GPS';
          public          postgres    false    285            �           0    0 "   COLUMN stats_gps_mes_patente.fecha    COMMENT     L   COMMENT ON COLUMN public.stats_gps_mes_patente.fecha IS 'Fecha de la hora';
          public          postgres    false    285            �           0    0     COLUMN stats_gps_mes_patente.mes    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_patente.mes IS 'Mes del aÃ±o en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';
          public          postgres    false    285            �           0    0 0   COLUMN stats_gps_mes_patente.frecuencia_motor_on    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';
          public          postgres    false    285            �           0    0 1   COLUMN stats_gps_mes_patente.frecuencia_motor_off    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';
          public          postgres    false    285            �           0    0 %   COLUMN stats_gps_mes_patente.latencia    COMMENT     |   COMMENT ON COLUMN public.stats_gps_mes_patente.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    285            �           0    0 *   COLUMN stats_gps_mes_patente.total_cadenas    COMMENT     m   COMMENT ON COLUMN public.stats_gps_mes_patente.total_cadenas IS 'Total de cadenas para una patente por mes';
          public          postgres    false    285            �           0    0 5   COLUMN stats_gps_mes_patente.total_patentes_problemas    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_patente.total_patentes_problemas IS 'Total de cadenas para una patente con problemas por mes';
          public          postgres    false    285            �           0    0 0   COLUMN stats_gps_mes_patente.q_patetentes_no_ign    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';
          public          postgres    false    285            �           0    0 4   COLUMN stats_gps_mes_patente.q_patentes_no_deteccion    COMMENT        COMMENT ON COLUMN public.stats_gps_mes_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';
          public          postgres    false    285            �           0    0 +   COLUMN stats_gps_mes_patente.q_desordenadas    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    285            �           0    0 '   COLUMN stats_gps_mes_patente.created_at    COMMENT     i   COMMENT ON COLUMN public.stats_gps_mes_patente.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    285            �           0    0 '   COLUMN stats_gps_mes_patente.updated_at    COMMENT     w   COMMENT ON COLUMN public.stats_gps_mes_patente.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';
          public          postgres    false    285            �           0    0 '   COLUMN stats_gps_mes_patente.deleted_at    COMMENT     m   COMMENT ON COLUMN public.stats_gps_mes_patente.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';
          public          postgres    false    285                       1259    53405    stats_gps_mes_patente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_gps_mes_patente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.stats_gps_mes_patente_id_seq;
       public          postgres    false    285            �           0    0    stats_gps_mes_patente_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.stats_gps_mes_patente_id_seq OWNED BY public.stats_gps_mes_patente.id;
          public          postgres    false    284                       1259    53341    stats_gps_mes_transportista    TABLE     m  CREATE TABLE public.stats_gps_mes_transportista (
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
 /   DROP TABLE public.stats_gps_mes_transportista;
       public         heap    postgres    false            �           0    0 !   TABLE stats_gps_mes_transportista    COMMENT     �   COMMENT ON TABLE public.stats_gps_mes_transportista IS 'Almacena las estadÃ­sticas por mes de la data enviada por transportista';
          public          postgres    false    272            �           0    0 %   COLUMN stats_gps_mes_transportista.id    COMMENT     `   COMMENT ON COLUMN public.stats_gps_mes_transportista.id IS 'Identificacion unica del registro';
          public          postgres    false    272            �           0    0 /   COLUMN stats_gps_mes_transportista.proveedor_id    COMMENT     j   COMMENT ON COLUMN public.stats_gps_mes_transportista.proveedor_id IS 'ID del proveedor del servicio GPS';
          public          postgres    false    272            �           0    0 (   COLUMN stats_gps_mes_transportista.fecha    COMMENT     R   COMMENT ON COLUMN public.stats_gps_mes_transportista.fecha IS 'Fecha de la hora';
          public          postgres    false    272            �           0    0 &   COLUMN stats_gps_mes_transportista.mes    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_transportista.mes IS 'Mes del aÃ±o en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';
          public          postgres    false    272            �           0    0 6   COLUMN stats_gps_mes_transportista.frecuencia_motor_on    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';
          public          postgres    false    272            �           0    0 7   COLUMN stats_gps_mes_transportista.frecuencia_motor_off    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';
          public          postgres    false    272            �           0    0 +   COLUMN stats_gps_mes_transportista.latencia    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_transportista.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    272            �           0    0 6   COLUMN stats_gps_mes_transportista.q_patetentes_no_ign    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';
          public          postgres    false    272            �           0    0 :   COLUMN stats_gps_mes_transportista.q_patentes_no_deteccion    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';
          public          postgres    false    272            �           0    0 1   COLUMN stats_gps_mes_transportista.q_desordenadas    COMMENT     �   COMMENT ON COLUMN public.stats_gps_mes_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    272            �           0    0 -   COLUMN stats_gps_mes_transportista.created_at    COMMENT     o   COMMENT ON COLUMN public.stats_gps_mes_transportista.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    272            �           0    0 -   COLUMN stats_gps_mes_transportista.updated_at    COMMENT     }   COMMENT ON COLUMN public.stats_gps_mes_transportista.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';
          public          postgres    false    272            �           0    0 -   COLUMN stats_gps_mes_transportista.deleted_at    COMMENT     s   COMMENT ON COLUMN public.stats_gps_mes_transportista.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';
          public          postgres    false    272                       1259    53340 "   stats_gps_mes_transportista_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_gps_mes_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.stats_gps_mes_transportista_id_seq;
       public          postgres    false    272            �           0    0 "   stats_gps_mes_transportista_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.stats_gps_mes_transportista_id_seq OWNED BY public.stats_gps_mes_transportista.id;
          public          postgres    false    271            �            1259    53208    stats_gps_month_id_seq    SEQUENCE        CREATE SEQUENCE public.stats_gps_month_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.stats_gps_month_id_seq;
       public          postgres    false                       1259    53415    stats_gps_semana_patente    TABLE     �  CREATE TABLE public.stats_gps_semana_patente (
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
 ,   DROP TABLE public.stats_gps_semana_patente;
       public         heap    postgres    false            �           0    0    TABLE stats_gps_semana_patente    COMMENT     v   COMMENT ON TABLE public.stats_gps_semana_patente IS 'Almacena las estadÃ­sticas por semana de la data POR PATENTE';
          public          postgres    false    287            �           0    0 "   COLUMN stats_gps_semana_patente.id    COMMENT     ]   COMMENT ON COLUMN public.stats_gps_semana_patente.id IS 'Identificacion unica del registro';
          public          postgres    false    287            �           0    0 0   COLUMN stats_gps_semana_patente.transportista_id    COMMENT     ^   COMMENT ON COLUMN public.stats_gps_semana_patente.transportista_id IS 'ID del transportista';
          public          postgres    false    287            �           0    0 ,   COLUMN stats_gps_semana_patente.proveedor_id    COMMENT     k   COMMENT ON COLUMN public.stats_gps_semana_patente.proveedor_id IS 'Id del prtoveedor del servicio de GPS';
          public          postgres    false    287            �           0    0 *   COLUMN stats_gps_semana_patente.patente_id    COMMENT     T   COMMENT ON COLUMN public.stats_gps_semana_patente.patente_id IS 'ID de la patente';
          public          postgres    false    287            �           0    0 '   COLUMN stats_gps_semana_patente.imei_id    COMMENT     [   COMMENT ON COLUMN public.stats_gps_semana_patente.imei_id IS 'ID del IMEI del equipo GPS';
          public          postgres    false    287            �           0    0 %   COLUMN stats_gps_semana_patente.fecha    COMMENT     O   COMMENT ON COLUMN public.stats_gps_semana_patente.fecha IS 'Fecha de la hora';
          public          postgres    false    287            �           0    0 &   COLUMN stats_gps_semana_patente.semana    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_patente.semana IS 'Semana del aÃ±o en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';
          public          postgres    false    287            �           0    0 3   COLUMN stats_gps_semana_patente.frecuencia_motor_on    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_patente.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';
          public          postgres    false    287            �           0    0 4   COLUMN stats_gps_semana_patente.frecuencia_motor_off    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_patente.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';
          public          postgres    false    287            �           0    0 (   COLUMN stats_gps_semana_patente.latencia    COMMENT        COMMENT ON COLUMN public.stats_gps_semana_patente.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    287            �           0    0 -   COLUMN stats_gps_semana_patente.total_cadenas    COMMENT     s   COMMENT ON COLUMN public.stats_gps_semana_patente.total_cadenas IS 'Total de cadenas para una patente por semana';
          public          postgres    false    287            �           0    0 7   COLUMN stats_gps_semana_patente.total_cadenas_problemas    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_patente.total_cadenas_problemas IS 'Total de cadenas para una patente con problemas por semana';
          public          postgres    false    287            �           0    0 3   COLUMN stats_gps_semana_patente.q_patetentes_no_ign    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_patente.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';
          public          postgres    false    287            �           0    0 7   COLUMN stats_gps_semana_patente.q_patentes_no_deteccion    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_patente.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';
          public          postgres    false    287            �           0    0 .   COLUMN stats_gps_semana_patente.q_desordenadas    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_patente.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    287            �           0    0 *   COLUMN stats_gps_semana_patente.created_at    COMMENT     l   COMMENT ON COLUMN public.stats_gps_semana_patente.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    287            �           0    0 *   COLUMN stats_gps_semana_patente.updated_at    COMMENT     z   COMMENT ON COLUMN public.stats_gps_semana_patente.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';
          public          postgres    false    287            �           0    0 *   COLUMN stats_gps_semana_patente.deleted_at    COMMENT     p   COMMENT ON COLUMN public.stats_gps_semana_patente.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';
          public          postgres    false    287                       1259    53414    stats_gps_semana_patente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_gps_semana_patente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.stats_gps_semana_patente_id_seq;
       public          postgres    false    287            �           0    0    stats_gps_semana_patente_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.stats_gps_semana_patente_id_seq OWNED BY public.stats_gps_semana_patente.id;
          public          postgres    false    286                       1259    53350    stats_gps_semana_transportista    TABLE     s  CREATE TABLE public.stats_gps_semana_transportista (
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
 2   DROP TABLE public.stats_gps_semana_transportista;
       public         heap    postgres    false            �           0    0 $   TABLE stats_gps_semana_transportista    COMMENT     �   COMMENT ON TABLE public.stats_gps_semana_transportista IS 'Almacena las estadÃ­sticas por semana de la data enviada por transportista';
          public          postgres    false    274            �           0    0 (   COLUMN stats_gps_semana_transportista.id    COMMENT     c   COMMENT ON COLUMN public.stats_gps_semana_transportista.id IS 'Identificacion unica del registro';
          public          postgres    false    274            �           0    0 2   COLUMN stats_gps_semana_transportista.proveedor_id    COMMENT     m   COMMENT ON COLUMN public.stats_gps_semana_transportista.proveedor_id IS 'ID del proveedor del servicio GPS';
          public          postgres    false    274            �           0    0 +   COLUMN stats_gps_semana_transportista.fecha    COMMENT     U   COMMENT ON COLUMN public.stats_gps_semana_transportista.fecha IS 'Fecha de la hora';
          public          postgres    false    274            �           0    0 ,   COLUMN stats_gps_semana_transportista.semana    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_transportista.semana IS 'Semana del aÃ±o en la cual se genera el resÃºmen de la estadÃ­stica, para esa fecha';
          public          postgres    false    274            �           0    0 9   COLUMN stats_gps_semana_transportista.frecuencia_motor_on    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_transportista.frecuencia_motor_on IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor encendido';
          public          postgres    false    274            �           0    0 :   COLUMN stats_gps_semana_transportista.frecuencia_motor_off    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_transportista.frecuencia_motor_off IS 'Frecuencia promedio del envio de datos durante esa hora del dÃ­a, para esa fecha con el motor apagado';
          public          postgres    false    274            �           0    0 .   COLUMN stats_gps_semana_transportista.latencia    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_transportista.latencia IS 'Latencia promedio durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    274            �           0    0 9   COLUMN stats_gps_semana_transportista.q_patetentes_no_ign    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_transportista.q_patetentes_no_ign IS 'Patentes sin eventos de ignidiÂ´Ã³n en las ultimas 24 horas';
          public          postgres    false    274            �           0    0 =   COLUMN stats_gps_semana_transportista.q_patentes_no_deteccion    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_transportista.q_patentes_no_deteccion IS 'Patentes sin evcentos las Â´Ãºltimas 24 horas';
          public          postgres    false    274            �           0    0 4   COLUMN stats_gps_semana_transportista.q_desordenadas    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_transportista.q_desordenadas IS 'Cantidad de registros desordenados durante esa hora del dÃ­a, para esa fecha';
          public          postgres    false    274            �           0    0 0   COLUMN stats_gps_semana_transportista.created_at    COMMENT     r   COMMENT ON COLUMN public.stats_gps_semana_transportista.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    274            �           0    0 0   COLUMN stats_gps_semana_transportista.updated_at    COMMENT     �   COMMENT ON COLUMN public.stats_gps_semana_transportista.updated_at IS 'Timestamp de la Ãºltima modificaciÃ³n del registro';
          public          postgres    false    274            �           0    0 0   COLUMN stats_gps_semana_transportista.deleted_at    COMMENT     v   COMMENT ON COLUMN public.stats_gps_semana_transportista.deleted_at IS 'Timestamp del borrado lÃ³gico del registro';
          public          postgres    false    274                       1259    53349 %   stats_gps_semana_transportista_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_gps_semana_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.stats_gps_semana_transportista_id_seq;
       public          postgres    false    274            �           0    0 %   stats_gps_semana_transportista_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.stats_gps_semana_transportista_id_seq OWNED BY public.stats_gps_semana_transportista.id;
          public          postgres    false    273            �            1259    53209    stats_gps_week_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.stats_gps_week_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.stats_gps_week_id_seq;
       public          postgres    false            �            1259    53210    stats_gps_week_id_seq1    SEQUENCE        CREATE SEQUENCE public.stats_gps_week_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.stats_gps_week_id_seq1;
       public          postgres    false            �            1259    53251    stats_trafic_proveedor_day    TABLE     ;  CREATE TABLE public.stats_trafic_proveedor_day (
    id bigint NOT NULL,
    proveedor_id integer,
    fecha date NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
 .   DROP TABLE public.stats_trafic_proveedor_day;
       public         heap    postgres    false            �           0    0     TABLE stats_trafic_proveedor_day    COMMENT     o   COMMENT ON TABLE public.stats_trafic_proveedor_day IS 'StadÃ­sitcas de trÃ¡fico del proveedor por minuto';
          public          postgres    false    253            �           0    0 $   COLUMN stats_trafic_proveedor_day.id    COMMENT     ^   COMMENT ON COLUMN public.stats_trafic_proveedor_day.id IS 'Identificador unico del registro';
          public          postgres    false    253            �           0    0 .   COLUMN stats_trafic_proveedor_day.proveedor_id    COMMENT     T   COMMENT ON COLUMN public.stats_trafic_proveedor_day.proveedor_id IS 'ID dfeÃ±pr';
          public          postgres    false    253            �           0    0 '   COLUMN stats_trafic_proveedor_day.fecha    COMMENT     Q   COMMENT ON COLUMN public.stats_trafic_proveedor_day.fecha IS 'Fecha de la data';
          public          postgres    false    253            �           0    0 *   COLUMN stats_trafic_proveedor_day.cantidad    COMMENT     n   COMMENT ON COLUMN public.stats_trafic_proveedor_day.cantidad IS 'Cantidad recibidos en la ventana de tiempo';
          public          postgres    false    253            �           0    0 ,   COLUMN stats_trafic_proveedor_day.created_at    COMMENT     n   COMMENT ON COLUMN public.stats_trafic_proveedor_day.created_at IS 'Timestamp de la creaciÃ³n del registro';
          public          postgres    false    253            �           0    0 ,   COLUMN stats_trafic_proveedor_day.updated_at    COMMENT     z   COMMENT ON COLUMN public.stats_trafic_proveedor_day.updated_at IS 'Timestamp de la ultima actualizaciÃ³n del registro';
          public          postgres    false    253            �           0    0 ,   COLUMN stats_trafic_proveedor_day.deleted_at    COMMENT     o   COMMENT ON COLUMN public.stats_trafic_proveedor_day.deleted_at IS 'Timestamp del borrado logico del registro';
          public          postgres    false    253            �            1259    53211 !   stats_trafic_proveedor_day_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_trafic_proveedor_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.stats_trafic_proveedor_day_id_seq;
       public          postgres    false            �            1259    53212 "   stats_trafic_proveedor_day_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.stats_trafic_proveedor_day_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.stats_trafic_proveedor_day_id_seq1;
       public          postgres    false            �            1259    53250 "   stats_trafic_proveedor_day_id_seq2    SEQUENCE     �   CREATE SEQUENCE public.stats_trafic_proveedor_day_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.stats_trafic_proveedor_day_id_seq2;
       public          postgres    false    253            �           0    0 "   stats_trafic_proveedor_day_id_seq2    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.stats_trafic_proveedor_day_id_seq2 OWNED BY public.stats_trafic_proveedor_day.id;
          public          postgres    false    252            �            1259    53260    stats_trafic_proveedor_hour    TABLE     a  CREATE TABLE public.stats_trafic_proveedor_hour (
    id bigint NOT NULL,
    proveedor_id integer NOT NULL,
    fecha date NOT NULL,
    hora smallint NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
 /   DROP TABLE public.stats_trafic_proveedor_hour;
       public         heap    postgres    false            �           0    0 !   TABLE stats_trafic_proveedor_hour    COMMENT     n   COMMENT ON TABLE public.stats_trafic_proveedor_hour IS 'StadÃ­sitcas de trÃ¡fico del proveedor por hora';
          public          postgres    false    255            �           0    0 %   COLUMN stats_trafic_proveedor_hour.id    COMMENT     _   COMMENT ON COLUMN public.stats_trafic_proveedor_hour.id IS 'Identificador unico del registro';
          public          postgres    false    255            �           0    0 /   COLUMN stats_trafic_proveedor_hour.proveedor_id    COMMENT     Y   COMMENT ON COLUMN public.stats_trafic_proveedor_hour.proveedor_id IS 'ID del probeedpr';
          public          postgres    false    255            �           0    0 (   COLUMN stats_trafic_proveedor_hour.fecha    COMMENT     R   COMMENT ON COLUMN public.stats_trafic_proveedor_hour.fecha IS 'Fecha de la data';
          public          postgres    false    255            �           0    0 '   COLUMN stats_trafic_proveedor_hour.hora    COMMENT     P   COMMENT ON COLUMN public.stats_trafic_proveedor_hour.hora IS 'Hora de la data';
          public          postgres    false    255            �           0    0 +   COLUMN stats_trafic_proveedor_hour.cantidad    COMMENT     o   COMMENT ON COLUMN public.stats_trafic_proveedor_hour.cantidad IS 'Cantidad recibidos en la ventana de tiempo';
          public          postgres    false    255            �           0    0 -   COLUMN stats_trafic_proveedor_hour.created_at    COMMENT     l   COMMENT ON COLUMN public.stats_trafic_proveedor_hour.created_at IS 'Timestamp de creaciÃ³n del registro';
          public          postgres    false    255            �           0    0 -   COLUMN stats_trafic_proveedor_hour.updated_at    COMMENT     {   COMMENT ON COLUMN public.stats_trafic_proveedor_hour.updated_at IS 'Timestamp de Ãºltima actualizaciÃ³n del registro';
          public          postgres    false    255            �           0    0 -   COLUMN stats_trafic_proveedor_hour.deleted_at    COMMENT     p   COMMENT ON COLUMN public.stats_trafic_proveedor_hour.deleted_at IS 'Timestamp del borrado logico del registro';
          public          postgres    false    255            �            1259    53213 "   stats_trafic_proveedor_hour_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_trafic_proveedor_hour_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.stats_trafic_proveedor_hour_id_seq;
       public          postgres    false            �            1259    53214 #   stats_trafic_proveedor_hour_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.stats_trafic_proveedor_hour_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.stats_trafic_proveedor_hour_id_seq1;
       public          postgres    false            �            1259    53259 #   stats_trafic_proveedor_hour_id_seq2    SEQUENCE     �   CREATE SEQUENCE public.stats_trafic_proveedor_hour_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.stats_trafic_proveedor_hour_id_seq2;
       public          postgres    false    255            �           0    0 #   stats_trafic_proveedor_hour_id_seq2    SEQUENCE OWNED BY     j   ALTER SEQUENCE public.stats_trafic_proveedor_hour_id_seq2 OWNED BY public.stats_trafic_proveedor_hour.id;
          public          postgres    false    254                       1259    53269    stats_trafic_proveedor_min    TABLE     �  CREATE TABLE public.stats_trafic_proveedor_min (
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
 .   DROP TABLE public.stats_trafic_proveedor_min;
       public         heap    postgres    false            �           0    0     TABLE stats_trafic_proveedor_min    COMMENT     o   COMMENT ON TABLE public.stats_trafic_proveedor_min IS 'StadÃ­sitcas de trÃ¡fico del proveedor por minuto';
          public          postgres    false    257            �           0    0 $   COLUMN stats_trafic_proveedor_min.id    COMMENT     ^   COMMENT ON COLUMN public.stats_trafic_proveedor_min.id IS 'Identificador unico del registro';
          public          postgres    false    257            �           0    0 .   COLUMN stats_trafic_proveedor_min.proveedor_id    COMMENT     X   COMMENT ON COLUMN public.stats_trafic_proveedor_min.proveedor_id IS 'ID del probeedpr';
          public          postgres    false    257            �           0    0 '   COLUMN stats_trafic_proveedor_min.fecha    COMMENT     Q   COMMENT ON COLUMN public.stats_trafic_proveedor_min.fecha IS 'Fecha de la data';
          public          postgres    false    257            �           0    0 &   COLUMN stats_trafic_proveedor_min.hora    COMMENT     O   COMMENT ON COLUMN public.stats_trafic_proveedor_min.hora IS 'Hora de la data';
          public          postgres    false    257            �           0    0 (   COLUMN stats_trafic_proveedor_min.minuto    COMMENT     \   COMMENT ON COLUMN public.stats_trafic_proveedor_min.minuto IS 'Minuto de la data (0 - 59)';
          public          postgres    false    257            �           0    0 '   COLUMN stats_trafic_proveedor_min.motor    COMMENT     |   COMMENT ON COLUMN public.stats_trafic_proveedor_min.motor IS 'Estado de igniciÂ´Ã³n del motor: 0 apagado  1 encendido';
          public          postgres    false    257            �           0    0 *   COLUMN stats_trafic_proveedor_min.cantidad    COMMENT     n   COMMENT ON COLUMN public.stats_trafic_proveedor_min.cantidad IS 'Cantidad recibidos en la ventana de tiempo';
          public          postgres    false    257            �           0    0 ,   COLUMN stats_trafic_proveedor_min.created_at    COMMENT     k   COMMENT ON COLUMN public.stats_trafic_proveedor_min.created_at IS 'Timestamp de creaciÃ³n del registro';
          public          postgres    false    257            �           0    0 ,   COLUMN stats_trafic_proveedor_min.updated_at    COMMENT     z   COMMENT ON COLUMN public.stats_trafic_proveedor_min.updated_at IS 'Timestamp de Ãºltima actualizaciÃ³n del registro';
          public          postgres    false    257            �           0    0 ,   COLUMN stats_trafic_proveedor_min.deleted_at    COMMENT     o   COMMENT ON COLUMN public.stats_trafic_proveedor_min.deleted_at IS 'Timestamp del borrado logico del registro';
          public          postgres    false    257            �            1259    53215 !   stats_trafic_proveedor_min_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_trafic_proveedor_min_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.stats_trafic_proveedor_min_id_seq;
       public          postgres    false            �            1259    53216 "   stats_trafic_proveedor_min_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.stats_trafic_proveedor_min_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.stats_trafic_proveedor_min_id_seq1;
       public          postgres    false                        1259    53268 "   stats_trafic_proveedor_min_id_seq2    SEQUENCE     �   CREATE SEQUENCE public.stats_trafic_proveedor_min_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.stats_trafic_proveedor_min_id_seq2;
       public          postgres    false    257            �           0    0 "   stats_trafic_proveedor_min_id_seq2    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.stats_trafic_proveedor_min_id_seq2 OWNED BY public.stats_trafic_proveedor_min.id;
          public          postgres    false    256                       1259    53278    stats_trafic_proveedor_month    TABLE     Q  CREATE TABLE public.stats_trafic_proveedor_month (
    id bigint NOT NULL,
    proveedor_id integer,
    anio integer,
    mes smallint NOT NULL,
    cantidad integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
 0   DROP TABLE public.stats_trafic_proveedor_month;
       public         heap    postgres    false            �           0    0 "   TABLE stats_trafic_proveedor_month    COMMENT     n   COMMENT ON TABLE public.stats_trafic_proveedor_month IS 'StadÃ­sitcas de trÃ¡fico del proveedor por mes';
          public          postgres    false    259            �           0    0 &   COLUMN stats_trafic_proveedor_month.id    COMMENT     `   COMMENT ON COLUMN public.stats_trafic_proveedor_month.id IS 'Identificador unico del registro';
          public          postgres    false    259            �           0    0 0   COLUMN stats_trafic_proveedor_month.proveedor_id    COMMENT     h   COMMENT ON COLUMN public.stats_trafic_proveedor_month.proveedor_id IS 'ID del proveedor de servio GPS';
          public          postgres    false    259            �           0    0 (   COLUMN stats_trafic_proveedor_month.anio    COMMENT     P   COMMENT ON COLUMN public.stats_trafic_proveedor_month.anio IS 'Aniode del mes';
          public          postgres    false    259            �           0    0 '   COLUMN stats_trafic_proveedor_month.mes    COMMENT     V   COMMENT ON COLUMN public.stats_trafic_proveedor_month.mes IS 'Mes de la data (1-12)';
          public          postgres    false    259            �           0    0 ,   COLUMN stats_trafic_proveedor_month.cantidad    COMMENT     p   COMMENT ON COLUMN public.stats_trafic_proveedor_month.cantidad IS 'Cantidad recibidos en la ventana de tiempo';
          public          postgres    false    259            �           0    0 .   COLUMN stats_trafic_proveedor_month.created_at    COMMENT     m   COMMENT ON COLUMN public.stats_trafic_proveedor_month.created_at IS 'Timestamp de creaciÃ³n del registro';
          public          postgres    false    259            �           0    0 .   COLUMN stats_trafic_proveedor_month.updated_at    COMMENT     y   COMMENT ON COLUMN public.stats_trafic_proveedor_month.updated_at IS 'Timestamp de la ultima actualizacion del registro';
          public          postgres    false    259            �           0    0 .   COLUMN stats_trafic_proveedor_month.deleted_at    COMMENT     q   COMMENT ON COLUMN public.stats_trafic_proveedor_month.deleted_at IS 'Timestamp del borrado logico del registro';
          public          postgres    false    259            �            1259    53217 #   stats_trafic_proveedor_month_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stats_trafic_proveedor_month_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.stats_trafic_proveedor_month_id_seq;
       public          postgres    false            �            1259    53218 $   stats_trafic_proveedor_month_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.stats_trafic_proveedor_month_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.stats_trafic_proveedor_month_id_seq1;
       public          postgres    false                       1259    53277 $   stats_trafic_proveedor_month_id_seq2    SEQUENCE     �   CREATE SEQUENCE public.stats_trafic_proveedor_month_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.stats_trafic_proveedor_month_id_seq2;
       public          postgres    false    259            �           0    0 $   stats_trafic_proveedor_month_id_seq2    SEQUENCE OWNED BY     l   ALTER SEQUENCE public.stats_trafic_proveedor_month_id_seq2 OWNED BY public.stats_trafic_proveedor_month.id;
          public          postgres    false    258                       1259    53288    trn_patentes    TABLE       CREATE TABLE public.trn_patentes (
    id bigint NOT NULL,
    transportista_id integer NOT NULL,
    patente character(6),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone,
    deleted_at timestamp without time zone
);
     DROP TABLE public.trn_patentes;
       public         heap    postgres    false            �           0    0    TABLE trn_patentes    COMMENT     S   COMMENT ON TABLE public.trn_patentes IS 'Tabla de patentes de los transportistas';
          public          postgres    false    262            �           0    0    COLUMN trn_patentes.id    COMMENT     E   COMMENT ON COLUMN public.trn_patentes.id IS 'ID unico del registro';
          public          postgres    false    262                        0    0 $   COLUMN trn_patentes.transportista_id    COMMENT     p   COMMENT ON COLUMN public.trn_patentes.transportista_id IS 'ID del transportista al cualk pertenece la patente';
          public          postgres    false    262                       0    0    COLUMN trn_patentes.patente    COMMENT     P   COMMENT ON COLUMN public.trn_patentes.patente IS 'Â´Â´umero de la patente';
          public          postgres    false    262                       0    0    COLUMN trn_patentes.created_at    COMMENT     Z   COMMENT ON COLUMN public.trn_patentes.created_at IS 'Timestamp de creacion del registro';
          public          postgres    false    262                       0    0    COLUMN trn_patentes.updated_at    COMMENT     ^   COMMENT ON COLUMN public.trn_patentes.updated_at IS 'Timestamp de modificacion del registro';
          public          postgres    false    262                       0    0    COLUMN trn_patentes.deleted_at    COMMENT     `   COMMENT ON COLUMN public.trn_patentes.deleted_at IS 'Timestamp de borrado logico del registro';
          public          postgres    false    262            �            1259    53219    trn_patentes_id_seq    SEQUENCE     |   CREATE SEQUENCE public.trn_patentes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.trn_patentes_id_seq;
       public          postgres    false            �            1259    53220    trn_patentes_id_seq1    SEQUENCE     }   CREATE SEQUENCE public.trn_patentes_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.trn_patentes_id_seq1;
       public          postgres    false                       1259    53286    trn_patentes_id_seq2    SEQUENCE     }   CREATE SEQUENCE public.trn_patentes_id_seq2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.trn_patentes_id_seq2;
       public          postgres    false    262                       0    0    trn_patentes_id_seq2    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.trn_patentes_id_seq2 OWNED BY public.trn_patentes.id;
          public          postgres    false    260            �            1259    53221 !   trn_patentes_transportista_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trn_patentes_transportista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.trn_patentes_transportista_id_seq;
       public          postgres    false            �            1259    53222 "   trn_patentes_transportista_id_seq1    SEQUENCE     �   CREATE SEQUENCE public.trn_patentes_transportista_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.trn_patentes_transportista_id_seq1;
       public          postgres    false                       1259    53287 "   trn_patentes_transportista_id_seq2    SEQUENCE     �   CREATE SEQUENCE public.trn_patentes_transportista_id_seq2
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.trn_patentes_transportista_id_seq2;
       public          postgres    false    262                       0    0 "   trn_patentes_transportista_id_seq2    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.trn_patentes_transportista_id_seq2 OWNED BY public.trn_patentes.transportista_id;
          public          postgres    false    261            �            1259    53223    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false                       1259    53301    users    TABLE     L  CREATE TABLE public.users (
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
    DROP TABLE public.users;
       public         heap    postgres    false                       0    0    TABLE users    COMMENT     6   COMMENT ON TABLE public.users IS 'Tabla de usuarios';
          public          postgres    false    264                       0    0    COLUMN users.id    COMMENT     >   COMMENT ON COLUMN public.users.id IS 'ID unico del registro';
          public          postgres    false    264            	           0    0    COLUMN users.perfil_id    COMMENT     I   COMMENT ON COLUMN public.users.perfil_id IS 'ID del perfil del usuario';
          public          postgres    false    264            
           0    0    COLUMN users.name    COMMENT     =   COMMENT ON COLUMN public.users.name IS 'Nombre dek usuario';
          public          postgres    false    264                       0    0    COLUMN users.email    COMMENT     =   COMMENT ON COLUMN public.users.email IS 'Emaik del usuario';
          public          postgres    false    264                       0    0    COLUMN users.email_verified_at    COMMENT     _   COMMENT ON COLUMN public.users.email_verified_at IS 'Timestamp de la verificacion del correo';
          public          postgres    false    264                       0    0    COLUMN users.password    COMMENT     @   COMMENT ON COLUMN public.users.password IS 'Clave del usuario';
          public          postgres    false    264                       0    0    COLUMN users.avatar    COMMENT     B   COMMENT ON COLUMN public.users.avatar IS 'Avatar deÃ± usuario';
          public          postgres    false    264                       0    0    COLUMN users.remember_token    COMMENT     O   COMMENT ON COLUMN public.users.remember_token IS 'Recordar toalen de usuario';
          public          postgres    false    264                       0    0    COLUMN users.bloqueado    COMMENT     _   COMMENT ON COLUMN public.users.bloqueado IS 'Indica si el usuario estÂ´Ã¡ bloqueado o no';
          public          postgres    false    264                       0    0    COLUMN users.old_psw    COMMENT     <   COMMENT ON COLUMN public.users.old_psw IS 'Clave anterior';
          public          postgres    false    264                       0    0    COLUMN users.two_steps    COMMENT     L   COMMENT ON COLUMN public.users.two_steps IS 'Verificacion de dos factores';
          public          postgres    false    264                       0    0    COLUMN users.created_at    COMMENT     S   COMMENT ON COLUMN public.users.created_at IS 'Timestamp de creacion del registro';
          public          postgres    false    264                       0    0    COLUMN users.updated_at    COMMENT     W   COMMENT ON COLUMN public.users.updated_at IS 'Timestamp de modificacion del registro';
          public          postgres    false    264                       0    0    COLUMN users.deleted_at    COMMENT     Y   COMMENT ON COLUMN public.users.deleted_at IS 'Timestamp de borrADO LOGICO del registro';
          public          postgres    false    264                       1259    53300    users_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    264            $           2604    53228    cnf_colores id    DEFAULT     p   ALTER TABLE ONLY public.cnf_colores ALTER COLUMN id SET DEFAULT nextval('public.cnf_colores_id_seq'::regclass);
 =   ALTER TABLE public.cnf_colores ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246    247            R           2604    53427    desordenadas_dia id    DEFAULT     z   ALTER TABLE ONLY public.desordenadas_dia ALTER COLUMN id SET DEFAULT nextval('public.desordenadas_dia_id_seq'::regclass);
 B   ALTER TABLE public.desordenadas_dia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    288    289    289            T           2604    53440    desordenadas_hora id    DEFAULT     |   ALTER TABLE ONLY public.desordenadas_hora ALTER COLUMN id SET DEFAULT nextval('public.desordenadas_hora_id_seq'::regclass);
 C   ALTER TABLE public.desordenadas_hora ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    290    291    291            V           2604    53455    desordenadas_mes id    DEFAULT     z   ALTER TABLE ONLY public.desordenadas_mes ALTER COLUMN id SET DEFAULT nextval('public.desordenadas_mes_id_seq'::regclass);
 B   ALTER TABLE public.desordenadas_mes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    293    293            X           2604    53468    desordenadas_semana id    DEFAULT     �   ALTER TABLE ONLY public.desordenadas_semana ALTER COLUMN id SET DEFAULT nextval('public.desordenadas_semana_id_seq'::regclass);
 E   ALTER TABLE public.desordenadas_semana ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    295    294    295            &           2604    53236    gb_perfiles id    DEFAULT     q   ALTER TABLE ONLY public.gb_perfiles ALTER COLUMN id SET DEFAULT nextval('public.gb_perfiles_id_seq2'::regclass);
 =   ALTER TABLE public.gb_perfiles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    249    249            B           2604    53363    gps_imei id    DEFAULT     k   ALTER TABLE ONLY public.gps_imei ALTER COLUMN id SET DEFAULT nextval('public.gps_imei_id_seq2'::regclass);
 :   ALTER TABLE public.gps_imei ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    277    275    277            C           2604    53364    gps_imei transportista_id    DEFAULT     �   ALTER TABLE ONLY public.gps_imei ALTER COLUMN transportista_id SET DEFAULT nextval('public.gps_imei_transportista_id_seq2'::regclass);
 H   ALTER TABLE public.gps_imei ALTER COLUMN transportista_id DROP DEFAULT;
       public          postgres    false    276    277    277            (           2604    53246    gps_proveedor id    DEFAULT     u   ALTER TABLE ONLY public.gps_proveedor ALTER COLUMN id SET DEFAULT nextval('public.gps_proveedor_id_seq2'::regclass);
 ?   ALTER TABLE public.gps_proveedor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    251    251            E           2604    53377    gps_real_time id    DEFAULT     u   ALTER TABLE ONLY public.gps_real_time ALTER COLUMN id SET DEFAULT nextval('public.gps_real_time_id_seq2'::regclass);
 ?   ALTER TABLE public.gps_real_time ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    278    279            8           2604    53318    gps_transportista id    DEFAULT     }   ALTER TABLE ONLY public.gps_transportista ALTER COLUMN id SET DEFAULT nextval('public.gps_transportista_id_seq2'::regclass);
 C   ALTER TABLE public.gps_transportista ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    265    266            J           2604    53391    stats_gps_dia_patente id    DEFAULT     �   ALTER TABLE ONLY public.stats_gps_dia_patente ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_dia_patente_id_seq'::regclass);
 G   ALTER TABLE public.stats_gps_dia_patente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    281    281            :           2604    53326    stats_gps_dia_transportista id    DEFAULT     �   ALTER TABLE ONLY public.stats_gps_dia_transportista ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_dia_transportista_id_seq'::regclass);
 M   ALTER TABLE public.stats_gps_dia_transportista ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    268    268            L           2604    53400    stats_gps_hora_patente id    DEFAULT     �   ALTER TABLE ONLY public.stats_gps_hora_patente ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_hora_patente_id_seq'::regclass);
 H   ALTER TABLE public.stats_gps_hora_patente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    283    283            <           2604    53335    stats_gps_hora_transportista id    DEFAULT     �   ALTER TABLE ONLY public.stats_gps_hora_transportista ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_hora_transportista_id_seq'::regclass);
 N   ALTER TABLE public.stats_gps_hora_transportista ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269    270            N           2604    53409    stats_gps_mes_patente id    DEFAULT     �   ALTER TABLE ONLY public.stats_gps_mes_patente ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_mes_patente_id_seq'::regclass);
 G   ALTER TABLE public.stats_gps_mes_patente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    284    285    285            >           2604    53344    stats_gps_mes_transportista id    DEFAULT     �   ALTER TABLE ONLY public.stats_gps_mes_transportista ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_mes_transportista_id_seq'::regclass);
 M   ALTER TABLE public.stats_gps_mes_transportista ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    272    272            P           2604    53418    stats_gps_semana_patente id    DEFAULT     �   ALTER TABLE ONLY public.stats_gps_semana_patente ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_semana_patente_id_seq'::regclass);
 J   ALTER TABLE public.stats_gps_semana_patente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    286    287            @           2604    53353 !   stats_gps_semana_transportista id    DEFAULT     �   ALTER TABLE ONLY public.stats_gps_semana_transportista ALTER COLUMN id SET DEFAULT nextval('public.stats_gps_semana_transportista_id_seq'::regclass);
 P   ALTER TABLE public.stats_gps_semana_transportista ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    274    274            *           2604    53254    stats_trafic_proveedor_day id    DEFAULT     �   ALTER TABLE ONLY public.stats_trafic_proveedor_day ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_day_id_seq2'::regclass);
 L   ALTER TABLE public.stats_trafic_proveedor_day ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    253    253            ,           2604    53263    stats_trafic_proveedor_hour id    DEFAULT     �   ALTER TABLE ONLY public.stats_trafic_proveedor_hour ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_hour_id_seq2'::regclass);
 M   ALTER TABLE public.stats_trafic_proveedor_hour ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254    255            .           2604    53272    stats_trafic_proveedor_min id    DEFAULT     �   ALTER TABLE ONLY public.stats_trafic_proveedor_min ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_min_id_seq2'::regclass);
 L   ALTER TABLE public.stats_trafic_proveedor_min ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256    257            0           2604    53281    stats_trafic_proveedor_month id    DEFAULT     �   ALTER TABLE ONLY public.stats_trafic_proveedor_month ALTER COLUMN id SET DEFAULT nextval('public.stats_trafic_proveedor_month_id_seq2'::regclass);
 N   ALTER TABLE public.stats_trafic_proveedor_month ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258    259            2           2604    53291    trn_patentes id    DEFAULT     s   ALTER TABLE ONLY public.trn_patentes ALTER COLUMN id SET DEFAULT nextval('public.trn_patentes_id_seq2'::regclass);
 >   ALTER TABLE public.trn_patentes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    262    262            3           2604    53292    trn_patentes transportista_id    DEFAULT     �   ALTER TABLE ONLY public.trn_patentes ALTER COLUMN transportista_id SET DEFAULT nextval('public.trn_patentes_transportista_id_seq2'::regclass);
 L   ALTER TABLE public.trn_patentes ALTER COLUMN transportista_id DROP DEFAULT;
       public          postgres    false    261    262    262            �          0    53225    cnf_colores 
   TABLE DATA           x   COPY public.cnf_colores (id, inicio, final, color, descripcion, deleted_at, created_at, updated_at, unidad) FROM stdin;
    public          postgres    false    247   XN      �          0    53424    desordenadas_dia 
   TABLE DATA           �   COPY public.desordenadas_dia (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, dia, cant, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    289   uN      �          0    53437    desordenadas_hora 
   TABLE DATA           �   COPY public.desordenadas_hora (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, hora, cant, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    291   �N      �          0    53452    desordenadas_mes 
   TABLE DATA           �   COPY public.desordenadas_mes (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, mes, cant, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    293   �N      �          0    53465    desordenadas_semana 
   TABLE DATA           �   COPY public.desordenadas_semana (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, semana, cant, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    295   �N      �          0    53233    gb_perfiles 
   TABLE DATA           _   COPY public.gb_perfiles (id, nombre, permisos, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    249   �N      �          0    53360    gps_imei 
   TABLE DATA           |   COPY public.gps_imei (id, transportista_id, proveedor_id, patente_id, imei, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    277   O      �          0    53243    gps_proveedor 
   TABLE DATA           k   COPY public.gps_proveedor (id, razon_social, email, total, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    251   #O      �          0    53374    gps_real_time 
   TABLE DATA           �   COPY public.gps_real_time (id, rejected, imei_id, transportista_id, proveedor_id, patente_id, timestamp_gps, timestamp_sys, frecuencia, latencia, ordenada, motor, created_at, updated_at, deleted_at, raw_data) FROM stdin;
    public          postgres    false    279   @O      �          0    53315    gps_transportista 
   TABLE DATA           w   COPY public.gps_transportista (id, razon_social, codigo, email, total, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    266   ]O      �          0    53388    stats_gps_dia_patente 
   TABLE DATA           3  COPY public.stats_gps_dia_patente (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, dia, frecuencia_motor_on, frecuencia_motor_off, latencia, total_cadenas, total_cadenas_problemas, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    281   zO      �          0    53323    stats_gps_dia_transportista 
   TABLE DATA           �   COPY public.stats_gps_dia_transportista (id, transportista_id, proveedor_id, fecha, dia, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    268   �O      �          0    53397    stats_gps_hora_patente 
   TABLE DATA           5  COPY public.stats_gps_hora_patente (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, hora, frecuencia_motor_on, frecuencia_motor_off, latencia, total_cadenas, total_cadenas_problemas, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    283   �O      �          0    53332    stats_gps_hora_transportista 
   TABLE DATA           �   COPY public.stats_gps_hora_transportista (id, transportista_id, proveedor_id, fecha, hora, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    270   �O      �          0    53406    stats_gps_mes_patente 
   TABLE DATA           4  COPY public.stats_gps_mes_patente (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, mes, frecuencia_motor_on, frecuencia_motor_off, latencia, total_cadenas, total_patentes_problemas, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    285   �O      �          0    53341    stats_gps_mes_transportista 
   TABLE DATA           �   COPY public.stats_gps_mes_transportista (id, transportista_id, proveedor_id, fecha, mes, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    272   P      �          0    53415    stats_gps_semana_patente 
   TABLE DATA           9  COPY public.stats_gps_semana_patente (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, semana, frecuencia_motor_on, frecuencia_motor_off, latencia, total_cadenas, total_cadenas_problemas, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    287   (P      �          0    53350    stats_gps_semana_transportista 
   TABLE DATA             COPY public.stats_gps_semana_transportista (id, transportista_id, proveedor_id, fecha, semana, frecuencia_motor_on, frecuencia_motor_off, latencia, q_patetentes_no_ign, q_patentes_no_deteccion, q_desordenadas, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    274   EP      �          0    53251    stats_trafic_proveedor_day 
   TABLE DATA           {   COPY public.stats_trafic_proveedor_day (id, proveedor_id, fecha, cantidad, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    253   bP      �          0    53260    stats_trafic_proveedor_hour 
   TABLE DATA           �   COPY public.stats_trafic_proveedor_hour (id, proveedor_id, fecha, hora, cantidad, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    255   P      �          0    53269    stats_trafic_proveedor_min 
   TABLE DATA           �   COPY public.stats_trafic_proveedor_min (id, proveedor_id, fecha, hora, minuto, motor, cantidad, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    257   �P      �          0    53278    stats_trafic_proveedor_month 
   TABLE DATA           �   COPY public.stats_trafic_proveedor_month (id, proveedor_id, anio, mes, cantidad, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    259   �P      �          0    53288    trn_patentes 
   TABLE DATA           i   COPY public.trn_patentes (id, transportista_id, patente, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    262   �P      �          0    53301    users 
   TABLE DATA           �   COPY public.users (id, perfil_id, name, email, email_verified_at, password, avatar, remember_token, bloqueado, old_psw, two_steps, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    264   �P                 0    0    cnf_colores_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cnf_colores_id_seq', 1, false);
          public          postgres    false    246                       0    0    desordenadas_dia_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.desordenadas_dia_id_seq', 1, false);
          public          postgres    false    288                       0    0    desordenadas_hora_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.desordenadas_hora_id_seq', 1, false);
          public          postgres    false    290                       0    0    desordenadas_mes_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.desordenadas_mes_id_seq', 1, false);
          public          postgres    false    292                       0    0    desordenadas_semana_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.desordenadas_semana_id_seq', 1, false);
          public          postgres    false    294                       0    0    gb_perfiles_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.gb_perfiles_id_seq', 1, false);
          public          postgres    false    214                       0    0    gb_perfiles_id_seq1    SEQUENCE SET     B   SELECT pg_catalog.setval('public.gb_perfiles_id_seq1', 1, false);
          public          postgres    false    215                       0    0    gb_perfiles_id_seq2    SEQUENCE SET     B   SELECT pg_catalog.setval('public.gb_perfiles_id_seq2', 1, false);
          public          postgres    false    248                       0    0    gps_imei_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.gps_imei_id_seq', 1, false);
          public          postgres    false    216                       0    0    gps_imei_id_seq1    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.gps_imei_id_seq1', 1, false);
          public          postgres    false    217                        0    0    gps_imei_id_seq2    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.gps_imei_id_seq2', 1, false);
          public          postgres    false    275            !           0    0    gps_imei_transportista_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.gps_imei_transportista_id_seq', 1, false);
          public          postgres    false    218            "           0    0    gps_imei_transportista_id_seq1    SEQUENCE SET     M   SELECT pg_catalog.setval('public.gps_imei_transportista_id_seq1', 1, false);
          public          postgres    false    219            #           0    0    gps_imei_transportista_id_seq2    SEQUENCE SET     M   SELECT pg_catalog.setval('public.gps_imei_transportista_id_seq2', 1, false);
          public          postgres    false    276            $           0    0    gps_proveedor_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.gps_proveedor_id_seq', 1, false);
          public          postgres    false    220            %           0    0    gps_proveedor_id_seq1    SEQUENCE SET     D   SELECT pg_catalog.setval('public.gps_proveedor_id_seq1', 1, false);
          public          postgres    false    221            &           0    0    gps_proveedor_id_seq2    SEQUENCE SET     D   SELECT pg_catalog.setval('public.gps_proveedor_id_seq2', 1, false);
          public          postgres    false    250            '           0    0    gps_real_time_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.gps_real_time_id_seq', 1, false);
          public          postgres    false    222            (           0    0    gps_real_time_id_seq1    SEQUENCE SET     D   SELECT pg_catalog.setval('public.gps_real_time_id_seq1', 1, false);
          public          postgres    false    223            )           0    0    gps_real_time_id_seq2    SEQUENCE SET     D   SELECT pg_catalog.setval('public.gps_real_time_id_seq2', 1, false);
          public          postgres    false    278            *           0    0    gps_transportista_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.gps_transportista_id_seq', 1, false);
          public          postgres    false    224            +           0    0    gps_transportista_id_seq1    SEQUENCE SET     H   SELECT pg_catalog.setval('public.gps_transportista_id_seq1', 1, false);
          public          postgres    false    225            ,           0    0    gps_transportista_id_seq2    SEQUENCE SET     H   SELECT pg_catalog.setval('public.gps_transportista_id_seq2', 1, false);
          public          postgres    false    265            -           0    0    stats_gps_day_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.stats_gps_day_id_seq', 1, false);
          public          postgres    false    226            .           0    0    stats_gps_day_id_seq1    SEQUENCE SET     D   SELECT pg_catalog.setval('public.stats_gps_day_id_seq1', 1, false);
          public          postgres    false    227            /           0    0    stats_gps_dia_patente_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.stats_gps_dia_patente_id_seq', 1, false);
          public          postgres    false    280            0           0    0 "   stats_gps_dia_transportista_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.stats_gps_dia_transportista_id_seq', 1, false);
          public          postgres    false    267            1           0    0    stats_gps_hora_patente_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.stats_gps_hora_patente_id_seq', 1, false);
          public          postgres    false    282            2           0    0 #   stats_gps_hora_transportista_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.stats_gps_hora_transportista_id_seq', 1, false);
          public          postgres    false    269            3           0    0    stats_gps_hour_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.stats_gps_hour_id_seq', 1, false);
          public          postgres    false    228            4           0    0    stats_gps_hour_id_seq1    SEQUENCE SET     E   SELECT pg_catalog.setval('public.stats_gps_hour_id_seq1', 1, false);
          public          postgres    false    229            5           0    0    stats_gps_mes_patente_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.stats_gps_mes_patente_id_seq', 1, false);
          public          postgres    false    284            6           0    0 "   stats_gps_mes_transportista_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.stats_gps_mes_transportista_id_seq', 1, false);
          public          postgres    false    271            7           0    0    stats_gps_month_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.stats_gps_month_id_seq', 1, false);
          public          postgres    false    230            8           0    0    stats_gps_semana_patente_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.stats_gps_semana_patente_id_seq', 1, false);
          public          postgres    false    286            9           0    0 %   stats_gps_semana_transportista_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.stats_gps_semana_transportista_id_seq', 1, false);
          public          postgres    false    273            :           0    0    stats_gps_week_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.stats_gps_week_id_seq', 1, false);
          public          postgres    false    231            ;           0    0    stats_gps_week_id_seq1    SEQUENCE SET     E   SELECT pg_catalog.setval('public.stats_gps_week_id_seq1', 1, false);
          public          postgres    false    232            <           0    0 !   stats_trafic_proveedor_day_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.stats_trafic_proveedor_day_id_seq', 1, false);
          public          postgres    false    233            =           0    0 "   stats_trafic_proveedor_day_id_seq1    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.stats_trafic_proveedor_day_id_seq1', 1, false);
          public          postgres    false    234            >           0    0 "   stats_trafic_proveedor_day_id_seq2    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.stats_trafic_proveedor_day_id_seq2', 1, false);
          public          postgres    false    252            ?           0    0 "   stats_trafic_proveedor_hour_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.stats_trafic_proveedor_hour_id_seq', 1, false);
          public          postgres    false    235            @           0    0 #   stats_trafic_proveedor_hour_id_seq1    SEQUENCE SET     R   SELECT pg_catalog.setval('public.stats_trafic_proveedor_hour_id_seq1', 1, false);
          public          postgres    false    236            A           0    0 #   stats_trafic_proveedor_hour_id_seq2    SEQUENCE SET     R   SELECT pg_catalog.setval('public.stats_trafic_proveedor_hour_id_seq2', 1, false);
          public          postgres    false    254            B           0    0 !   stats_trafic_proveedor_min_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.stats_trafic_proveedor_min_id_seq', 1, false);
          public          postgres    false    237            C           0    0 "   stats_trafic_proveedor_min_id_seq1    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.stats_trafic_proveedor_min_id_seq1', 1, false);
          public          postgres    false    238            D           0    0 "   stats_trafic_proveedor_min_id_seq2    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.stats_trafic_proveedor_min_id_seq2', 1, false);
          public          postgres    false    256            E           0    0 #   stats_trafic_proveedor_month_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.stats_trafic_proveedor_month_id_seq', 1, false);
          public          postgres    false    239            F           0    0 $   stats_trafic_proveedor_month_id_seq1    SEQUENCE SET     S   SELECT pg_catalog.setval('public.stats_trafic_proveedor_month_id_seq1', 1, false);
          public          postgres    false    240            G           0    0 $   stats_trafic_proveedor_month_id_seq2    SEQUENCE SET     S   SELECT pg_catalog.setval('public.stats_trafic_proveedor_month_id_seq2', 1, false);
          public          postgres    false    258            H           0    0    trn_patentes_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.trn_patentes_id_seq', 1, false);
          public          postgres    false    241            I           0    0    trn_patentes_id_seq1    SEQUENCE SET     C   SELECT pg_catalog.setval('public.trn_patentes_id_seq1', 1, false);
          public          postgres    false    242            J           0    0    trn_patentes_id_seq2    SEQUENCE SET     C   SELECT pg_catalog.setval('public.trn_patentes_id_seq2', 1, false);
          public          postgres    false    260            K           0    0 !   trn_patentes_transportista_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.trn_patentes_transportista_id_seq', 1, false);
          public          postgres    false    243            L           0    0 "   trn_patentes_transportista_id_seq1    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.trn_patentes_transportista_id_seq1', 1, false);
          public          postgres    false    244            M           0    0 "   trn_patentes_transportista_id_seq2    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.trn_patentes_transportista_id_seq2', 1, false);
          public          postgres    false    261            N           0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 1, false);
          public          postgres    false    245            O           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    263            �           2606    53371    gps_imei idx_gps_imei 
   CONSTRAINT     P   ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT idx_gps_imei UNIQUE (imei);
 ?   ALTER TABLE ONLY public.gps_imei DROP CONSTRAINT idx_gps_imei;
       public            postgres    false    277            m           2606    53299    trn_patentes idx_trn_patentes 
   CONSTRAINT     [   ALTER TABLE ONLY public.trn_patentes
    ADD CONSTRAINT idx_trn_patentes UNIQUE (patente);
 G   ALTER TABLE ONLY public.trn_patentes DROP CONSTRAINT idx_trn_patentes;
       public            postgres    false    262            s           2606    53312    users idx_user 
   CONSTRAINT     J   ALTER TABLE ONLY public.users
    ADD CONSTRAINT idx_user UNIQUE (email);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT idx_user;
       public            postgres    false    264            [           2606    53231    cnf_colores pk_cnf_colores_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.cnf_colores
    ADD CONSTRAINT pk_cnf_colores_id PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.cnf_colores DROP CONSTRAINT pk_cnf_colores_id;
       public            postgres    false    247            �           2606    53443 )   desordenadas_hora pk_desordenadas_hora_id 
   CONSTRAINT     g   ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT pk_desordenadas_hora_id PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.desordenadas_hora DROP CONSTRAINT pk_desordenadas_hora_id;
       public            postgres    false    291            ]           2606    53241    gb_perfiles pk_gb_perfiles_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.gb_perfiles
    ADD CONSTRAINT pk_gb_perfiles_id PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.gb_perfiles DROP CONSTRAINT pk_gb_perfiles_id;
       public            postgres    false    249            �           2606    53385 !   gps_real_time pk_gps_real_time_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT pk_gps_real_time_id PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.gps_real_time DROP CONSTRAINT pk_gps_real_time_id;
       public            postgres    false    279            x           2606    53321 )   gps_transportista pk_gps_transportista_id 
   CONSTRAINT     g   ALTER TABLE ONLY public.gps_transportista
    ADD CONSTRAINT pk_gps_transportista_id PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.gps_transportista DROP CONSTRAINT pk_gps_transportista_id;
       public            postgres    false    266            _           2606    53249 '   gps_proveedor pk_gps_transportista_id_0 
   CONSTRAINT     e   ALTER TABLE ONLY public.gps_proveedor
    ADD CONSTRAINT pk_gps_transportista_id_0 PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.gps_proveedor DROP CONSTRAINT pk_gps_transportista_id_0;
       public            postgres    false    251            ~           2606    53338 0   stats_gps_hora_transportista pk_stat_gps_hour_id 
   CONSTRAINT     n   ALTER TABLE ONLY public.stats_gps_hora_transportista
    ADD CONSTRAINT pk_stat_gps_hour_id PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.stats_gps_hora_transportista DROP CONSTRAINT pk_stat_gps_hour_id;
       public            postgres    false    270            {           2606    53329 1   stats_gps_dia_transportista pk_stat_gps_hour_id_0 
   CONSTRAINT     o   ALTER TABLE ONLY public.stats_gps_dia_transportista
    ADD CONSTRAINT pk_stat_gps_hour_id_0 PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.stats_gps_dia_transportista DROP CONSTRAINT pk_stat_gps_hour_id_0;
       public            postgres    false    268            �           2606    53356 4   stats_gps_semana_transportista pk_stat_gps_hour_id_1 
   CONSTRAINT     r   ALTER TABLE ONLY public.stats_gps_semana_transportista
    ADD CONSTRAINT pk_stat_gps_hour_id_1 PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.stats_gps_semana_transportista DROP CONSTRAINT pk_stat_gps_hour_id_1;
       public            postgres    false    274            �           2606    53347 1   stats_gps_mes_transportista pk_stat_gps_hour_id_2 
   CONSTRAINT     o   ALTER TABLE ONLY public.stats_gps_mes_transportista
    ADD CONSTRAINT pk_stat_gps_hour_id_2 PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.stats_gps_mes_transportista DROP CONSTRAINT pk_stat_gps_hour_id_2;
       public            postgres    false    272            �           2606    53403 ,   stats_gps_hora_patente pk_stat_gps_hour_id_3 
   CONSTRAINT     j   ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT pk_stat_gps_hour_id_3 PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.stats_gps_hora_patente DROP CONSTRAINT pk_stat_gps_hour_id_3;
       public            postgres    false    283            �           2606    53394 +   stats_gps_dia_patente pk_stat_gps_hour_id_4 
   CONSTRAINT     i   ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT pk_stat_gps_hour_id_4 PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.stats_gps_dia_patente DROP CONSTRAINT pk_stat_gps_hour_id_4;
       public            postgres    false    281            �           2606    53421 .   stats_gps_semana_patente pk_stat_gps_hour_id_5 
   CONSTRAINT     l   ALTER TABLE ONLY public.stats_gps_semana_patente
    ADD CONSTRAINT pk_stat_gps_hour_id_5 PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.stats_gps_semana_patente DROP CONSTRAINT pk_stat_gps_hour_id_5;
       public            postgres    false    287            �           2606    53412 +   stats_gps_mes_patente pk_stat_gps_hour_id_6 
   CONSTRAINT     i   ALTER TABLE ONLY public.stats_gps_mes_patente
    ADD CONSTRAINT pk_stat_gps_hour_id_6 PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.stats_gps_mes_patente DROP CONSTRAINT pk_stat_gps_hour_id_6;
       public            postgres    false    285            h           2606    53275 ;   stats_trafic_proveedor_min pk_stats_trafic_proveedor_min_id 
   CONSTRAINT     y   ALTER TABLE ONLY public.stats_trafic_proveedor_min
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id PRIMARY KEY (id);
 e   ALTER TABLE ONLY public.stats_trafic_proveedor_min DROP CONSTRAINT pk_stats_trafic_proveedor_min_id;
       public            postgres    false    257            b           2606    53257 =   stats_trafic_proveedor_day pk_stats_trafic_proveedor_min_id_0 
   CONSTRAINT     {   ALTER TABLE ONLY public.stats_trafic_proveedor_day
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id_0 PRIMARY KEY (id);
 g   ALTER TABLE ONLY public.stats_trafic_proveedor_day DROP CONSTRAINT pk_stats_trafic_proveedor_min_id_0;
       public            postgres    false    253            k           2606    53284 ?   stats_trafic_proveedor_month pk_stats_trafic_proveedor_min_id_1 
   CONSTRAINT     }   ALTER TABLE ONLY public.stats_trafic_proveedor_month
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id_1 PRIMARY KEY (id);
 i   ALTER TABLE ONLY public.stats_trafic_proveedor_month DROP CONSTRAINT pk_stats_trafic_proveedor_min_id_1;
       public            postgres    false    259            e           2606    53266 >   stats_trafic_proveedor_hour pk_stats_trafic_proveedor_min_id_2 
   CONSTRAINT     |   ALTER TABLE ONLY public.stats_trafic_proveedor_hour
    ADD CONSTRAINT pk_stats_trafic_proveedor_min_id_2 PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.stats_trafic_proveedor_hour DROP CONSTRAINT pk_stats_trafic_proveedor_min_id_2;
       public            postgres    false    255            o           2606    53295    trn_patentes pk_trn_patentes_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.trn_patentes
    ADD CONSTRAINT pk_trn_patentes_id PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.trn_patentes DROP CONSTRAINT pk_trn_patentes_id;
       public            postgres    false    262            �           2606    53367    gps_imei pk_trn_patentes_id_0 
   CONSTRAINT     [   ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT pk_trn_patentes_id_0 PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.gps_imei DROP CONSTRAINT pk_trn_patentes_id_0;
       public            postgres    false    277            v           2606    53310    users pk_user_id 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT pk_user_id PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT pk_user_id;
       public            postgres    false    264            q           2606    53297 .   trn_patentes unq_trn_patentes_transportista-id 
   CONSTRAINT     w   ALTER TABLE ONLY public.trn_patentes
    ADD CONSTRAINT "unq_trn_patentes_transportista-id" UNIQUE (transportista_id);
 Z   ALTER TABLE ONLY public.trn_patentes DROP CONSTRAINT "unq_trn_patentes_transportista-id";
       public            postgres    false    262            �           2606    53369 ,   gps_imei unq_trn_patentes_transportista-id_0 
   CONSTRAINT     u   ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT "unq_trn_patentes_transportista-id_0" UNIQUE (transportista_id);
 X   ALTER TABLE ONLY public.gps_imei DROP CONSTRAINT "unq_trn_patentes_transportista-id_0";
       public            postgres    false    277            �           1259    53430    idx_desordenadas_dia    INDEX     Y   CREATE INDEX idx_desordenadas_dia ON public.desordenadas_dia USING btree (proveedor_id);
 (   DROP INDEX public.idx_desordenadas_dia;
       public            postgres    false    289            �           1259    53429    idx_desordenadas_dia_0    INDEX     _   CREATE INDEX idx_desordenadas_dia_0 ON public.desordenadas_dia USING btree (transportista_id);
 *   DROP INDEX public.idx_desordenadas_dia_0;
       public            postgres    false    289            �           1259    53431    idx_desordenadas_dia_1    INDEX     Y   CREATE INDEX idx_desordenadas_dia_1 ON public.desordenadas_dia USING btree (patente_id);
 *   DROP INDEX public.idx_desordenadas_dia_1;
       public            postgres    false    289            �           1259    53432    idx_desordenadas_dia_2    INDEX     T   CREATE INDEX idx_desordenadas_dia_2 ON public.desordenadas_dia USING btree (fecha);
 *   DROP INDEX public.idx_desordenadas_dia_2;
       public            postgres    false    289            �           1259    53433    idx_desordenadas_dia_3    INDEX     R   CREATE INDEX idx_desordenadas_dia_3 ON public.desordenadas_dia USING btree (dia);
 *   DROP INDEX public.idx_desordenadas_dia_3;
       public            postgres    false    289            �           1259    53434    idx_desordenadas_dia_4    INDEX     V   CREATE INDEX idx_desordenadas_dia_4 ON public.desordenadas_dia USING btree (imei_id);
 *   DROP INDEX public.idx_desordenadas_dia_4;
       public            postgres    false    289            �           1259    53435    idx_desordenadas_dia_5    INDEX     �   CREATE INDEX idx_desordenadas_dia_5 ON public.desordenadas_dia USING btree (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, dia);
 *   DROP INDEX public.idx_desordenadas_dia_5;
       public            postgres    false    289    289    289    289    289    289    289            �           1259    53444    idx_desordenadas_hora    INDEX     _   CREATE INDEX idx_desordenadas_hora ON public.desordenadas_hora USING btree (transportista_id);
 )   DROP INDEX public.idx_desordenadas_hora;
       public            postgres    false    291            �           1259    53445    idx_desordenadas_hora_0    INDEX     ]   CREATE INDEX idx_desordenadas_hora_0 ON public.desordenadas_hora USING btree (proveedor_id);
 +   DROP INDEX public.idx_desordenadas_hora_0;
       public            postgres    false    291            �           1259    53446    idx_desordenadas_hora_1    INDEX     [   CREATE INDEX idx_desordenadas_hora_1 ON public.desordenadas_hora USING btree (patente_id);
 +   DROP INDEX public.idx_desordenadas_hora_1;
       public            postgres    false    291            �           1259    53447    idx_desordenadas_hora_2    INDEX     V   CREATE INDEX idx_desordenadas_hora_2 ON public.desordenadas_hora USING btree (fecha);
 +   DROP INDEX public.idx_desordenadas_hora_2;
       public            postgres    false    291            �           1259    53448    idx_desordenadas_hora_3    INDEX     U   CREATE INDEX idx_desordenadas_hora_3 ON public.desordenadas_hora USING btree (hora);
 +   DROP INDEX public.idx_desordenadas_hora_3;
       public            postgres    false    291            �           1259    53449    idx_desordenadas_hora_4    INDEX     �   CREATE INDEX idx_desordenadas_hora_4 ON public.desordenadas_hora USING btree (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, hora);
 +   DROP INDEX public.idx_desordenadas_hora_4;
       public            postgres    false    291    291    291    291    291    291    291            �           1259    53450    idx_desordenadas_hora_5    INDEX     X   CREATE INDEX idx_desordenadas_hora_5 ON public.desordenadas_hora USING btree (imei_id);
 +   DROP INDEX public.idx_desordenadas_hora_5;
       public            postgres    false    291            �           1259    53457    idx_desordenadas_mes    INDEX     ]   CREATE INDEX idx_desordenadas_mes ON public.desordenadas_mes USING btree (transportista_id);
 (   DROP INDEX public.idx_desordenadas_mes;
       public            postgres    false    293            �           1259    53458    idx_desordenadas_mes_0    INDEX     [   CREATE INDEX idx_desordenadas_mes_0 ON public.desordenadas_mes USING btree (proveedor_id);
 *   DROP INDEX public.idx_desordenadas_mes_0;
       public            postgres    false    293            �           1259    53459    idx_desordenadas_mes_1    INDEX     Y   CREATE INDEX idx_desordenadas_mes_1 ON public.desordenadas_mes USING btree (patente_id);
 *   DROP INDEX public.idx_desordenadas_mes_1;
       public            postgres    false    293            �           1259    53460    idx_desordenadas_mes_2    INDEX     V   CREATE INDEX idx_desordenadas_mes_2 ON public.desordenadas_mes USING btree (imei_id);
 *   DROP INDEX public.idx_desordenadas_mes_2;
       public            postgres    false    293            �           1259    53461    idx_desordenadas_mes_3    INDEX     T   CREATE INDEX idx_desordenadas_mes_3 ON public.desordenadas_mes USING btree (fecha);
 *   DROP INDEX public.idx_desordenadas_mes_3;
       public            postgres    false    293            �           1259    53462    idx_desordenadas_mes_4    INDEX     R   CREATE INDEX idx_desordenadas_mes_4 ON public.desordenadas_mes USING btree (mes);
 *   DROP INDEX public.idx_desordenadas_mes_4;
       public            postgres    false    293            �           1259    53463    idx_desordenadas_mes_5    INDEX     �   CREATE INDEX idx_desordenadas_mes_5 ON public.desordenadas_mes USING btree (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, mes);
 *   DROP INDEX public.idx_desordenadas_mes_5;
       public            postgres    false    293    293    293    293    293    293    293            �           1259    53470    idx_desordenadas_semana    INDEX     c   CREATE INDEX idx_desordenadas_semana ON public.desordenadas_semana USING btree (transportista_id);
 +   DROP INDEX public.idx_desordenadas_semana;
       public            postgres    false    295            �           1259    53471    idx_desordenadas_semana_0    INDEX     a   CREATE INDEX idx_desordenadas_semana_0 ON public.desordenadas_semana USING btree (proveedor_id);
 -   DROP INDEX public.idx_desordenadas_semana_0;
       public            postgres    false    295            �           1259    53472    idx_desordenadas_semana_1    INDEX     _   CREATE INDEX idx_desordenadas_semana_1 ON public.desordenadas_semana USING btree (patente_id);
 -   DROP INDEX public.idx_desordenadas_semana_1;
       public            postgres    false    295            �           1259    53473    idx_desordenadas_semana_2    INDEX     \   CREATE INDEX idx_desordenadas_semana_2 ON public.desordenadas_semana USING btree (imei_id);
 -   DROP INDEX public.idx_desordenadas_semana_2;
       public            postgres    false    295            �           1259    53474    idx_desordenadas_semana_3    INDEX     Z   CREATE INDEX idx_desordenadas_semana_3 ON public.desordenadas_semana USING btree (fecha);
 -   DROP INDEX public.idx_desordenadas_semana_3;
       public            postgres    false    295            �           1259    53475    idx_desordenadas_semana_4    INDEX     [   CREATE INDEX idx_desordenadas_semana_4 ON public.desordenadas_semana USING btree (semana);
 -   DROP INDEX public.idx_desordenadas_semana_4;
       public            postgres    false    295            �           1259    53476    idx_desordenadas_semana_5    INDEX     �   CREATE INDEX idx_desordenadas_semana_5 ON public.desordenadas_semana USING btree (id, transportista_id, proveedor_id, patente_id, imei_id, fecha, semana);
 -   DROP INDEX public.idx_desordenadas_semana_5;
       public            postgres    false    295    295    295    295    295    295    295            �           1259    53372    idx_gps_imei_0    INDEX     m   CREATE INDEX idx_gps_imei_0 ON public.gps_imei USING btree (id, transportista_id, proveedor_id, patente_id);
 "   DROP INDEX public.idx_gps_imei_0;
       public            postgres    false    277    277    277    277            �           1259    53386    idx_gps_real_time    INDEX     ~   CREATE INDEX idx_gps_real_time ON public.gps_real_time USING btree (id, imei_id, transportista_id, proveedor_id, patente_id);
 %   DROP INDEX public.idx_gps_real_time;
       public            postgres    false    279    279    279    279    279            |           1259    53339    idx_stats_gps_hour    INDEX     k   CREATE INDEX idx_stats_gps_hour ON public.stats_gps_hora_transportista USING btree (id, transportista_id);
 &   DROP INDEX public.idx_stats_gps_hour;
       public            postgres    false    270    270            y           1259    53330    idx_stats_gps_hour_0    INDEX     l   CREATE INDEX idx_stats_gps_hour_0 ON public.stats_gps_dia_transportista USING btree (id, transportista_id);
 (   DROP INDEX public.idx_stats_gps_hour_0;
       public            postgres    false    268    268            �           1259    53357    idx_stats_gps_hour_1    INDEX     o   CREATE INDEX idx_stats_gps_hour_1 ON public.stats_gps_semana_transportista USING btree (id, transportista_id);
 (   DROP INDEX public.idx_stats_gps_hour_1;
       public            postgres    false    274    274                       1259    53348    idx_stats_gps_hour_2    INDEX     l   CREATE INDEX idx_stats_gps_hour_2 ON public.stats_gps_mes_transportista USING btree (id, transportista_id);
 (   DROP INDEX public.idx_stats_gps_hour_2;
       public            postgres    false    272    272            �           1259    53404    idx_stats_gps_hour_3    INDEX     c   CREATE INDEX idx_stats_gps_hour_3 ON public.stats_gps_hora_patente USING btree (id, proveedor_id);
 (   DROP INDEX public.idx_stats_gps_hour_3;
       public            postgres    false    283    283            �           1259    53395    idx_stats_gps_hour_4    INDEX     b   CREATE INDEX idx_stats_gps_hour_4 ON public.stats_gps_dia_patente USING btree (id, proveedor_id);
 (   DROP INDEX public.idx_stats_gps_hour_4;
       public            postgres    false    281    281            �           1259    53422    idx_stats_gps_hour_5    INDEX     e   CREATE INDEX idx_stats_gps_hour_5 ON public.stats_gps_semana_patente USING btree (id, proveedor_id);
 (   DROP INDEX public.idx_stats_gps_hour_5;
       public            postgres    false    287    287            �           1259    53413    idx_stats_gps_hour_6    INDEX     b   CREATE INDEX idx_stats_gps_hour_6 ON public.stats_gps_mes_patente USING btree (id, proveedor_id);
 (   DROP INDEX public.idx_stats_gps_hour_6;
       public            postgres    false    285    285            `           1259    53258    idx_stats_trafic_proveedor_day    INDEX     q   CREATE INDEX idx_stats_trafic_proveedor_day ON public.stats_trafic_proveedor_day USING btree (id, proveedor_id);
 2   DROP INDEX public.idx_stats_trafic_proveedor_day;
       public            postgres    false    253    253            c           1259    53267    idx_stats_trafic_proveedor_hour    INDEX     s   CREATE INDEX idx_stats_trafic_proveedor_hour ON public.stats_trafic_proveedor_hour USING btree (id, proveedor_id);
 3   DROP INDEX public.idx_stats_trafic_proveedor_hour;
       public            postgres    false    255    255            f           1259    53276    idx_stats_trafic_proveedor_min    INDEX     q   CREATE INDEX idx_stats_trafic_proveedor_min ON public.stats_trafic_proveedor_min USING btree (id, proveedor_id);
 2   DROP INDEX public.idx_stats_trafic_proveedor_min;
       public            postgres    false    257    257            i           1259    53285     idx_stats_trafic_proveedor_month    INDEX     u   CREATE INDEX idx_stats_trafic_proveedor_month ON public.stats_trafic_proveedor_month USING btree (id, proveedor_id);
 4   DROP INDEX public.idx_stats_trafic_proveedor_month;
       public            postgres    false    259    259            t           1259    53313 
   idx_user_0    INDEX     E   CREATE INDEX idx_user_0 ON public.users USING btree (id, perfil_id);
    DROP INDEX public.idx_user_0;
       public            postgres    false    264    264            �           2606    53534 -   desordenadas_dia fk_desordenadas_dia_gps_imei    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT fk_desordenadas_dia_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);
 W   ALTER TABLE ONLY public.desordenadas_dia DROP CONSTRAINT fk_desordenadas_dia_gps_imei;
       public          postgres    false    277    289    3465            �           2606    53524 2   desordenadas_dia fk_desordenadas_dia_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT fk_desordenadas_dia_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 \   ALTER TABLE ONLY public.desordenadas_dia DROP CONSTRAINT fk_desordenadas_dia_gps_proveedor;
       public          postgres    false    3423    251    289            �           2606    53519 6   desordenadas_dia fk_desordenadas_dia_gps_transportista    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT fk_desordenadas_dia_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 `   ALTER TABLE ONLY public.desordenadas_dia DROP CONSTRAINT fk_desordenadas_dia_gps_transportista;
       public          postgres    false    3448    266    289            �           2606    53529 1   desordenadas_dia fk_desordenadas_dia_trn_patentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_dia
    ADD CONSTRAINT fk_desordenadas_dia_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);
 [   ALTER TABLE ONLY public.desordenadas_dia DROP CONSTRAINT fk_desordenadas_dia_trn_patentes;
       public          postgres    false    262    3439    289            �           2606    53554 /   desordenadas_hora fk_desordenadas_hora_gps_imei    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT fk_desordenadas_hora_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);
 Y   ALTER TABLE ONLY public.desordenadas_hora DROP CONSTRAINT fk_desordenadas_hora_gps_imei;
       public          postgres    false    291    277    3465            �           2606    53544 4   desordenadas_hora fk_desordenadas_hora_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT fk_desordenadas_hora_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 ^   ALTER TABLE ONLY public.desordenadas_hora DROP CONSTRAINT fk_desordenadas_hora_gps_proveedor;
       public          postgres    false    251    291    3423            �           2606    53539 8   desordenadas_hora fk_desordenadas_hora_gps_transportista    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT fk_desordenadas_hora_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 b   ALTER TABLE ONLY public.desordenadas_hora DROP CONSTRAINT fk_desordenadas_hora_gps_transportista;
       public          postgres    false    266    3448    291            �           2606    53549 3   desordenadas_hora fk_desordenadas_hora_trn_patentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_hora
    ADD CONSTRAINT fk_desordenadas_hora_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);
 ]   ALTER TABLE ONLY public.desordenadas_hora DROP CONSTRAINT fk_desordenadas_hora_trn_patentes;
       public          postgres    false    291    262    3439            �           2606    53574 -   desordenadas_mes fk_desordenadas_mes_gps_imei    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT fk_desordenadas_mes_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);
 W   ALTER TABLE ONLY public.desordenadas_mes DROP CONSTRAINT fk_desordenadas_mes_gps_imei;
       public          postgres    false    293    277    3465            �           2606    53564 2   desordenadas_mes fk_desordenadas_mes_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT fk_desordenadas_mes_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 \   ALTER TABLE ONLY public.desordenadas_mes DROP CONSTRAINT fk_desordenadas_mes_gps_proveedor;
       public          postgres    false    251    293    3423            �           2606    53559 6   desordenadas_mes fk_desordenadas_mes_gps_transportista    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT fk_desordenadas_mes_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 `   ALTER TABLE ONLY public.desordenadas_mes DROP CONSTRAINT fk_desordenadas_mes_gps_transportista;
       public          postgres    false    3448    293    266            �           2606    53569 1   desordenadas_mes fk_desordenadas_mes_trn_patentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_mes
    ADD CONSTRAINT fk_desordenadas_mes_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);
 [   ALTER TABLE ONLY public.desordenadas_mes DROP CONSTRAINT fk_desordenadas_mes_trn_patentes;
       public          postgres    false    262    3439    293            �           2606    53594 3   desordenadas_semana fk_desordenadas_semana_gps_imei    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT fk_desordenadas_semana_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);
 ]   ALTER TABLE ONLY public.desordenadas_semana DROP CONSTRAINT fk_desordenadas_semana_gps_imei;
       public          postgres    false    295    3465    277            �           2606    53584 8   desordenadas_semana fk_desordenadas_semana_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT fk_desordenadas_semana_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 b   ALTER TABLE ONLY public.desordenadas_semana DROP CONSTRAINT fk_desordenadas_semana_gps_proveedor;
       public          postgres    false    251    295    3423            �           2606    53579 <   desordenadas_semana fk_desordenadas_semana_gps_transportista    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT fk_desordenadas_semana_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 f   ALTER TABLE ONLY public.desordenadas_semana DROP CONSTRAINT fk_desordenadas_semana_gps_transportista;
       public          postgres    false    3448    295    266            �           2606    53589 7   desordenadas_semana fk_desordenadas_semana_trn_patentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.desordenadas_semana
    ADD CONSTRAINT fk_desordenadas_semana_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);
 a   ALTER TABLE ONLY public.desordenadas_semana DROP CONSTRAINT fk_desordenadas_semana_trn_patentes;
       public          postgres    false    262    295    3439            �           2606    53604 "   gps_imei fk_gps_imei_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT fk_gps_imei_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 L   ALTER TABLE ONLY public.gps_imei DROP CONSTRAINT fk_gps_imei_gps_proveedor;
       public          postgres    false    277    251    3423            �           2606    53599 &   gps_imei fk_gps_imei_gps_transportista    FK CONSTRAINT     �   ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT fk_gps_imei_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 P   ALTER TABLE ONLY public.gps_imei DROP CONSTRAINT fk_gps_imei_gps_transportista;
       public          postgres    false    3448    266    277            �           2606    53609 !   gps_imei fk_gps_imei_trn_patentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.gps_imei
    ADD CONSTRAINT fk_gps_imei_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);
 K   ALTER TABLE ONLY public.gps_imei DROP CONSTRAINT fk_gps_imei_trn_patentes;
       public          postgres    false    277    262    3439            �           2606    53629 '   gps_real_time fk_gps_real_time_gps_imei    FK CONSTRAINT     �   ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_gps_imei FOREIGN KEY (patente_id) REFERENCES public.gps_imei(id);
 Q   ALTER TABLE ONLY public.gps_real_time DROP CONSTRAINT fk_gps_real_time_gps_imei;
       public          postgres    false    279    277    3465            �           2606    53624 ,   gps_real_time fk_gps_real_time_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 V   ALTER TABLE ONLY public.gps_real_time DROP CONSTRAINT fk_gps_real_time_gps_proveedor;
       public          postgres    false    251    279    3423            �           2606    53614 0   gps_real_time fk_gps_real_time_gps_transportista    FK CONSTRAINT     �   ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 Z   ALTER TABLE ONLY public.gps_real_time DROP CONSTRAINT fk_gps_real_time_gps_transportista;
       public          postgres    false    266    3448    279            �           2606    53619 +   gps_real_time fk_gps_real_time_trn_patentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.gps_real_time
    ADD CONSTRAINT fk_gps_real_time_trn_patentes FOREIGN KEY (imei_id) REFERENCES public.trn_patentes(id);
 U   ALTER TABLE ONLY public.gps_real_time DROP CONSTRAINT fk_gps_real_time_trn_patentes;
       public          postgres    false    262    279    3439            �           2606    53634 3   gps_transportista fk_gps_transportista_trn_patentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.gps_transportista
    ADD CONSTRAINT fk_gps_transportista_trn_patentes FOREIGN KEY (id) REFERENCES public.trn_patentes(transportista_id);
 ]   ALTER TABLE ONLY public.gps_transportista DROP CONSTRAINT fk_gps_transportista_trn_patentes;
       public          postgres    false    266    262    3441            �           2606    53659 7   stats_gps_dia_patente fk_stats_gps_dia_patente_gps_imei    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_dia_patente_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);
 a   ALTER TABLE ONLY public.stats_gps_dia_patente DROP CONSTRAINT fk_stats_gps_dia_patente_gps_imei;
       public          postgres    false    281    277    3465            �           2606    53644 @   stats_gps_dia_patente fk_stats_gps_dia_patente_gps_transportista    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_dia_patente_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 j   ALTER TABLE ONLY public.stats_gps_dia_patente DROP CONSTRAINT fk_stats_gps_dia_patente_gps_transportista;
       public          postgres    false    266    3448    281            �           2606    53649 B   stats_gps_dia_patente fk_stats_gps_dia_patente_gps_transportista_0    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_dia_patente_gps_transportista_0 FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 l   ALTER TABLE ONLY public.stats_gps_dia_patente DROP CONSTRAINT fk_stats_gps_dia_patente_gps_transportista_0;
       public          postgres    false    266    281    3448            �           2606    53654 ;   stats_gps_dia_patente fk_stats_gps_dia_patente_trn_patentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_dia_patente_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);
 e   ALTER TABLE ONLY public.stats_gps_dia_patente DROP CONSTRAINT fk_stats_gps_dia_patente_trn_patentes;
       public          postgres    false    3439    262    281            �           2606    53669 H   stats_gps_dia_transportista fk_stats_gps_dia_transportista_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_dia_transportista
    ADD CONSTRAINT fk_stats_gps_dia_transportista_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 r   ALTER TABLE ONLY public.stats_gps_dia_transportista DROP CONSTRAINT fk_stats_gps_dia_transportista_gps_proveedor;
       public          postgres    false    3423    268    251            �           2606    53684 9   stats_gps_hora_patente fk_stats_gps_hora_patente_gps_imei    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT fk_stats_gps_hora_patente_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);
 c   ALTER TABLE ONLY public.stats_gps_hora_patente DROP CONSTRAINT fk_stats_gps_hora_patente_gps_imei;
       public          postgres    false    277    3465    283            �           2606    53689 B   stats_gps_hora_patente fk_stats_gps_hora_patente_gps_transportista    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT fk_stats_gps_hora_patente_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 l   ALTER TABLE ONLY public.stats_gps_hora_patente DROP CONSTRAINT fk_stats_gps_hora_patente_gps_transportista;
       public          postgres    false    266    3448    283            �           2606    53679 =   stats_gps_hora_patente fk_stats_gps_hora_patente_trn_patentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT fk_stats_gps_hora_patente_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);
 g   ALTER TABLE ONLY public.stats_gps_hora_patente DROP CONSTRAINT fk_stats_gps_hora_patente_trn_patentes;
       public          postgres    false    3439    262    283            �           2606    53674 @   stats_gps_hora_patente fk_stats_gps_hora_proveedor_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_hora_patente
    ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 j   ALTER TABLE ONLY public.stats_gps_hora_patente DROP CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor;
       public          postgres    false    251    3423    283            �           2606    53639 A   stats_gps_dia_patente fk_stats_gps_hora_proveedor_gps_proveedor_0    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_dia_patente
    ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_0 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 k   ALTER TABLE ONLY public.stats_gps_dia_patente DROP CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_0;
       public          postgres    false    3423    251    281            �           2606    53729 D   stats_gps_semana_patente fk_stats_gps_hora_proveedor_gps_proveedor_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_semana_patente
    ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_1 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 n   ALTER TABLE ONLY public.stats_gps_semana_patente DROP CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_1;
       public          postgres    false    251    3423    287            �           2606    53704 A   stats_gps_mes_patente fk_stats_gps_hora_proveedor_gps_proveedor_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_mes_patente
    ADD CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_2 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 k   ALTER TABLE ONLY public.stats_gps_mes_patente DROP CONSTRAINT fk_stats_gps_hora_proveedor_gps_proveedor_2;
       public          postgres    false    251    3423    285            �           2606    53699 J   stats_gps_hora_transportista fk_stats_gps_hora_transportista_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_hora_transportista
    ADD CONSTRAINT fk_stats_gps_hora_transportista_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 t   ALTER TABLE ONLY public.stats_gps_hora_transportista DROP CONSTRAINT fk_stats_gps_hora_transportista_gps_proveedor;
       public          postgres    false    270    3423    251            �           2606    53694 @   stats_gps_hora_transportista fk_stats_gps_hour_gps_transportista    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_hora_transportista
    ADD CONSTRAINT fk_stats_gps_hour_gps_transportista FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 j   ALTER TABLE ONLY public.stats_gps_hora_transportista DROP CONSTRAINT fk_stats_gps_hour_gps_transportista;
       public          postgres    false    270    3448    266            �           2606    53664 A   stats_gps_dia_transportista fk_stats_gps_hour_gps_transportista_0    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_dia_transportista
    ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_0 FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 k   ALTER TABLE ONLY public.stats_gps_dia_transportista DROP CONSTRAINT fk_stats_gps_hour_gps_transportista_0;
       public          postgres    false    266    3448    268            �           2606    53744 D   stats_gps_semana_transportista fk_stats_gps_hour_gps_transportista_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_semana_transportista
    ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_1 FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 n   ALTER TABLE ONLY public.stats_gps_semana_transportista DROP CONSTRAINT fk_stats_gps_hour_gps_transportista_1;
       public          postgres    false    3448    274    266            �           2606    53719 A   stats_gps_mes_transportista fk_stats_gps_hour_gps_transportista_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_mes_transportista
    ADD CONSTRAINT fk_stats_gps_hour_gps_transportista_2 FOREIGN KEY (transportista_id) REFERENCES public.gps_transportista(id);
 k   ALTER TABLE ONLY public.stats_gps_mes_transportista DROP CONSTRAINT fk_stats_gps_hour_gps_transportista_2;
       public          postgres    false    272    3448    266            �           2606    53714 7   stats_gps_mes_patente fk_stats_gps_mes_patente_gps_imei    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_mes_patente
    ADD CONSTRAINT fk_stats_gps_mes_patente_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);
 a   ALTER TABLE ONLY public.stats_gps_mes_patente DROP CONSTRAINT fk_stats_gps_mes_patente_gps_imei;
       public          postgres    false    3465    285    277            �           2606    53709 ;   stats_gps_mes_patente fk_stats_gps_mes_patente_trn_patentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_mes_patente
    ADD CONSTRAINT fk_stats_gps_mes_patente_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);
 e   ALTER TABLE ONLY public.stats_gps_mes_patente DROP CONSTRAINT fk_stats_gps_mes_patente_trn_patentes;
       public          postgres    false    3439    285    262            �           2606    53724 H   stats_gps_mes_transportista fk_stats_gps_mes_transportista_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_mes_transportista
    ADD CONSTRAINT fk_stats_gps_mes_transportista_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 r   ALTER TABLE ONLY public.stats_gps_mes_transportista DROP CONSTRAINT fk_stats_gps_mes_transportista_gps_proveedor;
       public          postgres    false    251    272    3423            �           2606    53739 =   stats_gps_semana_patente fk_stats_gps_semana_patente_gps_imei    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_semana_patente
    ADD CONSTRAINT fk_stats_gps_semana_patente_gps_imei FOREIGN KEY (imei_id) REFERENCES public.gps_imei(id);
 g   ALTER TABLE ONLY public.stats_gps_semana_patente DROP CONSTRAINT fk_stats_gps_semana_patente_gps_imei;
       public          postgres    false    277    287    3465            �           2606    53734 A   stats_gps_semana_patente fk_stats_gps_semana_patente_trn_patentes    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_semana_patente
    ADD CONSTRAINT fk_stats_gps_semana_patente_trn_patentes FOREIGN KEY (patente_id) REFERENCES public.trn_patentes(id);
 k   ALTER TABLE ONLY public.stats_gps_semana_patente DROP CONSTRAINT fk_stats_gps_semana_patente_trn_patentes;
       public          postgres    false    3439    287    262            �           2606    53749 N   stats_gps_semana_transportista fk_stats_gps_semana_transportista_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_gps_semana_transportista
    ADD CONSTRAINT fk_stats_gps_semana_transportista_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 x   ALTER TABLE ONLY public.stats_gps_semana_transportista DROP CONSTRAINT fk_stats_gps_semana_transportista_gps_proveedor;
       public          postgres    false    274    251    3423            �           2606    53754 F   stats_trafic_proveedor_day fk_stats_trafic_proveedor_day_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_trafic_proveedor_day
    ADD CONSTRAINT fk_stats_trafic_proveedor_day_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 p   ALTER TABLE ONLY public.stats_trafic_proveedor_day DROP CONSTRAINT fk_stats_trafic_proveedor_day_gps_proveedor;
       public          postgres    false    253    3423    251            �           2606    53764 F   stats_trafic_proveedor_min fk_stats_trafic_proveedor_min_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_trafic_proveedor_min
    ADD CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 p   ALTER TABLE ONLY public.stats_trafic_proveedor_min DROP CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor;
       public          postgres    false    3423    257    251            �           2606    53759 I   stats_trafic_proveedor_hour fk_stats_trafic_proveedor_min_gps_proveedor_0    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_trafic_proveedor_hour
    ADD CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor_0 FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 s   ALTER TABLE ONLY public.stats_trafic_proveedor_hour DROP CONSTRAINT fk_stats_trafic_proveedor_min_gps_proveedor_0;
       public          postgres    false    251    255    3423            �           2606    53769 J   stats_trafic_proveedor_month fk_stats_trafic_proveedor_month_gps_proveedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.stats_trafic_proveedor_month
    ADD CONSTRAINT fk_stats_trafic_proveedor_month_gps_proveedor FOREIGN KEY (proveedor_id) REFERENCES public.gps_proveedor(id);
 t   ALTER TABLE ONLY public.stats_trafic_proveedor_month DROP CONSTRAINT fk_stats_trafic_proveedor_month_gps_proveedor;
       public          postgres    false    259    251    3423            �           2606    53774    users fk_user_gb_perfiles    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_user_gb_perfiles FOREIGN KEY (perfil_id) REFERENCES public.gb_perfiles(id);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_user_gb_perfiles;
       public          postgres    false    249    3421    264            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     