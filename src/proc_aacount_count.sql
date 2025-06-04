--liquibase formatted sql

--changeset bhim.sharma:100 runOnChange:true
CREATE OR REPLACE PROCEDURE account_count()
BEGIN
  SELECT 'Number of accounts in DB:', COUNT(*) FROM mysql.user;
END;

--rollback CREATE OR REPLACE PROCEDURE account_count()
--rollback BEGIN
--rollback SELECT 'Number of accounts:', COUNT(*) FROM mysql.user;
--rollback END;
