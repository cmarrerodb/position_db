CREATE VIEW v_desordenadas_dia AS
SELECT
	trn_transportista.razon_social as transportista, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.patente, 
	gps_imei.imei, 
	desordenadas_dia.fecha, 
	desordenadas_dia.dia, 
	desordenadas_dia.cant
FROM
	desordenadas_dia
	LEFT JOIN
	trn_transportista
	ON 
		desordenadas_dia.transportista_id = trn_transportista.id
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
	ORDER BY trn_transportista.razon_social,gps_proveedor.razon_social,
	trn_patentes.patente, gps_imei.imei, desordenadas_dia.fecha, desordenadas_dia.dia
----------------
CREATE VIEW v_desordenadas_hora AS
SELECT
	trn_transportista.razon_social as transportista, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.patente, 
	gps_imei.imei, 
	desordenadas_hora.fecha, 
	desordenadas_hora.hora, 
	desordenadas_hora.cant
FROM
	desordenadas_hora
	LEFT JOIN
	trn_transportista
	ON 
		desordenadas_hora.transportista_id = trn_transportista.id
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
	ORDER BY trn_transportista.razon_social,gps_proveedor.razon_social,
	trn_patentes.patente, gps_imei.imei, desordenadas_hora.fecha, desordenadas_hora.hora
----------------
CREATE VIEW v_desordenadas_mes AS
SELECT
	trn_transportista.razon_social as transportista, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.patente, 
	gps_imei.imei, 
	desordenadas_mes.fecha, 
	desordenadas_mes.mes, 
	desordenadas_mes.cant
FROM
	desordenadas_mes
	LEFT JOIN
	trn_transportista
	ON 
		desordenadas_mes.transportista_id = trn_transportista.id
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
	ORDER BY trn_transportista.razon_social,gps_proveedor.razon_social,trn_patentes.patente, gps_imei.imei, 
	desordenadas_mes.fecha, desordenadas_mes.mes
----------------
CREATE VIEW v_desordenadas_semana AS
SELECT
	trn_transportista.razon_social as transportista, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.patente, 
	gps_imei.imei, 
	desordenadas_semana.fecha, 
	desordenadas_semana.semana, 
	desordenadas_semana.cant
FROM
	desordenadas_semana
	LEFT JOIN
	trn_transportista
	ON 
		desordenadas_semana.transportista_id = trn_transportista.id
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
	ORDER BY trn_transportista.razon_social,gps_proveedor.razon_social,trn_patentes.patente, gps_imei.imei, 
	desordenadas_semana.fecha, desordenadas_semana.semana
---------------
CREATE VIEW v_stats_gps_dia_patente AS
SELECT
	trn_transportista.razon_social as transportista, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.patente, 
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
	trn_transportista
	ON 
		stats_gps_dia_patente.transportista_id = trn_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_dia_patente.proveedor_id = gps_proveedor.id
	LEFT JOIN
	gps_imei
	ON 
		stats_gps_dia_patente.imei_id = gps_imei.id 
	ORDER BY trn_transportista.razon_social,gps_proveedor.razon_social,trn_patentes.patente, 
	gps_imei.imei
---------------
CREATE VIEW v_stats_gps_hora_patente AS
SELECT
	trn_transportista.razon_social as transportista, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.patente, 
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
	trn_transportista
	ON 
		stats_gps_hora_patente.transportista_id = trn_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_hora_patente.proveedor_id = gps_proveedor.id
	LEFT JOIN
	gps_imei
	ON 
		stats_gps_hora_patente.imei_id = gps_imei.id 
	ORDER BY trn_transportista.razon_social,gps_proveedor.razon_social,trn_patentes.patente, gps_imei.imei
---------------
CREATE VIEW v_stats_gps_mes_patente AS
SELECT
	trn_transportista.razon_social as transportista, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.patente, 
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
	trn_transportista
	ON 
		stats_gps_mes_patente.transportista_id = trn_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_mes_patente.proveedor_id = gps_proveedor.id
	LEFT JOIN
	gps_imei
	ON 
		stats_gps_mes_patente.imei_id = gps_imei.id 
	ORDER BY trn_transportista.razon_social,gps_proveedor.razon_social,trn_patentes.patente, gps_imei.imei
