create database W3resource
use W3resource
--1. Display All Salespeople
--select * from salesman
 
--2. Display a Custom String. Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution". 
 --select 'This is SQL Exercise, Practice and Solution'

--3. Display Three Numbers. Write a SQL query to display three numbers in three columns.
--select '1', '2', '3'

--4. Sum of Two Numbers. Write a SQL query to display the sum of two numbers 10 and 15 from the RDBMS server. 
--select 10 + 15

--5. Arithmetic Expression Result. Write an SQL query to display the result of an arithmetic expression.
--select 1-2+3*4

--6. Specific Columns of Salespeople. Write a SQL statement to display specific columns such as names and commissions for all salespeople.  
--create table salesman (id int, name varchar (10), comission int)
--select * from salesman 
--select name, comission from salesman

/*7. Custom Column Order in Orders. 
Write a query to display the columns in a specific order, 
such as order date, salesman ID, order number, and purchase amount for all orders.  
Sample table: orders

--select ord_date, salesman_id, ord_num, purch_amt from orders 
*/
--8. Unique Salespeople IDs. From the following table, write a SQL query to identify the unique salespeople ID. Return salesman_id. 
--Sample table: orders

--select distinct salesman_id from orders 

--9. Salespeople in Paris. From the following table, 
--write a SQL query to locate salespeople who live in the city of 'Paris'. Return salesperson's name, city. 
--select name, city from salesman where city='Paris'

--10. Customers with Grade 200. From the following table, 
--write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id.  
--select customer_id, cust_name, city, grade, salesman_id from customer where grade=200


--11. Orders by Salesperson 5001. From the following table, 
--write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt.  
--Sample table: orders

--select Return ord_no, ord_date, purch_amt from orders
--where salesman_id = 5001

--12. Nobel Winner of 1970. From the following table, 
--write a SQL query to find the Nobel Prize winner(s) for the year 1970. Return year, subject and winner. 
--Sample table: nobel_win

--select year, subject, winner from nobel_win
--where year = 1970

--13. Literature Winner 1971. From the following table, 
--write a  SQL query to find the Nobel Prize winner in ‘Literature’ for 1971. Return winner. 
--Sample table: nobel_win
/*
select winner from nobel_win  where year=1971 and subject='literature' 
create table nobel_win (year int, subject varchar (50), winner varchar (50))
select *from nobel_win 
insert into nobel_win values (1970, 'Math', 'Sara')
insert into nobel_win values (1971, 'Literature', 'Kane')
insert into nobel_win values (1971, 'Literature', 'Bob')
insert into nobel_win values (1972, 'Literature', 'Alex')
insert into nobel_win values (1973, 'Math', 'Doll')
*/

--14. Locate Dennis Gabor. From the following table, 
--write a SQL query to locate the Nobel Prize winner ‘Dennis Gabor'. Return year, subject. 
--Sample table: nobel_win
--select year, subject from nobel_win where winner='Bob'

--15. Physics Winners Since 1950. From the following table, 
--write a SQL query to find the Nobel Prize winners in the field of ‘Physics’ since 1950. Return winner. 
--Sample table: nobel_win

--select winner from nobel_win where year>1971
--select *from nobel_win 

