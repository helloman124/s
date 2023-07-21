c) Find the names of aircraft such that all pilots certified to operate them earn more than 80,000.
mysql> select a.aname
    -> from aircraft a,employees e,certified c
    -> where e.salary>80000 and a.aid=c.aid and e.eid=c.eid;
d) For each pilot who is certified for more than three aircraft, find the eid and the maximum cruising range of the aircraft that he (or she) is certified for.

mysql> select c.eid,max(a.cruisingrange)
    -> from aircraft a,employees e,certified c
    -> where a.aid=c.aid and e.eid=c.eid
    -> group by c.eid
    -> having count(*)>3;
e) Find the names of pilots whose salary is less than the price of the cheapest route from Los Angeles to Honolulu.
mysql> select e.ename
    -> from employees e,certified c
    -> where e.eid=c.eid and e.salary<(select min(price)
    -> from flights
    -> where source="del" and destination="mum");
f) Find the second highest salary of an employee.
mysql> select max(salary)
    -> from employees
    -> where salary not in(select max(salary)
    -> from employees);

