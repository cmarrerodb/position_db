--MODIFCAR EL DBSCHEMA Y ELIMINAR LA TABLA gps_transportista
CREATE VIEW v_desordenadas_dia AS
SELECT
	desordenadas_dia.id,
	gps_transportista.id as transportista_id, 
	gps_transportista.razon_social as transportista, 
	gps_proveedor.id as proveedor_id, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.id as patente_id, 
	trn_patentes.patente, 
	gps_imei.id as imei_id, 
	gps_imei.imei, 
	desordenadas_dia.fecha, 
	desordenadas_dia.dia, 
	desordenadas_dia.cant
FROM
	desordenadas_dia
	LEFT JOIN
	gps_transportista
	ON 
		desordenadas_dia.transportista_id = gps_transportista.id
	LEFT JOIN
	trn_patentes
	ON 
		desordenadas_dia.patente_id = trn_patentes.id
	LEFT JOIN
	gps_proveedor
	ON 
		desordenadas_dia.proveedor_id = gps_proveedor.id
	LEFT JOIN
	gps_imei
	ON 
		desordenadas_dia.imei_id = gps_imei.id 
	ORDER BY gps_transportista.razon_social,gps_proveedor.razon_social,
	trn_patentes.patente, gps_imei.imei, desordenadas_dia.fecha, desordenadas_dia.dia;
----------------
CREATE VIEW v_desordenadas_hora AS
SELECT
	desordenadas_hora.id,
	gps_transportista.id as transportista_id, 
	gps_transportista.razon_social as transportista, 
	gps_proveedor.id as proveedor_id, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.id as patente_id, 
	trn_patentes.patente, 
	gps_imei.id as imei_id, 
	gps_imei.imei, 
	desordenadas_hora.fecha, 
	desordenadas_hora.hora, 
	desordenadas_hora.cant
FROM
	desordenadas_hora
	LEFT JOIN
	gps_transportista
	ON 
		desordenadas_hora.transportista_id = gps_transportista.id
	LEFT JOIN
	trn_patentes
	ON 
		desordenadas_hora.patente_id = trn_patentes.id
	LEFT JOIN
	gps_proveedor
	ON 
		desordenadas_hora.proveedor_id = gps_proveedor.id
	LEFT JOIN
	gps_imei
	ON 
		desordenadas_hora.imei_id = gps_imei.id 
	ORDER BY gps_transportista.razon_social,gps_proveedor.razon_social,
	trn_patentes.patente, gps_imei.imei, desordenadas_hora.fecha, desordenadas_hora.hora;
----------------
CREATE VIEW v_desordenadas_mes AS
SELECT
	desordenadas_mes.id,
	gps_transportista.id as transportista_id, 
	gps_transportista.razon_social as transportista, 
	gps_proveedor.id as proveedor_id, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.id as patente_id, 
	trn_patentes.patente, 
	gps_imei.id as imei_id, 
	gps_imei.imei, 
	desordenadas_mes.fecha, 
	desordenadas_mes.mes, 
	desordenadas_mes.cant
FROM
	desordenadas_mes
	LEFT JOIN
	gps_transportista
	ON 
		desordenadas_mes.transportista_id = gps_transportista.id
	LEFT JOIN
	trn_patentes
	ON 
		desordenadas_mes.patente_id = trn_patentes.id
	LEFT JOIN
	gps_proveedor
	ON 
		desordenadas_mes.proveedor_id = gps_proveedor.id
	LEFT JOIN
	gps_imei
	ON 
		desordenadas_mes.imei_id = gps_imei.id 
	ORDER BY gps_transportista.razon_social,gps_proveedor.razon_social,trn_patentes.patente, gps_imei.imei, 
	desordenadas_mes.fecha, desordenadas_mes.mes;
----------------
CREATE VIEW v_desordenadas_semana AS
SELECT
	desordenadas_semana.id,
	gps_transportista.id as transportista_id, 
	gps_transportista.razon_social as transportista, 
	gps_proveedor.id as proveedor_id, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.id as patente_id, 
	trn_patentes.patente, 
	gps_imei.id as imei_id, 
	gps_imei.imei, 
	desordenadas_semana.fecha, 
	desordenadas_semana.semana, 
	desordenadas_semana.cant
