create schema if not exists db_canifa;

drop table tbl_category;
drop table tbl_product;
drop table tbl_product_status;

create table tbl_category(
	category_id int(11) NOT NULL auto_increment,
    category_name nvarchar(255) COLLATE utf8_unicode_ci NOT NULL,
    category_des nvarchar(500) COLLATE utf8_unicode_ci,
    parent_id int(11),
    created_date datetime,
    update_date datetime,
    primary key(category_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




create table tbl_product_status(
	status_id int(11) NOT NULL,
    status_name nvarchar(255) COLLATE utf8_unicode_ci NOT NULL,
    status_des nvarchar(500) COLLATE utf8_unicode_ci,
    primary key(status_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

create table tbl_product(
	product_id int(11) NOT NULL auto_increment,
    product_name nvarchar(255) COLLATE utf8_unicode_ci NOT NULL,
    product_des nvarchar(500) COLLATE utf8_unicode_ci ,
    category_id int(11),
    price float,
    quantity long,
    status_id int,
    created_date datetime,
    update_date datetime,
    primary key(product_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


create table tbl_product_image(
	id int(20) NOT NULL auto_increment,
	product_id int(11),
    image nvarchar(250),
	primary key(id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO tbl_category (category_name) VALUES ('Nam');
INSERT INTO tbl_category (category_name) VALUES ('Nữ');
INSERT INTO tbl_category (category_name) VALUES ('Bé Trai');
INSERT INTO tbl_category (category_name) VALUES ('Bé Gái');

INSERT INTO tbl_product_status (status_id, status_name) VALUES (1, 'Con hang');
INSERT INTO tbl_product_status (status_id, status_name) VALUES (2, 'Het hang');


INSERT INTO tbl_product_status (status_id, status_name) VALUES (2, 'Het hang');


---------------------------------

insert into tbl_product(product_name, product_des, category_id, price, quantity) values 
('Ao modal nữ phối hợp', 'Ao modal nữ phối hợp', 2, 100, 100);

insert into tbl_product(product_name, product_des, category_id, price, quantity) values 
('Áo lên cổ thuyền trễ vải', 'Áo lên cổ thuyền trễ vải', 2, 100, 100);

insert into tbl_product(product_name, product_des, category_id, price, quantity) values 
('Váy nữ Interlock giả da độn', 'Váy nữ Interlock giả da độn', 2, 100, 100);


insert into tbl_product_image(product_id, image) values(1, 'https://canifa.s3.amazonaws.com/media/catalog/product/cache_generated/500x/6th17w006-sa195-33.jpg');
insert into tbl_product_image(product_id, image) values(2, 'https://canifa.s3.amazonaws.com/media/catalog/product/cache_generated/500x/6te17w030-sa084-33.jpg');
insert into tbl_product_image(product_id, image) values(3, 'https://canifa.s3.amazonaws.com/media/catalog/product/cache_generated/500x/6ds17c019-sg151-33.jpg');







