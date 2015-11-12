SELECT 
  EVTCC_NDOC AS IDASSEVENTO, EVT_COD AS EVENTO_COD, EVT_DES AS EVENTO_DESCRIZIONE,
  (SELECT COUNT(EVTCC_NDOC) FROM SALOP.EVTCCCC a WHERE a.EVTCC_PAP = B.EVTCC_NDOC AND ROWNUM<2) AS HAFIGLI, 
  EVTCC_STATO AS STATO_COD, 
  STATO_DESCR AS STATO_DESCRIZIONE, EVTCC_DATA AS DATA_CREAZIONE, EVTCC_PAP AS IDASSEVENTO_PADRE,
  EVTCC_EMI AS REPARTO_COD, 
  NVL(REP_DESC, NVL(DIS_DESC, 'REPARTO NON DECODIFICABILE')) AS REPARTO_DESCRIZIONE, 
  NVL(EVTCC_SDO, EVTCC_PROGR) AS ACCESSO_ID,
  -1 AS TIPO_ACCESSO_CODICE,
  '' AS TIPO_ACCESSO_DESCRIZIONE  
  FROM SALOP.EVTCCCC B,EVTCS, SALOP.EVT_STATO, SALOP.DSANAREP, CUP99.PRANADIS WHERE EVT_COD= EVTCC_COD AND EVTCC_OBSO = '0' AND STATO_COD=EVTCC_STATO AND EVTCC_NDOC = :IDASSEVENTO AND REP_CINT(+) = EVTCC_EMI AND DIS_CODI(+) = SUBSTR(EVTCC_EMI,1,2) ORDER BY EVTCC_ORD