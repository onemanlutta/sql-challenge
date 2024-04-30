# sql-challenge

# The Challenge

As a newly hired data engineer at Pewlett Hackard (fictional company), I research about the people the company employeed during the 1980s and 1990s in my second week of employment. This information is available in six CSV files as the employee database. 


# The Solution in Brief

I perform data modeling by designing the tables to hold the data from the csv files, engage data engineering skills to import the csv files into a relational database management system (RDBMS) and, utilize  Structure Query Language (SQL) for data analysis to answer questions about the employees from the database. The CSV files are the data sources for this project, I use [QUICKDBD](https://app.quickdatabasediagrams.com/#/) to design and sketch the Entity Relationship Diagrams of the tables, utilize Postgres and pgAdmin to develop and build the database schema, tables and fields and eventually to import from the csv files. SQL is then used to query and output results for data analysis.

# Project Files and Outputs



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


# Topline Results




# Disclaimer
Data generated by Mockaroo, LLCLinks to an external site., (2022). Realistic Data Generator.
