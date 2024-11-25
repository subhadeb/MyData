DROP TABLE IF exists [tblEmployee]
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
	(103, 'Matts','Hurray',	'Male',	33000,	'1997-01-04'),
	(104, 'Plank','Ottary',	'Male',	28000,	'1993-07-09')
	
--Hint to Find AgeGender: USE CAST()/GETDATE()/DATEDIFF() 
SELECT UPPER(firstname + ' ' + lastname) as DerivedFullNameUpper,
EmpID, FirstName,LastName, Gender,Salary,DateOfBirth
from tblEmployee


;WITH CTE AS
(
    SELECT 
        DENSE_RANK() OVER (ORDER BY [Salary]) AS SalarySortOrder,Salary,EmpID, FirstName,LastName
    FROM tblEmployee
)
SELECT * from CTE