FROM
	desordenadas_semana
	LEFT JOIN
	gps_transportista
	ON 
		desordenadas_semana.transportista_id = gps_transportista.id
	LEFT JOIN
	trn_patentes
	ON 
		desordenadas_semana.patente_id = trn_patentes.id
	LEFT JOIN
	gps_proveedor
	ON 
		desordenadas_semana.proveedor_id = gps_proveedor.id
	LEFT JOIN
	gps_imei
	ON 
		desordenadas_semana.imei_id = gps_imei.id 
	ORDER BY gps_transportista.razon_social,gps_proveedor.razon_social,trn_patentes.patente, gps_imei.imei, 
	desordenadas_semana.fecha, desordenadas_semana.semana;
---------------
CREATE VIEW v_stats_gps_dia_patente AS
SELECT
	stats_gps_dia_patente.id,
	gps_transportista.id as transportista_id, 
	gps_transportista.razon_social as transportista, 
	gps_proveedor.id as proveedor_id, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.id as patente_id, 
	trn_patentes.patente, 
	gps_imei.id as imei_id, 
	gps_imei.imei, 
	stats_gps_dia_patente.fecha, 
	stats_gps_dia_patente.dia, 
	stats_gps_dia_patente.frecuencia_motor_on, 
	stats_gps_dia_patente.frecuencia_motor_off, 
	stats_gps_dia_patente.latencia, 
	stats_gps_dia_patente.q_patetentes_no_ign, 
	stats_gps_dia_patente.q_patentes_no_deteccion, 
	stats_gps_dia_patente.q_desordenadas
FROM
	stats_gps_dia_patente
	LEFT JOIN
	trn_patentes
	ON 
		stats_gps_dia_patente.patente_id = trn_patentes.id
	LEFT JOIN
	gps_transportista
	ON 
		stats_gps_dia_patente.transportista_id = gps_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_dia_patente.proveedor_id = gps_proveedor.id
	LEFT JOIN
	gps_imei
	ON 
		stats_gps_dia_patente.imei_id = gps_imei.id 
	ORDER BY gps_transportista.razon_social,gps_proveedor.razon_social,trn_patentes.patente, 
	gps_imei.imei;
---------------
CREATE VIEW v_stats_gps_hora_patente AS
SELECT
	stats_gps_hora_patente.id,
	gps_transportista.id as transportista_id, 
	gps_transportista.razon_social as transportista, 
	gps_proveedor.id as proveedor_id, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.id as patente_id, 
	trn_patentes.patente, 
	gps_imei.id as imei_id, 
	gps_imei.imei, 
	stats_gps_hora_patente.fecha, 
	stats_gps_hora_patente.hora, 
	stats_gps_hora_patente.frecuencia_motor_on, 
	stats_gps_hora_patente.frecuencia_motor_off, 
	stats_gps_hora_patente.latencia, 
	stats_gps_hora_patente.q_patetentes_no_ign, 
	stats_gps_hora_patente.q_patentes_no_deteccion, 
	stats_gps_hora_patente.q_desordenadas
FROM
	stats_gps_hora_patente
	LEFT JOIN
	trn_patentes
	ON 
		stats_gps_hora_patente.patente_id = trn_patentes.id
	LEFT JOIN
	gps_transportista
	ON 
		stats_gps_hora_patente.transportista_id = gps_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_hora_patente.proveedor_id = gps_proveedor.id
	LEFT JOIN
	gps_imei
	ON 
		stats_gps_hora_patente.imei_id = gps_imei.id 
	ORDER BY gps_transportista.razon_social,gps_proveedor.razon_social,trn_patentes.patente, 
	gps_imei.imei;
