SELECT
	'Id = "' || PAZ_CPAZ || '", ' ||
	'Cognome = "' || COGNOME || '", ' ||
	'Nome = "' || NOME || '", ' ||
	'Sesso = "' || SESSO || '", ' ||
	'CF = "' || CODICE_FISCALE || '", ' ||
	'DataDiNascita = new DateTime(' || TO_CHAR(DATA_NASCITA,'YYYY, MM, DD') || ')", ' ||
	'Residenza = "' || INDIRIZZO_RES || ' ' ||	NCIVICO_RES || ', ' || CAP_RES || ' '  || COM_DES_RES || '", ' ||
	'MedicoCompetenteCod = "' || 	MEDICO_COD || '", ' ||
	'MedicoCompetenteNome = "' || MEDICO_DES || '", ' ||
	'TesseraSanitaria = "' || TESSERA_SANITARIA || '"'
FROM NIXON.PATIENT_ALL_DECODED
WHERE NIXON.PATIENT_ALL_DECODED.PAZ_CPAZ IN (
  '68004422', '68006066', '68048613', '68051312', '68001116', 
  '68158978', '68059891', '68054842', '68067928', '68041650', 
  '68071866', '68152630', '68072384', '68008123', '68072382', 
  '68016218', '68010779', '68157408', '68010780')