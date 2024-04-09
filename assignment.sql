create database block;
show databases;
use block;
create table user(user_id int auto_increment primary key , name varchar(20), mail varchar(255));
insert into user values(1,"Winston", "winston@leetcode.com"),
			(2,"Jonathan", "jonathanisgreat"),
            (3,"Annabelle", "bella-@leetcode.com"),
            (4,"Sally", "sally.come@leetcode.com"),
            (5,"Marwan", " quarz#2020@leetcode.com"),
            (6,"David ", "david69@gmail.com"),
            (7,"Shapiro", ".shapo@leetcode.com");
            
select * from user;
select * from user where mail like "%@leetcode.com" ;



create table activity(sell_date date , product varchar(40));
insert into activity values("2020-05-30", " Headphone"),
			("2020-06-01", " Pencil"),
            ("2020-06-02", " Mask"),
            ("2020-05-30", " Basket Ball"),
            ("2020-06-01", " Bible"),
            ("2020-06-02", " Mask"),
            ("2020-05-30", " Tshirt");
select * from activity;
select sell_date , count(distinct product) as units , group_concat(product) products
from activity 
group by sell_date
order by sell_date;


create table emp(id int , salary int);
insert into emp values (1,100),
						(2,200),
                        (3,300);
select max(salary) from emp;

select max(salary) from emp where salary not in (select max(salary) from emp);
create table mails(id int , mails varchar(255));
insert into mails values(1,"john@example.com"),
		(2,"bob@example.com"),
        (3,"john@example.com");
select * from mails;



create table pat(pt_id int , pt_name varchar(30), conditions varchar(50));
insert into pat values(1, "danial", "YFEV COUGH"),
(2,"Alice", " "),
(3,"Bob", "DIAB100 MYO"),
(4,"George", "ACNE DIAB100"),
(5,"Alian", "DIAB20");

select * from pat where conditions like "%DIAB100%";