---------------
CREATE VIEW v_stats_gps_mes_patente AS
SELECT
	stats_gps_mes_patente.id,
	gps_transportista.id as transportista_id, 
	gps_transportista.razon_social as transportista, 
	gps_proveedor.id as proveedor_id, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.id as patente_id, 
	trn_patentes.patente, 
	gps_imei.id as imei_id, 
	gps_imei.imei, 
	stats_gps_mes_patente.fecha, 
	stats_gps_mes_patente.mes, 
	stats_gps_mes_patente.frecuencia_motor_on, 
	stats_gps_mes_patente.frecuencia_motor_off, 
	stats_gps_mes_patente.latencia, 
	stats_gps_mes_patente.q_patetentes_no_ign, 
	stats_gps_mes_patente.q_patentes_no_deteccion, 
	stats_gps_mes_patente.q_desordenadas
FROM
	stats_gps_mes_patente
	LEFT JOIN
	trn_patentes
	ON 
		stats_gps_mes_patente.patente_id = trn_patentes.id
	LEFT JOIN
	gps_transportista
	ON 
		stats_gps_mes_patente.transportista_id = gps_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_mes_patente.proveedor_id = gps_proveedor.id
	LEFT JOIN
	gps_imei
	ON 
		stats_gps_mes_patente.imei_id = gps_imei.id 
	ORDER BY gps_transportista.razon_social,gps_proveedor.razon_social,trn_patentes.patente, 
	gps_imei.imei;
---------------
CREATE VIEW v_stats_gps_semana_patente AS
SELECT
	stats_gps_semana_patente.id,
	gps_transportista.id as transportista_id, 
	gps_transportista.razon_social as transportista, 
	gps_proveedor.id as proveedor_id, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.id as patente_id, 
	trn_patentes.patente, 
	gps_imei.id as imei_id, 
	gps_imei.imei, 
	stats_gps_semana_patente.fecha, 
	stats_gps_semana_patente.semana, 
	stats_gps_semana_patente.frecuencia_motor_on, 
	stats_gps_semana_patente.frecuencia_motor_off, 
	stats_gps_semana_patente.latencia, 
	stats_gps_semana_patente.q_patetentes_no_ign, 
	stats_gps_semana_patente.q_patentes_no_deteccion, 
	stats_gps_semana_patente.q_desordenadas
FROM
	stats_gps_semana_patente
	LEFT JOIN
	trn_patentes
	ON 
		stats_gps_semana_patente.patente_id = trn_patentes.id
	LEFT JOIN
	gps_transportista
	ON 
		stats_gps_semana_patente.transportista_id = gps_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_semana_patente.proveedor_id = gps_proveedor.id
	LEFT JOIN
	gps_imei
	ON 
		stats_gps_semana_patente.imei_id = gps_imei.id 
	ORDER BY gps_transportista.razon_social,gps_proveedor.razon_social,trn_patentes.patente, 
	gps_imei.imei;
---------------
CREATE VIEW v_stats_gps_dia_transportista AS
SELECT
	stats_gps_dia_transportista.id,
	gps_transportista.id as transportista_id, 
	gps_transportista.razon_social as transportista, 
	gps_proveedor.id as proveedor_id, 
	gps_proveedor.razon_social as proveedor, 
-- 	gps_transportista.razon_social AS transportista, 
-- 	gps_proveedor.razon_social AS proveedor, 
	stats_gps_dia_transportista.fecha, 
	stats_gps_dia_transportista.dia, 
	stats_gps_dia_transportista.frecuencia_motor_on, 
	stats_gps_dia_transportista.frecuencia_motor_off, 
	stats_gps_dia_transportista.latencia, 
	stats_gps_dia_transportista.q_patetentes_no_ign, 
	stats_gps_dia_transportista.q_patentes_no_deteccion, 
	stats_gps_dia_transportista.q_desordenadas
FROM
	stats_gps_dia_transportista
	LEFT JOIN
	gps_transportista
	ON 
		stats_gps_dia_transportista.transportista_id = gps_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_dia_transportista.proveedor_id = gps_proveedor.id
	ORDER BY gps_transportista.razon_social,gps_proveedor.razon_social,stats_gps_dia_transportista.fecha,
	stats_gps_dia_transportista.dia;
---------------
CREATE VIEW v_stats_gps_hora_transportista AS
SELECT
	stats_gps_hora_transportista.id,
	gps_transportista.id as transportista_id, 
	gps_transportista.razon_social as transportista, 
	gps_proveedor.id as proveedor_id, 
	gps_proveedor.razon_social as proveedor, 
