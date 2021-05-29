--retrieve emp_no, first_name, last_name from employees table 

--create retirement_titles table 
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles 
FROM employees AS e
	INNER JOIN titles AS t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

-- create unique_titles table by using DISTINCT ON clause 
SELECT DISTINCT ON(e.emp_no) 
	e.emp_no, 
	e.first_name, 
	e.last_name, 
	t.title,
	t.from_date, 
	t.to_date
INTO unique_titles
FROM employees AS e
INNER JOIN titles AS t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC, t.to_date DESC;  

-- create retiring_titles table 
SELECT COUNT (title) AS "title counts",
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "title counts" DESC, title; 


-- create a mentorship_eligibility table 
SELECT DISTINCT ON (e.emp_no) 
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	t.to_date,
	t.title
INTO mentorship_eligibility 
FROM employees AS e 
	INNER JOIN dept_emp as de 
	ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;

SELECT * FROM mentorship_eligibility; 





	



