--liquibase formatted sql

--changeset bhim.sharma:100

CREATE PROCEDURE a_proc()
BEGIN
  SELECT 'foo' AS foo, 'bar' AS bar;
END;

--rollback DROP PROCEDURE a_proc;
