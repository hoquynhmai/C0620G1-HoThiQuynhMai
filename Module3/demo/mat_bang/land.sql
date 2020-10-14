drop database if exists land;
create database land;
use land;

create table land_type (
	land_type_id int primary key,
    land_type_name varchar (50)
);

insert into land_type
values
	(1, 'Office'),
	(2, 'Office share'),
	(3, 'Office full');

create table land_status (
	land_status_id int primary key,
    land_status_name varchar (50)
);

insert into land_status
values
	(1, 'Empty'),
	(2, 'Down Floor'),
	(3, 'Full');
    
create table land (
land_id varchar(50) primary key,
area double,
floor int,
price double,
start_date date,
end_date date,
land_type_id int,
 foreign key (land_type_id) references land_type(land_type_id) on delete cascade on update cascade,
land_status_id int,
foreign key (land_status_id) references land_status(land_status_id) on delete cascade on update cascade
);

insert into land
values
	('LAD-11-22', 30.5, 3, 500.5, '2020-09-09', '2020-10-09', 1,1),
	('LAD-12-33', 10.5, 3,700.5, '2020-08-08', '2020-08-20', 2,1),
	('LAD-13-44', 5.6, 3, 800.5, '2020-07-09', '2020-7-10', 2,2),
	('LAD-14-55', 100.6, 3, 900.5, '2020-10-09', '2020-10-10', 1,3),
	('LAD-15-66', 75, 3, 400, '2020-09-09', '2020-10-09', 3,2),
	('LAD-16-77', 80.4, 3, 200.6, '2020-01-09', '2020-01-15', 3,1);
    
    
    DELIMITER //
create procedure update_land (id_update varchar (50), area_update double, floor_update int, price_update double, start_date_update date, 
end_date_update date, land_type_id_update int, land_status_id_update int)
BEGIN
	update land
    set area = area_update, floor = floor_update, price = price_update, start_date = start_date_update, end_date = end_date_update, 
    land_type_id = land_type_id_update, land_status_id = land_status_id_update
    where land_id = id_update;
END //
DELIMITER ;

DELIMITER //
create procedure delete_land(id_need_delete varchar (50))
BEGIN
	delete from land
    where land_id = id_need_delete;
END //
DELIMITER ;