-- 	gps_transportista.razon_social AS transportista, 
-- 	gps_proveedor.razon_social AS proveedor, 
	stats_gps_hora_transportista.fecha, 
	stats_gps_hora_transportista.hora, 
	stats_gps_hora_transportista.frecuencia_motor_on, 
	stats_gps_hora_transportista.frecuencia_motor_off, 
	stats_gps_hora_transportista.latencia, 
	stats_gps_hora_transportista.q_patetentes_no_ign, 
	stats_gps_hora_transportista.q_patentes_no_deteccion, 
	stats_gps_hora_transportista.q_desordenadas
FROM
	stats_gps_hora_transportista
	LEFT JOIN
	gps_transportista
	ON 
		stats_gps_hora_transportista.transportista_id = gps_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_hora_transportista.proveedor_id = gps_proveedor.id
	ORDER BY gps_transportista.razon_social,gps_proveedor.razon_social,stats_gps_hora_transportista.fecha,
	stats_gps_hora_transportista.hora;
---------------
CREATE VIEW v_stats_gps_mes_transportista AS
SELECT
	gps_transportista.razon_social AS transportista, 
	gps_proveedor.razon_social AS proveedor, 
	stats_gps_mes_transportista.fecha, 
	stats_gps_mes_transportista.mes, 
	stats_gps_mes_transportista.frecuencia_motor_on, 
	stats_gps_mes_transportista.frecuencia_motor_off, 
	stats_gps_mes_transportista.latencia, 
	stats_gps_mes_transportista.q_patetentes_no_ign, 
	stats_gps_mes_transportista.q_patentes_no_deteccion, 
	stats_gps_mes_transportista.q_desordenadas
FROM
	stats_gps_mes_transportista
	LEFT JOIN
	gps_transportista
	ON 
		stats_gps_mes_transportista.transportista_id = gps_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_mes_transportista.proveedor_id = gps_proveedor.id
	ORDER BY gps_transportista.razon_social,gps_proveedor.razon_social,stats_gps_mes_transportista.fecha,
	stats_gps_mes_transportista.mes;
---------------
CREATE VIEW v_stats_gps_semana_transportista AS
SELECT
	stats_gps_semana_transportista.id,
	gps_transportista.id as transportista_id, 
	gps_transportista.razon_social as transportista, 
	gps_proveedor.id as proveedor_id, 
	gps_proveedor.razon_social as proveedor, 
-- 	gps_transportista.razon_social AS transportista, 
-- 	gps_proveedor.razon_social AS proveedor, 
	stats_gps_semana_transportista.fecha, 
	stats_gps_semana_transportista.semana, 
	stats_gps_semana_transportista.frecuencia_motor_on, 
	stats_gps_semana_transportista.frecuencia_motor_off, 
	stats_gps_semana_transportista.latencia, 
	stats_gps_semana_transportista.q_patetentes_no_ign, 
	stats_gps_semana_transportista.q_patentes_no_deteccion, 
	stats_gps_semana_transportista.q_desordenadas
FROM
	stats_gps_semana_transportista
	LEFT JOIN
	gps_transportista
	ON 
		stats_gps_semana_transportista.transportista_id = gps_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_semana_transportista.proveedor_id = gps_proveedor.id
	ORDER BY gps_transportista.razon_social,gps_proveedor.razon_social,stats_gps_semana_transportista.fecha,
	stats_gps_semana_transportista.semana;
---------------MOSCA
CREATE VIEW v_stats_trafic_proveedor_day AS
SELECT
	stats_trafic_proveedor_day.id,
	gps_proveedor.id as proveedor_id, 
	gps_proveedor.razon_social as proveedor, 
	stats_trafic_proveedor_day.fecha, 
	stats_trafic_proveedor_day.cantidad
FROM
	stats_trafic_proveedor_day
	INNER JOIN
	gps_proveedor
	ON 
		stats_trafic_proveedor_day.proveedor_id = gps_proveedor.id;
