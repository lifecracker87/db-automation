--liquibase formatted sql

--changeset bhim.sharma:Create Table Departments

CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE  KEY (dept_name)
);

--rollback DROP TABLE departments;

