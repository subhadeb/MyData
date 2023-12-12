CREATE TABLE [tblEmployee](
	[EmpID] [int],
	[FirstName] [varchar](50),
	[LastName] [varchar](50),
	[Gender] [varchar](10),
	[Salary] [int],
	[DateOfBirth] [datetime],
	CONSTRAINT tblEmployee_pk_EmpId PRIMARY KEY(EmpId)
);

INSERT INTO [tblEmployee] 
    (EmpID, FirstName,LastName,Gender,Salary,DateOfBirth)
VALUES
    (101, 'John','Doe',		'Male',	33000,	'1993-07-27'),
	(102, 'Jane','Smith',		'Female',	43000,	'1983-06-13'),
	(103, 'Matts','Hurray',	'Male',	29000,	'1997-01-04'),
	(104, 'Plank','Ottary',	'Male',	28000,	'1993-07-09'),
	(105, 'Eliza','Harry',	'Female',	30000,	'1980-01-31'),
	(106, 'Maria','Dits',	'Female',	30000,	'2004-10-07'),
	(107, 'James','Herry',	'Male',	40000,	'1996-03-23');
  
  CREATE TABLE [tblEmployeeReward](
	[EmpID] [int],
	RewardPoints int
);

INSERT INTO [tblEmployeeReward] 
    (EmpID,RewardPoints)
VALUES
	(101, 2500),
	(104, 5500),
	(105, 1000)
--Hint to Find AgeGender: USE CAST()/GETDATE()/DATEDIFF() 
SELECT firstname + ' ' + lastname as FullNameDerived,
* from tblEmployee
SELECT * from tblEmployeeReward
