--liquibase formatted sql

--changeset bhim.sharma:101
CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE (dept_name)
);

--rollback DROP TABLE departments;

