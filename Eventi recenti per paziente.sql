SELECT
  EVTCCCC.*
FROM EVTCCCC 
WHERE
    EVTCC_DATA BETWEEN TO_DATE('01-01-2010', 'mm-DD-yyyy') AND SYSDATE
    AND ROWNUM <= 10
    AND EVTCC_PAZ = '68005729'
ORDER BY EVTCC_DATA DESC