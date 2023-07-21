c) Find the list of guide, who are guiding more than one student groups.
mysql> select g.guidename
    -> from guide g,student s
    -> where g.guideno=s.guideno
    -> group by g.guidename
    -> having count(*)>1;
d) Find the list of project no, project name & name of guide, in domain of Data .
mysql> select p.pno,p.pname,g.guidename
    -> from project p,guide g
    -> where g.guide_domain="data" and g.guideno=p.guideno;
e) Create a view as student_project details that lists student name, project name and guide 
name 
mysql> create view student_project as
    -> select s.name,p.pname,g.guidename
    -> from student s,project p,guide g
    -> where s.guideno=g.guideno and p.guideno=g.guideno;