---------------
CREATE VIEW v_stats_gps_semana_patente AS
SELECT
	trn_transportista.razon_social as transportista, 
	gps_proveedor.razon_social as proveedor, 
	trn_patentes.patente, 
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
	trn_transportista
	ON 
		stats_gps_semana_patente.transportista_id = trn_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_semana_patente.proveedor_id = gps_proveedor.id
	LEFT JOIN
	gps_imei
	ON 
		stats_gps_semana_patente.imei_id = gps_imei.id 
	ORDER BY trn_transportista.razon_social,gps_proveedor.razon_social,trn_patentes.patente, 
	gps_imei.imei
---------------
CREATE VIEW v_stats_gps_dia_transportista AS
SELECT
	trn_transportista.razon_social AS transportista, 
	gps_proveedor.razon_social AS proveedor, 
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
	trn_transportista
	ON 
		stats_gps_dia_transportista.transportista_id = trn_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_dia_transportista.proveedor_id = gps_proveedor.id
	ORDER BY trn_transportista.razon_social,gps_proveedor.razon_social,stats_gps_dia_transportista.fecha,
	stats_gps_dia_transportista.dia
---------------
CREATE VIEW v_stats_gps_hora_transportista AS
SELECT
	trn_transportista.razon_social AS transportista, 
	gps_proveedor.razon_social AS proveedor, 
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
	trn_transportista
	ON 
		stats_gps_hora_transportista.transportista_id = trn_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_hora_transportista.proveedor_id = gps_proveedor.id
	ORDER BY trn_transportista.razon_social,gps_proveedor.razon_social,stats_gps_hora_transportista.fecha,
	stats_gps_hora_transportista.hora
---------------
CREATE VIEW v_stats_gps_mes_transportista AS
SELECT
	trn_transportista.razon_social AS transportista, 
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
	trn_transportista
	ON 
		stats_gps_mes_transportista.transportista_id = trn_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_mes_transportista.proveedor_id = gps_proveedor.id
	ORDER BY trn_transportista.razon_social,gps_proveedor.razon_social,stats_gps_mes_transportista.fecha,
	stats_gps_mes_transportista.mes
---------------
CREATE VIEW v_stats_gps_semana_transportista AS
SELECT
	trn_transportista.razon_social AS transportista, 
	gps_proveedor.razon_social AS proveedor, 
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
	trn_transportista
	ON 
		stats_gps_semana_transportista.transportista_id = trn_transportista.id
	LEFT JOIN
	gps_proveedor
	ON 
		stats_gps_semana_transportista.proveedor_id = gps_proveedor.id
	ORDER BY trn_transportista.razon_social,gps_proveedor.razon_social,stats_gps_semana_transportista.fecha,
	stats_gps_semana_transportista.semana
---------------
CREATE VIEW v_stats_trafic_proveedor_day AS
SELECT
	gps_proveedor.razon_social AS proveedor, 
	stats_trafic_proveedor_day.fecha, 
	stats_trafic_proveedor_day.cantidad
FROM
	stats_trafic_proveedor_day
	INNER JOIN
	gps_proveedor
	ON 
		stats_trafic_proveedor_day.proveedor_id = gps_proveedor.id
---------------
CREATE VIEW v_stats_trafic_proveedor_hour AS
SELECT
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
	ORDER BY gps_proveedor.razon_social, stats_trafic_proveedor_hour.fecha, stats_trafic_proveedor_hour.hora
---------------
CREATE VIEW v_stats_trafic_proveedor_min AS
SELECT
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
	stats_trafic_proveedor_min.minuto
---------------
CREATE VIEW v_stats_trafic_proveedor_month AS
SELECT
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
	ORDER BY gps_proveedor.razon_social, stats_trafic_proveedor_month.anio, stats_trafic_proveedor_month.mes


