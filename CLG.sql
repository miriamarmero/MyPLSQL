CREATE OR REPLACE PROCEDURE clg (clg VARCHAR) IS
BEGIN
    DBMS_OUTPUT.PUT_LINE(clg);
END;
/
BEGIN
    clg('jola mundo cruel');
END;