--16. Chemistry Winners (1965-1975). From the following table, 
--write a SQL query to find the Nobel Prize winners in ‘Chemistry’ between the years 1965 and 1975. 
--Begin and end values are included. Return year, subject, winner, and country.  
--Sample table: nobel_win
/*
create table nobel_win1 (year int, subject varchar (50), winner varchar (50), country varchar (50), category varchar (50))
select *from nobel_win1 
insert into nobel_win1 values (1963, 'math', 'hannes', 'sweden', 'scientist')
insert into nobel_win1 values (1964, 'Chemistry', 'Dannes', 'rus', 'scientist')
insert into nobel_win1 values (1965, 'math', 'Fannes', 'eng', 'scientist')
insert into nobel_win1 values (1966, 'Chemistry', 'Gannes', 'usa', 'scientist')
insert into nobel_win1 values (1967, 'math', 'Qannes', 'baa', 'scientist')
insert into nobel_win1 values (1974, 'Chemistry', 'hannes', 'swed', 'scientist')
insert into nobel_win1 values (1975, 'math', 'Cannes', 'uzb', 'scientist')
insert into nobel_win1 values (1976, 'math', 'Dell', 'col', 'scientist')
insert into nobel_win1 values (1977, 'Chemistry', 'Jack', 'sweden', 'scientist')

select *from nobel_win1 
select year, subject, winner, country from nobel_win1 where year between 1964 and 1976 and subject='chemistry'
*/
/*
--17. Prime Ministers After 1972. 
--Write a SQL query to display all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin.  
--Sample table: nobel_win
insert into nobel_win1 values (1967, 'math', 'Qannes', 'baa', 'Prime Minister')
insert into nobel_win1 values (1974, 'Chemistry', 'hannes', 'swed', 'Prime Minister')
insert into nobel_win1 values (1975, 'math', 'Cannes', 'uzb', 'Prime Minister')
insert into nobel_win1 values (1976, 'math', 'Dell', 'col', 'Prime Minister')
select *from nobel_win1 order by year
select *from nobel_win1 where year>1972 and winner in ('hannes','cannes') and category='Prime Minister' 
*/

--18. Winners with First Name Louis. From the following table, 
--write a SQL query to retrieve the details of the winners whose first names match with the string ‘Louis’. 
--Return year, subject, winner, country, and category.  
--Sample table: nobel_win
--select * from nobel_win1 where winner like 'Can%'

--19. Combine Winners (Physics 1970 & Economics 1971). From the following table, 
--write a SQL query that combines the winners in Physics, 1970 and in Economics, 1971.
--Return year, subject, winner, country, and category. 
--Sample table: nobel_win
--select * from nobel_win1 where (year=1976 and subject='math') union (select * from nobel_win1 where year = 1976 and subject='PS')
--select * from nobel_win1 where year=1976 and subject='math'or subject='PS'

		--20. 1970 Winners Excluding Physiology & Economics. From the following table, 
