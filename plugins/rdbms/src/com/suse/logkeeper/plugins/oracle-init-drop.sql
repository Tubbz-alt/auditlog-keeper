BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE AUDIT_LOG_EXTMAP';
  EXECUTE IMMEDIATE 'DROP TABLE AUDIT_LOG_ENTRIES';
  EXECUTE IMMEDIATE 'DROP SEQUENCE AUDIT_LOG_SEQ';
EXCEPTION
  WHEN OTHERS THEN
    IF SQLCODE != -942 THEN
      RAISE;
    END IF;
END;