create database PostOfficeCasestudy

use PostOfficeCasestudy

create table PostOffice (
Id INT Identity (1,1) Primary key,
Firstname nvarchar(50),
Lastname nvarchar(50),
Address nvarchar(255),
Schemename nvarchar(100),
Balance decimal(18,2),
NoOfYears INT,
Mobile nvarchar(15)
);


select * from PostOffice
--Insert example data into the PostOffice table--

select * from PostOffice where id = 3

insert into PostOffice values ('Liam','Anderson','River street','Savings',18000.50,3,'9123456780')
insert into PostOffice values('Olivia','Thomas','202 Lake Avenue','Fixed Deposit',35000.00,6,'9234567891')
insert into PostOffice values('Noah','Jackson','303 Hill Road','Recurring Deposit',8000.00,2,'9345678902')
insert into PostOffice values('Emma','Martinez','#404 Forest Lane',NULL,0.00,0,'9456789013')
insert into PostOffice values('William','Garcia','#505 Meadow Drive','Savings',25000.00,5,'9567980789')



