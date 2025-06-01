--liquibase formatted sql

--changeset bhim.sharma:Modify Procedure User Count

DROP PROCEDURE IF EXISTS account_count;
CREATE PROCEDURE account_count()
BEGIN
  SELECT 'Number of accounts in DB:', COUNT(*) FROM mysql.user;
END;

--rollback /*
DROP PROCEDURE IF EXISTS account_count;
CREATE PROCEDURE account_count()
BEGIN
  SELECT 'Number of accounts:', COUNT(*) FROM mysql.user;
END;
*/