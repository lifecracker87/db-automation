--liquibase formatted sql

--changeset bhim.sharma:100 runOnChange:true
CREATE PROCEDURE account_count()
BEGIN
  SELECT 'Number of accounts in DB:', COUNT(*) FROM mysql.user;
END;

--rollback DROP PROCEDURE account_count;
--rollback CREATE PROCEDURE account_count()
--rollback BEGIN
--rollback SELECT 'Number of accounts:', COUNT(*) FROM mysql.user;
--rollback END;
