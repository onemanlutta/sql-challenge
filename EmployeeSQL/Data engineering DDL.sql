/***********************************************
** DATA ANALYTICS
** File: EmployeeSQL
** Desc: DDL Script for Creating the Tables in EmployeeSQL Database in pgAdmin
** Auth: Maero, Athanasius Lutta
** Date: 05/01/2024
** Ref : https://github.com/onemanlutta/sql-challenge
************************************************/

DROP DATABASE IF EXISTS EmployeeSQL;

CREATE DATABASE EmployeeSQL;

-- USE EmployeeSQL;
SELECT current_database();


CREATE TABLE "titles" (
    "title_id" 	varchar(10)   		NOT NULL,
    "title" 	varchar(50)   		NOT NULL,
    PRIMARY KEY ("title_id")
);

CREATE TABLE "departments" (
    "dept_no" 	varchar(10)   		NOT NULL,
    "dept_name" varchar(50)   		NOT NULL,
    PRIMARY KEY ("dept_no")
);

CREATE TABLE "employees" (
    "emp_no" 			int   			NOT NULL,
    "emp_title_id" 		varchar(10)   	NOT NULL,
    "birth_date" 		date   			NOT NULL,
    "first_name" 		varchar(50)   	NOT NULL,
    "last_name" 		varchar(50)   	NOT NULL,
    "sex" 				varchar(2)   	NOT NULL,
    "hire_date" 		date   			NOT NULL,
    PRIMARY KEY ("emp_no"),
	CONSTRAINT fk_emp_title_id FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE "dept_manager" (
    "dept_no" 		varchar(10)   	NOT NULL,
    "emp_no" 		int   			NOT NULL,
    PRIMARY KEY ("dept_no","emp_no"),
	CONSTRAINT fk_dept_no FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	CONSTRAINT fk_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE "salaries" (
    "emp_no" 		int   			NOT NULL,
    "salary" 		int   			NOT NULL,
    PRIMARY KEY ("emp_no","salary"),
	CONSTRAINT fk_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE "dept_emp" (
    "emp_no" 		int   			NOT NULL,
    "dept_no" 		varchar(10)   	NOT NULL,
    PRIMARY KEY ("emp_no","dept_no"),
	CONSTRAINT fk_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	CONSTRAINT fk_dept_no FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


