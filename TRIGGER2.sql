CREATE OR REPLACE TRIGGER log_states_delete
AFTER DELETE
ON DEMO_STATES
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
DECLARE
FECHA_ACTUAL DATE := SYSDATE;
TEXT DEMO_LOGS.text%TYPE := :OLD.STATE_NAME || ' eliminado correctamente ';

BEGIN
    INSERT INTO DEMO_LOGS(LOG_DATE, TEXT) VALUES (FECHA_ACTUAL, TEXT);
END;

--CREATE [OR REPLACE ] TRIGGER trigger_name  
--{BEFORE | AFTER | INSTEAD OF }  
--{INSERT [OR] | UPDATE [OR] | DELETE}  
--[OF col_name]  
--ON table_name  
--[REFERENCING OLD AS o NEW AS n]  
--[FOR EACH ROW]  
--WHEN (condition)   
--DECLARE 
   --Declaration-statements 
--BEGIN  
   --Executable-statements 
--EXCEPTION 
   --Exception-handling-statements 
--END; 