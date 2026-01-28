1)select "name" , signup_date 
from users 
where name = 'Alice'
2)select *
from users 
where signup_date > '2024-01-05'
3)select *
from users 
where signup_date >= '2024-01-01'
and signup_date <= '2024-01-07'
4)select *
from users 
where name = 'Alice'
or name = 'Bob'
5) select *
from users 
where name in ('Alice', 'Bob')
6) select *
from users 
where name = 'Alice'
or signup_date > '2024-01-05'
7) select *
from users 
where name in ('Alice', 'Bob')
and signup_date > '2024-01-01'
8) select *
from users u 
where name = 'Alice'
or (name = 'Bob' and signup_date > '2024-01-05')
9) select *
from users 
where name = 'Bob'
10) select *
from users 
where signup_date > '2024-01-01'
11) 
