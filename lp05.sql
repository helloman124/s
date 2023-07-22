c) Find the names of sailors who have reserved a green boat, and list in the order of age.
mysql> select s.sname,s.age
    -> from sailors s,boats b,Reserves r
    -> where b.color="green" and s.sid=r.sid and b.bid=r.bid
    -> order by s.age asc;
d) Find the names of sailors who have reserved boat 103
mysql> select s.sname
    -> from sailors s,boats b,Reserves r
    -> where r.bid=103 and s.sid=r.sid and b.bid=r.bid;
e) Find the name and the age of the youngest sailor.
mysql> select s.sname,s.age
    -> from sailors s
    -> where s.age in(select min(age)
    -> from sailors);
f) Find the average age of sailors for each rating level that has at least two sailors.

mysql> select avg(s.age),s.rating
    -> from sailors s
    -> group by s.rating
    -> having count(*)>=2;