---------------
CREATE VIEW v_stats_trafic_proveedor_hour AS
SELECT
	stats_trafic_proveedor_hour.id, 
	stats_trafic_proveedor_hour.proveedor_id, 
	gps_proveedor.razon_social AS proveedor, 
	stats_trafic_proveedor_hour.fecha, 
	stats_trafic_proveedor_hour.hora, 
	stats_trafic_proveedor_hour.cantidad
FROM
	stats_trafic_proveedor_hour
	LEFT JOIN
	gps_proveedor
	ON 
		stats_trafic_proveedor_hour.proveedor_id = gps_proveedor.id
	ORDER BY gps_proveedor.razon_social, stats_trafic_proveedor_hour.fecha, 
	stats_trafic_proveedor_hour.hora;
---------------
CREATE VIEW v_stats_trafic_proveedor_min AS
SELECT
	stats_trafic_proveedor_min.id, 
	stats_trafic_proveedor_min.proveedor_id, 
	gps_proveedor.razon_social AS proveedor, 
	stats_trafic_proveedor_min.fecha, 
	stats_trafic_proveedor_min.hora, 
	stats_trafic_proveedor_min.minuto, 
	stats_trafic_proveedor_min.cantidad
FROM
	stats_trafic_proveedor_min
	LEFT JOIN
	gps_proveedor
	ON 
		stats_trafic_proveedor_min.proveedor_id = gps_proveedor.id
	ORDER BY gps_proveedor.razon_social, stats_trafic_proveedor_min.fecha, stats_trafic_proveedor_min.hora, 
	stats_trafic_proveedor_min.minuto;
---------------
CREATE VIEW v_stats_trafic_proveedor_month AS
SELECT
	stats_trafic_proveedor_month.id, 
	stats_trafic_proveedor_month.proveedor_id, 
	gps_proveedor.razon_social AS proveedor, 
	stats_trafic_proveedor_month.anio, 
	stats_trafic_proveedor_month.mes, 
	stats_trafic_proveedor_month.cantidad
FROM
	stats_trafic_proveedor_month
	LEFT JOIN
	gps_proveedor
	ON 
		stats_trafic_proveedor_month.proveedor_id = gps_proveedor.id
	ORDER BY gps_proveedor.razon_social, stats_trafic_proveedor_month.anio, 
	stats_trafic_proveedor_month.mes;
---------------
CREATE VIEW v_transportistas_patentes AS
SELECT
	trn_patentes.id, 
	trn_patentes.transportista_id, 
	gps_transportista.razon_social AS transportista, 
	trn_patentes.patente
FROM
	trn_patentes
	LEFT JOIN
	gps_transportista
	ON 
		trn_patentes.transportista_id = gps_transportista.id
ORDER BY gps_transportista.razon_social,trn_patentes.patente;
---------------
CREATE VIEW v_cant_patentes_transportistas AS
SELECT
	trn_patentes.transportista_id, 
	gps_transportista.razon_social AS transportista, 
	count(trn_patentes.patente) AS cant_patentes
FROM
	trn_patentes
	LEFT JOIN
	gps_transportista
	ON 
		trn_patentes.transportista_id = gps_transportista.id
GROUP BY trn_patentes.transportista_id, gps_transportista.razon_social
ORDER BY count(trn_patentes.patente) DESC;
---------------
CREATE VIEW v_patentes_proveedores AS
SELECT
	gps_proveedor.id AS proveedor_id, 
	gps_proveedor.razon_social AS proveedor, 
	trn_patentes.id AS patente_id, 
	trn_patentes.patente
FROM
	gps_imei
	LEFT JOIN
	gps_proveedor
	ON 
		gps_imei.proveedor_id = gps_proveedor.id
	LEFT JOIN
	trn_patentes
	ON 
		gps_imei.patente_id = trn_patentes.id
	ORDER BY gps_proveedor.razon_social,trn_patentes.patente;
---------------
CREATE VIEW v_cant_patentes_proveedores AS
SELECT
	gps_proveedor.id AS proveedor_id, 
	gps_proveedor.razon_social AS proveedor, 
	COUNT(trn_patentes.patente) AS cant_patentes
