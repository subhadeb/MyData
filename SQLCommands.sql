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
    (1, 'John','Doe',		'Male',	33000,	'1993-11-27'),
	(2, 'Jane','Smith',		'Female',	43000,	'1989-07-13'),
	(4, 'Matts','Hurray',	'Male',	29000,	'1997-01-04'),
	(5, 'Plank','Ottary',	'Male',	28000,	'1993-07-09'),
	(6, 'Eliza','Harry',	'Female',	30000,	'1992-01-31'),
	(7, 'Blanka','Dits',	'Female',	30000,	'1997-10-07'),
	(8, 'Eline','Herry',	'Male',	40000,	'1996-03-23');
  
  CREATE TABLE [tblEmployeeReward](
	[EmpID] [int],
	RewardPoints int
);

INSERT INTO [tblEmployeeReward] 
    (EmpID,RewardPoints)
VALUES
  (1, 2500),
	(4, 5500),
	(5, 1000)
