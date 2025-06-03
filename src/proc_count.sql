--liquibase formatted sql

--changeset bhim.sharma:100
CREATE PROCEDURE log_message()
LANGUAGE plpgsql
AS $$
BEGIN
  RAISE NOTICE 'This is a sample procedure.';
END;
$$;

--rollback DROP PROCEDURE IF EXISTS log_message();
