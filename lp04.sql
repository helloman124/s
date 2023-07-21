c) Find the names and address of all employees who work on same department.
Assume dept name=research
mysql> select e.fname,e.lname,e.adress
    -> from employee e,department d
    -> where d.dname="cse" and e.dno=d.dno;
d) Retrieve a list of employees and the projects they are working on, ordered by department 
and, within each department, ordered alphabetically by last name, then first name.
mysql> select e.fname,e.lname,p.pname,d.dname
    -> from employee e,project p,workson w,department d
    -> where e.dno=d.dno and w.empid=e.empid and w.pno=p.p_no
    -> order by d.dname,e.lname,e.fname;
e) Create a view Dept_info that gives details of department name, Number of employees and 
total salary of each employee
mysql> create view dept_info(dept_name,no_of_emp,total_salary) as
    -> select d.dname,count(*),sum(e.salary)
    -> from employee e,department d
    -> where e.dno=d.dno
    -> group by d.dname;
