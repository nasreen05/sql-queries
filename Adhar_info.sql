create database Adhar_info;

create table adhar_info(
id int,
name varchar(30),
mobile_number long,
address varchar(30),
pincode int,
age int,
genden char,
date_of_birth date,
is_SignatureValid boolean,
mail_id varchar(30),
district_code bigint,
Enrollment_no  long,
relational_status varchar(30),
state_name varchar(20)
);
desc adhar_info;
show databases;
   
   INSERT INTO adhar_info (
    id, name, mobile_number, address, pincode, age, genden, date_of_birth,
    is_SignatureValid, mail_id, district_code, Enrollment_no,
    relational_status, state_name
) VALUES (
    1, 'Amit Kumar', 9876543210, 'MG Road, Delhi', 110001, 30, 'M', '1995-08-15',
    TRUE, 'amit.kumar@example.com', 102, 123456789012, 'Single', 'Delhi'
);
SET SQL_SAFE_UPDATES = 0;
INSERT INTO adhar_info (
    id, name, mobile_number, address, pincode, age, genden, date_of_birth,
    is_SignatureValid, mail_id, district_code, Enrollment_no,
    relational_status, state_name
) SELECT
    1, 'Amit Kumar', 9876543210, 'MG Road, Delhi', 110001, 30, 'M', '1995-08-15',
    TRUE, 'amit.kumar@example.com', 102, 123456789012, 'Single', 'Delhi';
    
    INSERT INTO adhar_info (
    id, name, mobile_number, address, pincode, age, genden, date_of_birth,
    is_SignatureValid, mail_id, district_code, Enrollment_no,
    relational_status, state_name
) SELECT
    2, 'Reshma Nasreen', 9382143533, 'Kolkata', 1123, 21, 'F', '2004-11-04',
    TRUE, 'reshma.@nasreen.com', 103, 1234587654092, 'Single', 'West Bengal';

INSERT INTO adhar_info (
    id, name, mobile_number, address, pincode, age, genden, date_of_birth,
    is_SignatureValid, mail_id, district_code, Enrollment_no,
    relational_status, state_name
) SELECT
    3, 'Rafia Nasreen', 9382187690, 'Siliguri', 2023, 14, 'F', '2014-05-02',
    TRUE, 'rafia.@nasreen.com', 203, 1234587658765, 'Single', 'West Bengal';


delete from adhar_info where name='Amit kumar';
select *from adhar_info;

 update adhar_info 
 set age=15,
 pincode= 1124;
 
update adhar_info
 set  name ='Seauly farhan begum ',address= 'delhi',mobile_number =8976543210 where id=6;
 
 update adhar_info 
 set mail_id= 'neha.nasrren@gmail.com',address ='Channai' where id= 1;
