
--顾客表
create table e_customer(
	id number(10) primary key,
	name varchar2(20) not null,
	password varchar2(100) not null,
	zip varchar2(20) ,
	address varchar2(20),
	telephone varchar2(100),
	email varchar2(20)
); 
create table e_order(
	id number(10) primary key,
	cost number(10,2),
	orderDate date,
	customer_id number(10) references e_customer(id)
);

create table e_book(
	id number(10) primary key,
	name varchar2(10) not null,
	price number(10,2) not null,
	publisur varchar2(20) ,
	description varchar2(200)
);
--订单项
create table e_line(
	id number(10) primary key,
	num number(5) not null,
	order_id number(10) references e_order(id),
	book_id number(10) references e_book(id)
);

-------- 模拟数据 ----book
insert into e_book values(1,'corejava',35.0,'电子工业','核心java是一个本好书');
insert into e_book values(2,'hibernate',15.0,'电子工业','hibernate是一个本好书');
insert into e_book values(3,'struts',39.0,'电子工业','struts是一个本好书');
insert into e_book values(4,'spring',85.0,'电子工业','spring是一个本好书');
insert into e_book values(5,'javascript',75.0,'电子工业','《javascript高级设计》是一个本好书');
insert into e_book values(6,'jquery',65.0,'电子工业','《锋利的jquery》是一个本好书');
commit;



insert into e_customer(id,name,password) values(1,'briup','briup');



