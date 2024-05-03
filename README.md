# sql-challenge

# The Challenge

As a newly hired data engineer at Pewlett Hackard (fictional company), I research about the people the company employeed during the 1980s and 1990s in my second week of employment. This information is available in six CSV files as the employee database. 


# The Solution in Brief

I perform data modeling by designing the tables to hold the data from the csv files, engage data engineering skills to import the csv files into a relational database management system (RDBMS) and, utilize  Structure Query Language (SQL) for data analysis to answer questions about the employees from the database. The CSV files are the data sources for this project, I use [QuickDBD](https://app.quickdatabasediagrams.com/#/) to design and sketch the Entity Relationship Diagrams of the tables, utilize Postgres and pgAdmin to develop and build the database schema, tables and fields and eventually to import from the csv files. The Query Tool in pgAdmin is then used to query and output results for data analysis in SQL.

[pgAdmin QueryTool]![pgAdminQueryTool](https://github.com/onemanlutta/sql-challenge/assets/118937365/ef224f4f-a3c2-4722-a67e-e40fcc2e7171)


# The Tasks


## 1. Data Modeling

- Inspect the CSV files to understand the data structure, data types, and field names.
- Confirm that the datasets are normalized, otherwise strive for the thirds normal form i.e. 3NF.
- In [QuickDBD](https://app.quickdatabasediagrams.com/#/), sketch the Entity Relationship Diagram (ERD) of the tables.
  - Draw the ERD for this project.


## 2. Data Engineering

- While developing the Entity Relationship Diagram (ERD) of the tables:
  - Define the database schema,
  - Specify the data types, primary keys, foreign keys, and other constraints.
  - For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site, which takes two primary keys to uniquely identify a row.
  - Exporting the ERD, in this case as PostgreSQL.
  - Run the ERD script in the relational database management system (RDBM) in this case we are using Postgres and accessing with pgAdmin.
  - Remember to create the tables in the correct order to handle the foreign keys.
- Import each CSV file into its corresponding SQL table.
  
 
## 3. Data Analysis

Using SQL

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


# Project Files and Outputs

1. The EmployeeSQL directory contains the [data engineering](Data engineering DDL.sql) and [data analysis SQL](Data analysis DML.sql) code used to create and complete the tasks in this project.
2. Also in the root of EmployeeSQL directory is the image of the [Entity Relationship Diagram](![QuickDBD-EmployeeSQL](https://github.com/onemanlutta/sql-challenge/assets/118937365/39d68db8-3f8e-42f0-aea1-768b056859f8)
) for this work, a copy of the [initial DDL script](QuickDBD-EmployeeSQL.sql) exported from [QuickDBD](https://app.quickdatabasediagrams.com/#/) created with the ERD, the data and outputs folders.
3. The six CSV files used in this project are in the data folder inside the EmployeeSQL directory and contain datasets that have been normalized to 3NF.
4. THe outputs folder contains image outputs highlighting the steps and results of interest in the analysis.



# The Outputs

- The ERD

![QuickDBD-EmployeeSQL](https://github.com/onemanlutta/sql-challenge/assets/118937365/ac3f41da-46f9-42b2-aca2-b221fbb6b1b1)


- Sample Step of Importing Data to the Tables

![Import datasets in pgAdmin tables 1](https://github.com/onemanlutta/sql-challenge/assets/118937365/64360898-1268-45bd-8376-4ac63f7e2a74)
![Import datasets in pgAdmin tables 2 headers](https://github.com/onemanlutta/sql-challenge/assets/118937365/a15266f6-886b-41c3-ad87-7cb8e95a1985)


1. List the employee number, last name, first name, sex, and salary of each employee.

![Q1_List of Employees](https://github.com/onemanlutta/sql-challenge/assets/118937365/fa50d609-be80-405c-832f-aab5f8da9d4b)


2. List the first name, last name, and hire date for the employees who were hired in 1986.

![Q2_List of Employees Hired in 1986](https://github.com/onemanlutta/sql-challenge/assets/118937365/80c03edd-4393-4187-adbc-1632306c2a4a)


3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

![Q3_List of Departmental Managers](https://github.com/onemanlutta/sql-challenge/assets/118937365/237e19f9-bc13-401c-8eaf-645a676ba585)


4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

![Q4_List of Employees and their Departments](https://github.com/onemanlutta/sql-challenge/assets/118937365/6f58091b-f37a-4b40-88ee-4d04d0891f4f)


5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

![Q5_Employees First Name is Hercules and Last Name begins with B](https://github.com/onemanlutta/sql-challenge/assets/118937365/ba5caa95-b19b-40de-ac31-bec1f470b0e8)


6. List each employee in the Sales department, including their employee number, last name, and first name.

![Q6_Employees in the Sales Department](https://github.com/onemanlutta/sql-challenge/assets/118937365/b8fb905a-13f4-44c6-9f10-64d07c816ad5)


7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

![Q7_Employees in the Sales and Development Departments](https://github.com/onemanlutta/sql-challenge/assets/118937365/999468e1-9f35-4481-868c-13247c93276e)


8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

![Q8_List of Employees Last Name and Counts DESC ORDER](https://github.com/onemanlutta/sql-challenge/assets/118937365/5ad48ab2-c9ab-4228-b14f-d8c0d37db8f8)


# In Summary

Records for a total of 300,024 employees in Pewlett Hackard Company in the 1980s and 1990s were reviewed. Upto 36,150 employees were hired in 1986, and 24 departmental managers were engaged. Nearly 10% (31,579 vs 300,024) of the roles in the departments in the company recruited from the existing pool of employees. Hercules was a common name with 20 employees whose first name started with Hercules had their last name starting with a B. Upto 52,245 employees worked in the Sales department, which, combined with the Development department accounted for 45.9% (137,952 vs 300,024) employees in the company at the time. In the report, a total of 1,637 names were shared.


# Disclaimer
Data generated by Mockaroo, LLCLinks to an external site., (2022). Realistic Data Generator.
