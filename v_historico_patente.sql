CREATE VIEW v_historico_patente AS 
SELECT
	gps_real_time.rejected, 
	gps_real_time.imei_id, 
	gps_imei.imei, 
	gps_real_time.transportista_id, 
	UPPER(trn_transportista.razon_social) AS transportista, 
	gps_real_time.proveedor_id, 
	UPPER(gps_proveedor.razon_social) AS provvedor, 
	gps_real_time.patente_id, 
	UPPER(trn_patentes.patente) AS patente, 
	gps_real_time.timestamp_gps, 
	gps_real_time.timestamp_sys, 
	gps_real_time.frecuencia, 
	gps_real_time.latencia, 
	gps_real_time.ordenada, 
	gps_real_time.motor, 
	gps_real_time.raw_data
FROM
	gps_real_time
	LEFT JOIN
	trn_patentes
	ON 
		gps_real_time.patente_id = trn_patentes.id
	LEFT JOIN
	gps_imei
	ON 
		gps_real_time.imei_id = gps_imei.id AND
		trn_patentes.id = gps_imei.patente_id
	LEFT JOIN
	gps_proveedor
	ON 
		gps_imei.proveedor_id = gps_proveedor.id AND
		gps_real_time.proveedor_id = gps_proveedor.id
	LEFT JOIN
	trn_transportista
	ON 
		gps_imei.transportista_id = trn_transportista.id AND
		gps_real_time.transportista_id = trn_transportista.id AND
		trn_patentes.transportista_id = trn_transportista.id