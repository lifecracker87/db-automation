--liquibase formatted sql

--changeset bhim.sharma:101
CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE (dept_name)
);

--rollback DROP TABLE departments;

--changeset bhim.sharma:104
ALTER TABLE departments add column new_col varchar(20);

--rollback ALTER TABLE departments drop column new_col;