FROM
	gps_imei
	LEFT JOIN
	gps_proveedor
	ON 
		gps_imei.proveedor_id = gps_proveedor.id
	LEFT JOIN
	trn_patentes
	ON 
		gps_imei.patente_id = trn_patentes.id
	GROUP BY gps_proveedor.id, gps_proveedor.razon_social
	ORDER BY count(trn_patentes.patente) DESC;
---------------
CREATE VIEW v_imei_patentes_transportistas AS
SELECT
	gps_transportista.id AS transportista_id, 
	gps_transportista.razon_social AS transportista, 
	trn_patentes.id AS patente_id, 
	trn_patentes.patente, 
	gps_imei.id, 
	gps_imei.imei
FROM
	gps_imei
	LEFT JOIN
	trn_patentes
	ON 
		gps_imei.patente_id = trn_patentes.id
	LEFT JOIN
	gps_transportista
	ON 
		gps_imei.transportista_id = gps_transportista.id
ORDER BY gps_transportista.razon_social,
	trn_patentes.patente,
	gps_imei.imei;
---------------
CREATE VIEW v_imei_transportistas AS
SELECT
	gps_transportista.id AS transportista_id, 
	gps_transportista.razon_social AS transportista, 
	gps_imei.id AS imei_id, 
	gps_imei.imei
FROM
	gps_imei
	LEFT JOIN
	gps_transportista
	ON 
		gps_imei.transportista_id = gps_transportista.id
ORDER BY gps_transportista.razon_social,gps_imei.imei;
---------------
CREATE VIEW v_cant_imei_transportistas AS
SELECT
	gps_transportista.id AS transportista_id, 
	gps_transportista.razon_social AS transportista, 
	COUNT(gps_imei.imei) AS cant_imei
FROM
	gps_imei
	LEFT JOIN
	gps_transportista
	ON 
		gps_imei.transportista_id = gps_transportista.id
GROUP BY gps_transportista.id,gps_transportista.razon_social

ORDER BY COUNT(gps_imei.imei) DESC;

---------------
CREATE VIEW v_imei_proveedores AS
SELECT
	gps_proveedor.id AS proveedor_id, 
	gps_proveedor.razon_social AS proveedor, 
	trn_patentes.id AS patente_id, 
	trn_patentes.patente, 
	gps_imei.id, 
	gps_imei.imei
FROM
	gps_imei
	LEFT JOIN
	gps_proveedor
	ON 
		gps_imei.proveedor_id = gps_proveedor.id
	LEFT JOIN
	trn_patentes
	ON 
		gps_imei.patente_id = trn_patentes.id

ORDER BY gps_proveedor.razon_social,trn_patentes.patente,
	gps_imei.imei;

---------------
CREATE VIEW v_cant_imei_proveedores AS
SELECT
	gps_proveedor.id AS proveedor_id, 
	gps_proveedor.razon_social AS proveedor, 
	COUNT(gps_imei.imei) AS cant_imei
FROM
	gps_imei
	LEFT JOIN
	gps_proveedor
	ON 
		gps_imei.proveedor_id = gps_proveedor.id
	LEFT JOIN
	trn_patentes
	ON 
		gps_imei.patente_id = trn_patentes.id
GROUP BY gps_proveedor.id, gps_proveedor.razon_social 
ORDER BY COUNT(gps_imei.imei) DESC;
---------------
CREATE VIEW v_imei_patentes_transportistas_proveedores AS
SELECT
	gps_transportista.id AS transportista_id, 
	gps_transportista.razon_social AS transportista, 
	gps_proveedor.id AS proveedor_id, 
	gps_proveedor.razon_social AS proveedor, 
	trn_patentes.id AS patente_id, 
	trn_patentes.patente, 
	gps_imei.id, 
	gps_imei.imei
FROM
	gps_imei
	LEFT JOIN
	gps_proveedor
	ON 
		gps_imei.proveedor_id = gps_proveedor.id
	LEFT JOIN
	trn_patentes
	ON 
		gps_imei.patente_id = trn_patentes.id
	LEFT JOIN
	gps_transportista
	ON 
		gps_imei.transportista_id = gps_transportista.id
ORDER BY gps_transportista.razon_social,
	gps_proveedor.razon_social,trn_patentes.patente,
	gps_imei.imei;
