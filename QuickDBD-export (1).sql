-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Employees" (
    "Emp_no" int   NOT NULL,
    "Emp_title" varchar(30)   NOT NULL,
    "Birth_Date" timestamp   NOT NULL,
    "First_name" varchar(30)   NOT NULL,
    "Last_name" varchar(30)   NOT NULL,
    "Sex" varchar(30)   NOT NULL,
    "Hire_Date" timestamp   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "Departments" (
    "dept_no" varchar(30)   NOT NULL,
    "dept_name" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Department_employee" (
    "Emp_no" int   NOT NULL,
    "Dept_no" varchar(30)   NOT NULL
);

CREATE TABLE "Department_manager" (
    "Dept_no" varchar(30)   NOT NULL,
    "Emp_no" int   NOT NULL
);

CREATE TABLE "Salaries" (
    "Emp_no" int   NOT NULL,
    "Salary" int   NOT NULL
);

CREATE TABLE "Titles" (
    "Title_id" varchar(30)   NOT NULL,
    "Title" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "Title_id"
     )
);

