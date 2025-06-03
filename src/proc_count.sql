--liquibase formatted sql

--changeset bhim.sharma:100
CREATE OR REPLACE FUNCTION a_proc()
RETURNS TABLE(foo TEXT, bar TEXT) AS $$
BEGIN
  RETURN QUERY SELECT 'foo', 'bar';
END;
$$ LANGUAGE plpgsql;

--rollback DROP FUNCTION IF EXISTS a_proc();
