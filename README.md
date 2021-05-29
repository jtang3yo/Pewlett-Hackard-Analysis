# Pewlett-Hackard-Analysis
## Background and Overview 
  Now that Bobby has proven his SQL chops, his manager has given both of you two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.
## Analysis 
  Deliverable 1: The Number of Retiring Employees by Title
    Create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the database, need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a final table that has the number of retirement-age employees by most recent job title.
    1. Retrieve emp_no, first_name, last_name from employees table, retrieve title, from_date and to_date columns from titles table, and use INTO clause to create a new retirement_titles table, INNER JOIN on emp_no from both employees and titles tables; 
    2. Filter birth_date between '1952-01-01' and '1955-12-31' from employees table using WHERE clause; 
    * retirement_titles.png![image](https://user-images.githubusercontent.com/82353749/120078359-25a5cd00-c07d-11eb-85d5-074f866fee94.png)
    3. Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause; 
    4. Use INTO clause to create unique_titles table by sort the Unique Titles table in ascending order by the employee number and descending order by the last date (i.e. to_date) of the most recent title.
    * unique_titles.png![image](https://user-images.githubusercontent.com/82353749/120079189-cea1f700-c080-11eb-9d76-1de7cc4267d8.png)
    5. Retrieve the numer of titles from unique_titles table, and group the table by title, then sort the count column in descending order.
    * retiring_titles.png![image](https://user-images.githubusercontent.com/82353749/120079473-ea59cd00-c081-11eb-81a1-b969df69711f.png)

  Deliverable 2: The Employees Eligible for the Mentorship Program
    Write a query to create a Mentorship Eligibility table that holds the employees who were born between January 1, 1965 and December 31, 1965 that are eligible to participate in a mentorship program.
    1. Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table. 
    2. Retrieve the from_date column from the dept_emp table, and retrieve to_date and title columns from titles table because only to_date column from titles table holds value of current employment, namely "9999-01-01". 
    3.Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause; 
    4. INTO clause to create a new mentorship_eligibility table, INNER JOIN dept_emp and employees tables with primary keys on emp_no;
    5. Filter the data on the to_date column to all the current employees, then filter the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965. 
    6. Order the table by the employee number with ascending order. 
    mentorship_eligibility.png![image](https://user-images.githubusercontent.com/82353749/120079816-a9fb4e80-c083-11eb-9bc9-17ea4a7a928d.png)
    7. Export mentorship_eligibility table to csv file. 
 
 Four csv files exported and stored in Data folder under Pewlett-Hackard-Analysis folder, they are retirement_titles.csv, unique_titles.csv, retiring_titles.csv, and mentorship_eligibility.csv. 

## Summary 

1. There are 29,414 Senior Engineers, 28,255 Senior Staff, 14,222 Engineers, 12,242 Staffs, 4,502 Technique Leaders, 1,761 Assistant Engineers and 2 Managers are retiring. 
retiring count by titles![image](https://user-images.githubusercontent.com/82353749/120081718-f8611b00-c08c-11eb-8d2d-d69d3248d60e.png)

2. There are 1,549 employees who were between between January 1, 1965 and December 31, 1965 and the most recent titles are Seninor, that are eligible for mentorship program. 


  
