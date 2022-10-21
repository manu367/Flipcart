create table admin(id int auto_increment primary key,name varchar(100),email varchar(100) unique,mobile varchar(13) unique ,password varchar(100),status varchar(100),usertype varchar(100) );
/
insert into admin(name,email,mobile,password,status,usertype) values('admin','admin@gmail.com','9310683500','admin123','active','admin')
/
insert into admin(name,email,mobile,password,status,usertype) values('superadmin','superadmin@gmail.com','9310683511','superadmin123','active','superadmin')
/
stop
/