--write a SQL query to find the Nobel Prize winners in 1970 excluding the subjects of Physiology and Economics. 
--Return year, subject, winner, country, and category. 
--Sample table: nobel_win
--select *from nobel_win1 where subject not in ('Math', 'ps') and year = 1974
--select * from nobel_win1 order by year

		/*21. Physiology Before 1971 & Peace After 1974

From the following table, write a SQL query to combine the winners in 'Physiology' before 1971 and winners in 'Peace' on or after 1974. 
Return year, subject, winner, country, and category. 
Sample table: nobel_win
create table nobel_win (YEAR int, SUBJECT varchar (50), WINNER varchar (50), COUNTRY varchar (50),CATEGORY varchar (50))
insert into nobel_win values
(1970, trim('Physics   '), trim('Hannes Alfven            '),trim(                     'Sweden   '),trim('Scientist	   '	   )),
(1970, trim('Physics   '), trim('Louis Neel               '),trim(                     'France   '),trim('Scientist	   '	   )),
(1970, trim('Chemistry '), trim('Luis Federico Leloir     '),trim(                     'France   '),trim('Scientist	   '	   )),
(1970, trim('Physiology'), trim('Ulf von Euler            '),trim(                     'Sweden   '),trim('Scientist	   '	   )),
(1970, trim('Physiology'), trim('Bernard Katz             '),trim(                     'Germany  '),trim('Scientist	   '	   )),
(1970, trim('Literature'), trim('Aleksandr Solzhenitsyn   '),trim(                     'Russia   '),trim('Linguist		   '   )),
(1970, trim('Economics '), trim('Paul Samuelson           '),trim(                     'USA      '),trim('Economist	   '	   )),
(1970, trim('Physiology'), trim('Julius Axelrod           '),trim(                     'USA      '),trim('Scientist	   '	   )),
(1971, trim('Physics   '), trim('Dennis Gabor             '),trim(                     'Hungary  '),trim('Scientist	   '	   )),
(1971, trim('Chemistry '), trim('Gerhard Herzberg         '),trim(                     'Germany  '),trim('Scientist	   '	   )),
(1971, trim('Peace     '), trim('Willy Brandt             '),trim(                     'Germany  '),trim('Chancellor	   '   )),
(1971, trim('Literature'), trim('Pablo Neruda             '),trim(                     'Chile    '),trim('Linguist		   '   )),
(1971, trim('Economics '), trim('Simon Kuznets            '),trim(                     'Russia   '),trim('Economist	   '	   )),
(1978, trim('Peace     '), trim('Anwar al-Sadat           '),trim(                     'Egypt    '),trim('President	   '	   )),
(1978, trim('Peace     '), trim('Menachem Begin           '),trim(                     'Israel   '),trim('Prime Minister  '	   )),
(1987, trim('Chemistry '), trim('Donald J. Cram           '),trim(                     'USA      '),trim('Scientist	   '	   )),
(1987, trim('Chemistry '), trim('Jean-Marie Lehn          '),trim(                     'France   '),trim('Scientist	   '	   )),
(1987, trim('Physiology'), trim('Susumu Tonegawa          '),trim(                     'Japan    '),trim('Scientist	   '	   )),
(1994, trim('Economics '), trim('Reinhard Selten          '),trim(                     'Germany  '),trim('Economist	   '	   )),
(1994, trim('Peace     '), trim('Yitzhak Rabin            '),trim(                     'Israel   '),trim('Prime Minister  '	   )),
(1987, trim('Physics   '), trim('Johannes Georg Bednorz   '),trim(                     'Germany  '),trim('Scientist	   '	   )),
(1987, trim('Literature'), trim('Joseph Brodsky           '),trim(                     'Russia   '),trim('Linguist		   '   )),
(1987, trim('Economics '), trim('Robert Solow             '),trim(                     'USA      '),trim('Economist	   '	   )),
(1994, trim('Literature'), trim('Kenzaburo Oe             '),trim(                     'Japan    '),trim('Linguist        '    ));
*/
/*From the following table, write a SQL query to combine the winners in 'Physiology' before 1971 and winners in 'Peace' on or after 1974. 
Return year, subject, winner, country, and category. 
Sample table: nobel_win

select *from nobel_win 
where (subject ='Physiology' and year<1971)
union
(select *from nobel_win 
where (subject ='Peace' and year>=1974))
*/

/*
22. Details of Johannes Georg Bednorz

From the following table, write a SQL query to find the details of the Nobel Prize winner 'Johannes Georg Bednorz'. 
Return year, subject, winner, country, and category.  
Sample table: nobel_win
*/
--select year, subject, winner, country, category from nobel_win
--where winner='Johannes Georg Bednorz'


--23. Winners Excluding Subjects Starting with P
--From the following table, write a SQL query to find Nobel Prize winners for the subject that does not begin with the letter 'P'. 
--Return year, subject, winner, country, and category. Order the result by year, descending and winner in ascending.  

--select year, subject, winner, country, category from nobel_win
--where subject not like 'P%'
  

--24. Ordered 1970 Nobel Prize Winners---???
--From the following table, write a SQL query to find the details of 1970 Nobel Prize winners. 
--Order the results by subject, ascending except for 'Chemistry' and ‘Economics’ which will come at the end of the result set. 
--Return year, subject, winner, country, and category.  

--select year, subject, winner, country, category from nobel_win
--where year = 1970 
--order by 
--		case 
--		when subject in ('Chemistry' ,'Economics') then 1
--		else 0
--		end,  subject, winner asc


--25. Products in Price Range Rs.200-600
--From the following table, write a SQL query to select a range of products whose price is in the range Rs.200 to Rs.600. 
--Begin and end values are included. 
--Return pro_id, pro_name, pro_price, and pro_com.  
--Sample table: item_mast

