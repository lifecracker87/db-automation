--liquibase formatted sql

--changeset bhim.sharma:100 runOnChange:true
CREATE OR REPLACE PROCEDURE greet_user (username IN VARCHAR2) AS
BEGIN
  DBMS_OUTPUT.PUT_LINE('Hello, ' || username || '!');
END;

--rollback DROP PROCEDURE IF EXISTS greet_user;
