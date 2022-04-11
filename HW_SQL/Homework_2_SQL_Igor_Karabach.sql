/*SQL_DDL
Первая часть.

https://docs.google.com/document/d/1FbW6HRhK36-mjP8i9rCk1764koh1NuuwBhkBF6TJKXY/edit

Таблица employees

1) Создать таблицу employees
	- id. serial,  primary key,
	- employee_name. Varchar(50), not null*/
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

/*2) Наполнить таблицу employee 70 строками.*/
insert into employees(id, employee_name)
values 	(default, 'Hannibal Lecter'),
		(default, 'Norman Bates'),
		(default, 'Darth Vader'),
		(default, 'The Wicked Witch of the West'),
		(default, 'Nurse Ratched'),
		(default, 'Mr. Potter'),
		(default, 'Alex Forrest'),
		(default, 'Phyllis Dietrichson'),
		(default, 'Regan MacNeil'),
		(default, 'The Evil Queen'),
		(default, 'Michael Corleone'),
		(default, 'Alex DeLarge'),
		(default, 'HAL 9000'),
		(default, 'The Alien'),
		(default, 'Amon Goeth'),
		(default, 'Noah Cross'),
		(default, 'Annie Wilkes'),
		(default, 'The Shark'),
		(default, 'Captain Bligh'),
		(default, 'Man[b]'),
		(default, 'Mrs. Eleanor Iselin'),
		(default, 'The Terminator'),
		(default, 'Eve Harrington'),
		(default, 'Gordon Gekko'),
		(default, 'Jack Torrance'),
		(default, 'Cody Jarrett'),
		(default, 'Martians'),
		(default, 'Max Cady'),
		(default, 'Reverend Harry Powell'),
		(default, 'Travis Bickle'),
		(default, 'Mrs. Danvers'),
		(default, 'Clyde Barrow and Bonnie Parker'),
		(default, 'Count Dracula'),
		(default, 'Dr. Szell'),
		(default, 'J.J. Hunsecker'),
		(default, 'Frank Booth'),
		(default, 'Harry Lime'),
		(default, 'Caesar Enrico Bandello'),
		(default, 'Cruella De Vil'),
		(default, 'Freddy Krueger'),
		(default, 'Joan Crawford'),
		(default, 'Tom Powers'),
		(default, 'Regina Giddens'),
		(default, 'Baby Jane Hudson'),
		(default, 'The Joker'),
		(default, 'Hans Gruber'),
		(default, 'Tony Camonte'),
		(default, 'Roger "Verbal" Kint'),
		(default, 'Auric Goldfinger'),
		(default, 'Detective Alonzo Harris'),
		(default, 'Atticus Finch'),
		(default, 'Indiana Jones'),
		(default, 'James Bond'),
		(default, 'Rick Blaine'),
		(default, 'Marshal Will Kane'),
		(default, 'Clarice Starling'),
		(default, 'Rocky Balboa'),
		(default, 'Ellen Ripley'),
		(default, 'George Bailey'),
		(default, 'T.E. Lawrence'),
		(default, 'Jefferson Smith'),
		(default, 'Tom Joad'),
		(default, 'Oskar Schindler'),
		(default, 'Han Solo'),
		(default, 'Norma Rae Webster'),
		(default, 'Shane'),
		(default, 'Harry Callahan'),
		(default, 'Robin Hood'),
		(default, 'Virgil Tibbs'),
		(default, 'Butch Cassidy');
	
	/*Таблица salary

3) Создать таблицу salary
	- id. Serial  primary key,
	- monthly_salary. Int, not null*/
	create table salary(
		id serial primary key,
		monthly_salary int not null
	);

/*4) Наполнить таблицу salary 15 строками: 
	- 1000
	- 1100
	- 1200
	- 1300
	- 1400
	- 1500
	- 1600
	- 1700
	- 1800
	- 1900
	- 2000
	- 2100
	- 2200
	- 2300
	- 2400
	- 2500*/
insert into salary(id, monthly_salary)
values 	(default, 1000),
		(default, 1100),
		(default, 1200),
		(default, 1300),
		(default, 1400),
		(default, 1500),
		(default, 1600),
		(default, 1700),
		(default, 1800),
		(default, 1900),
		(default, 2000),
		(default, 2100),
		(default, 2200),
		(default, 2300),
		(default, 2400),
		(default, 2500);