--create table item_mast (PRO_ID int, PRO_NAME varchar(50), PRO_PRICE    decimal (6,2), PRO_COM
-- int)
-- insert into item_mast values
--(101, trim('Mother Board     '),               3200.00, 15),
--(102, trim('Key Board        '),                450.00, 16),
--(103, trim('ZIP drive        '),                250.00, 14),
--(104, trim('Speaker          '),                550.00, 16),
--(105, trim('Monitor          '),               5000.00, 11),
--(106, trim('DVD drive        '),                900.00, 12),
--(107, trim('CD drive         '),                800.00, 12),
--(108, trim('Printer          '),               2600.00, 13),
--(109, trim('Refill cartridge '),                350.00, 13),
--(110, trim('Mouse            '),                250.00, 12)

--select *from item_mast; 
--select *from item_mast 
--where pro_price  between 200 and 600


--26. Average Price for Manufacturer Code 16
--From the following table, write a SQL query to calculate the average price for a manufacturer code of 16. 
--Return avg.  
--Sample table: item_mast
--select *from item_mast
--select avg(pro_price) as [avg] from item_mast
--where pro_com = 16


--27. Display Item Name and Price
--From the following table, write a SQL query to display the pro_name as 'Item Name' and pro_priceas 'Price in Rs.'  
--Sample table: item_mast

--select pro_name as 'Item Name' ,pro_price as 'Price in Rs' from item_mast


--28. Items with Price >= $250
--From the following table, write a SQL query to find the items whose prices are higher than or equal to $250. 
--Order the result by product price in descending, then product name in ascending. 
--Return pro_name and pro_price.  
--Sample table: item_mast

--select pro_name ,pro_price from item_mast 
--where pro_price>= 250
--order by pro_price desc, pro_name asc


--29. Average Price per Company
--From the following table, write a SQL query to calculate average price of the items for each company.
--Return average price and company code. 
--Sample table: item_mast

--select *from item_mast
--select avg(pro_price), pro_com from item_mast
--group by pro_com 


--30. Cheapest Item
--From the following table, write a SQL query to find the cheapest item(s). 
--Return pro_name and, pro_price.  
--Sample table: item_mast

--select pro_price, pro_name from item_mast 
--where pro_price = (select min(pro_price) from item_mast)


--31. Unique Employee Last Names
--From the following table, write a SQL query to find the unique last name of all employees. 
--Return emp_lname.  
--Sample table: emp_details

--create table emp_details (EMP_IDNO int, EMP_FNAME varchar (50), EMP_LNAME         varchar (50), EMP_DEPT int)
--insert into emp_details  values 
--(   127323,trim(' Michale '),trim('        Robbin   '),              57),
--(   526689,trim(' Carlos  '),trim('        Snares   '),              63),
--(   843795,trim(' Enric   '),trim('        Dosio    '),              57),
--(   328717,trim(' Jhon    '),trim('        Snares   '),              63),
--(   444527,trim(' Joseph  '),trim('        Dosni    '),              47),
--(   659831,trim(' Zanifer '),trim('        Emily    '),              47),
--(   847674,trim(' Kuleswar'),trim('        Sitaraman'),              57),
--(   748681,trim(' Henrey  '),trim('        Gabriel  '),              47),
--(   555935,trim(' Alex    '),trim('        Manuel   '),              57),
--(   539569,trim(' George  '),trim('        Mardy    '),              27),
--(   733843,trim(' Mario   '),trim('        Saule    '),              63),
--(   631548,trim(' Alan    '),trim('        Snappy   '),              27),
--(   839139,trim(' Maria   '),trim('        Foster   '),              57)

--select emp_lname from emp_details
--group by emp_lname
--
--select distinct emp_lname from emp_details


--32. Employees with Last Name Snares
--From the following table, write a SQL query to find the details of employees whose last name is 'Snares'. 
--Return emp_idno, emp_fname, emp_lname, and emp_dept.  
--Sample table: emp_details

--select emp_idno, emp_fname, emp_lname, emp_dept from emp_details 
--where emp_lname = 'Snares'


--33. Employees in Department 57
--From the following table, write a SQL query to retrieve the details of the employees who work in the department 57. 
--Return emp_idno, emp_fname, emp_lname and emp_dept..  
--Sample table: emp_details

--select emp_idno, emp_fname, emp_lname , emp_dept from emp_details
--where emp_dept = 57