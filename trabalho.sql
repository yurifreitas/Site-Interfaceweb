Pesquisar funções de data/hora em SQL e fazer um arquivo com explicações das funções e exemplos.


1-
select age(timestamp '2016-04-10', timestamp '1992-05-13');
 age
--------------------------
 23 years 10 mons 28 days
(1 registro)

2-
 select age(timestamp '1992-04-10')
age
-------------------------
 24 years 5 mons 22 days
(1 registro)

3-
SELECT CURRENT_TIME;
 timetz
--------------------
 20:07:16.054027-03
(1 registro)

4-
SELECT CURRENT_DATE;
 date
------------
 2016-10-02
(1 registro)

5-
SELECT CURRENT_TIMESTAMP;
  now
-------------------------------
 2016-10-02 20:08:00.202799-03
(1 registro)

6-
SELECT timeofday();
timeofday
-------------------------------------
 Sun Oct 02 20:08:46.708466 2016 BRT
(1 registro)

7-
select date_part('hour', timestamp '2016-10-02 10:40:20');
date_part
-----------
        10
(1 registro)
8-
select date_part('month', timestamp '2016-10-02 10:40:20');
 date_part
-----------
        10
(1 registro)

9-
select date_part('month', CURRENT_TIMESTAMP);
 date_part
-----------
        10
(1 registro)

10-

select date_trunc('second', CURRENT_TIMESTAMP)
       date_trunc
------------------------
 2016-10-02 20:14:24-03
(1 registro)

11-
select extract(hour from CURRENT_TIMESTAMP);
 date_part
-----------
        20
(1 registro)

12-
select extract(month from interval '1 years 10 month');
 date_part
-----------
        10
(1 registro)

13-
select isfinite(CURRENT_TIMESTAMP);
 isfinite
----------
 t
(1 registro)

14-
select localtime;
      time
-----------------
 20:19:18.827936
(1 registro)

15-
select localtimestamp;
         timestamp
----------------------------
 2016-10-02 20:20:08.265161
(1 registro)




16- possiveis valores para funções-

microseconds
milliseconds
second
minute
hour
day
week
month
year
decade
century
millennium