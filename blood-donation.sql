-- create database
create database blood;

-- use database
 use blood;

-- Donor table
create table donors(
    donor_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(50),
    age int,
    gender varchar(9),
    blood_group varchar(5),
    contact varchar(50),
    last_donation_date date
);
                    
describe donors;

-- Blood Bank table
create table bloodbanks(
    bank_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(50),
    location varchar(100),
    contact varchar(50)
);

describe bloodbanks;

-- Blood Inventory
create table bloodinventory (
    inventory_id int AUTO_INCREMENT PRIMARY KEY,
    bank_id int,
    blood_group varchar(5),
    units_available int,
    FOREIGN KEY(bank_id) REFERENCES bloodbanks(bank_id)
);

describe bloodinventory;

-- Requests
create table requests (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_name varchar(50),
    blood_group varchar(5),
    units_needed int,
    hospital varchar(100),
    status varchar(20) DEFAULT 'Pending'
);

describe requests;

-- Insert Sample Data
insert into donors (name, age, gender, blood_group, contact, last_donation_date)
values ('Priya', 22, 'Female', 'A+', '9876543210', '2025-06-10'),
       ('Jai', 28, 'Male', 'O-', '9123456789', '2025-07-15');

insert into  bloodbanks (name, location, contact)
values('City Blood Bank', 'Madurai', '9988776655');

insert into bloodinventory (bank_id, blood_group, units_available)
values (1, 'A+', 10), (1, 'O-', 5);

insert into requests (patient_name, blood_group, units_needed, hospital)
values('Kumar', 'A+', 2, 'Apollo Hospital');


select * from donors;

select * from bloodbanks;

select * from bloodinventory;

select * from requests;

-- Find all donors of a particular blood group
select  name, contact 
from donors 
where blood_group = 'A+';

-- Check available blood stock in a blood bank
select blood_group, units_available 
from bloodinventory 
where bank_id = 1;

-- Add stock after a new donation
update bloodinventory 
set units_available = units_available + 1 
where bank_id = 1 AND blood_group = 'A+';

select * from bloodinventory;

-- ApproveRequest_UpdateStock
update bloodinventory
set units_available = units_available - 1
where bank_id = 1 AND blood_group = 'A+';

select * from bloodinventory;

-- Approve a blood request
update requests 
set status = 'Approved' 
where request_id = 1;

select * from requests;

-- List pending requests
select * from requests where status = 'Pending';

-- Report – Count total donors by blood group
select blood_group, COUNT(*) AS total_donors
from donors
GROUP BY blood_group;