/*Таблица employee_salary

5) Создать таблицу employee_salary
	- id. Serial  primary key,
	- employee_id. Int, not null, unique
	- salary_id. Int, not null*/
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

/*6) Наполнить таблицу employee_salary 40 строками:
	- в 10 строк из 40 вставить несуществующие employee_id*/
insert into employee_salary(id, employee_id, salary_id)
values 	(default, 3, 7),
		(default, 1, 4),
		(default, 5, 9),
		(default, 40, 13),
		(default, 23, 4),
		(default, 11, 2),
		(default, 52, 10),
		(default, 15, 13),
		(default, 26, 4),
		(default, 16, 1),
		(default, 33, 7),
		(default, 41, 22),
		(default, 69, 3),
		(default, 12, 12),
		(default, 9, 16),
		(default, 22, 15),
		(default, 2, 1),
		(default, 4, 10),
		(default, 8, 9),
		(default, 14, 2),
		(default, 55, 8),
		(default, 49, 3),
		(default, 64, 11),
		(default, 17, 3),
		(default, 51, 2),
		(default, 30, 5),
		(default, 44, 16),
		(default, 70, 12),
		(default, 7, 7),
		(default, 29, 1),
		(default, 100, 13),
		(default, 88, 13),
		(default, 100500, 7),
		(default, 10000000, 4),
		(default, 200, 7),
		(default, 999, 7),
		(default, 123, 15),
		(default, 231, 2),
		(default, 77, 5),
		(default, 777, 14)
;

/*Таблица roles

7) Создать таблицу roles
	- id. Serial  primary key,
	- role_name. int, not null, unique*/
create table roles(
	id serial primary key,
	role_name int not null unique
);

/*8) Поменять тип столба role_name с int на varchar(30)*/
alter table roles alter column role_name type varchar(30);

/*9) Наполнить таблицу roles 20 строками:*/
insert into roles(id, role_name)
values  (default, 'Junior Python developer'),
		(default, 'Middle Python developer'),
		(default, 'Senior Python developer'),
		(default, 'Junior Java developer'),
		(default, 'Middle Java developer'),
		(default, 'Senior Java developer'),
		(default, 'Junior JavaScript developer'),
		(default, 'Middle JavaScript developer'),
		(default, 'Senior JavaScript developer'),
		(default, 'Junior Manual QA engineer'),
		(default, 'Middle Manual QA engineer'),
		(default, 'Senior Manual QA engineer'),
		(default, 'Project Manager'),
		(default, 'Designer'),
		(default, 'HR'),
		(default, 'CEO'),
		(default, 'Sales manager'),
		(default, 'Junior Automation QA engineer'),
		(default, 'Middle Automation QA engineer'),
		(default, 'Senior Automation QA engineer')
;

/*Таблица roles_employee

10) Создать таблицу roles_employee
	- id. Serial  primary key,
	- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
	- role_id. Int, not null (внешний ключ для таблицы roles, поле id)*/
create table roles_employee(
	id serial primary key,
	employee_id int not null unique references employees (id),
	role_id int not null references roles (id)
);

/*11) Наполнить таблицу roles_employee 40 строками:*/
insert into roles_employee(id, employee_id, role_id)
values  (default, 7, 2),
		(default, 20, 4),
		(default, 3, 9),
		(default, 5, 13),
		(default, 23, 4),
		(default, 11, 2),
		(default, 10, 9),
		(default, 22, 13),
		(default, 21, 3),
		(default, 34, 4),
		(default, 6, 7),
		(default, 12, 9),
		(default, 26, 3),
		(default, 30, 4),
		(default, 8, 4),
		(default, 31, 8),
		(default, 4, 9),
		(default, 39, 13),
		(default, 40, 1),
		(default, 41, 4),
		(default, 17, 8),
		(default, 36, 13),
		(default, 14, 9),
		(default, 2, 5),
		(default, 25, 1),
		(default, 37, 6),
		(default, 19, 2),
		(default, 38, 10),
		(default, 35, 11),
		(default, 27, 6),
		(default, 29, 5),
		(default, 33, 8),
		(default, 15, 1),
		(default, 18, 12),
		(default, 32, 14),
		(default, 42, 9),
		(default, 24, 13),
		(default, 28, 2),
		(default, 13, 4),
		(default, 1, 7)
;