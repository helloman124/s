c) List all the student names with their membership number
mysql> select s.stud_name,m.mem_no
    -> from student s,membership m
    -> where s.stud_no=m.stud_no;
d) List all the issues for the current date with student and Book names
mysql> select i.iss_date,s.stud_name,b.book_name
    -> from iss_rec i,book b,student s,membership m
    -> where iss_date=current_date() and s.stud_no=m.stud_no and b.book_no=i.book_no and m.mem_no=i.mem_no;
e) Give a count of how many books have been bought by each student
mysql> select s.stud_no,count(i.book_no)
    -> from iss_rec i,book b,student s,membership m
    -> where s.stud_no=m.stud_no and m.mem_no=i.mem_no and b.book_no=i.book_no
    -> group by s.stud_no;
g) Create a view which lists out the iss no , iss date ,stud name , book name
mysql> create view library as
    -> (select i.iss_no,i.iss_date,s.stud_name,b.book_name
    -> from student s,membership m,book b,iss_rec i
    -> where s.stud_no=m.stud_no and m.mem_no=i.mem_no and b.book_no=i.book_no);
Query OK, 0 rows affected (0.10 sec)

