--This template contains sql statments to create a database and stored procedures for the development purposes

Create DATABASE CustomerManagement;
GO

Use CustomerManagement;
GO

CREATE TABLE Customers(
   Id int IDENTITY (1,1) NOT NULL PRIMARY KEY,
   FirstName VARCHAR(9) NOT NULL,
   Surname VARCHAR(12) NOT NULL,
   Telephone varchar(50) NOT NULL,
   DateOfBirth date NOT NULL
)



INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Alfreds','Futterkiste','04/07/1936',9999999);
INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Ana','Trujillo','05/09/1971',9999991);
INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Antonio','Moreno','06/06/1986',9999992);
INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Around','Hardy','07/02/1966',9999993);
INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Berglunds','Christina','08/07/1956',4999999);
INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Blauer','Delikatessen','09/07/1936',5999999);
INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Blondel','Citeaux','02/07/1986',6999999);
INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Comidas','Sommer','01/07/1996',7999999);
INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Bon','Lebihans','11/01/1976',8999999);
INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Marketse','Lincoln','10/08/1926',9099999);
INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Beverages','Ashworth','09/07/1916',1999999);
INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Comidas','Simpson','08/03/1906',2999999);
INSERT INTO Customers(FirstName,Surname,DateOfBirth,Telephone) VALUES ('Moctezuma','Chang','07/05/2000',3999999);


Select * from dbo.Customers
DROP TABLE Customers;



	Select 
	      DateOfBirth 
		  ,DATEDIFF(YY, DateOfBirth, GETDATE()) AS [AGE]
 	from 
	Customers
	
	
	--Stored Procedures creation 
	Create procedure SelectCustomerById
        @ID int
        As
        Begin
        Select * from Customers
        Where ID = @ID
        End
        Go
        
        EXEC SelectCustomerById @ID = 1;
        
            

        Create procedure InsertCustomer
        @FirstName nvarchar(MAX),
        @Surname nvarchar(MAX),
        @DateOfBirth datetime,
        @Telephoneint int
        as
        Begin
              Insert into Customers values (@FirstName, @Surname, @DateOfBirth, @Telephoneint)
        End
        Go


        Create procedure DeleteCustomer
        @ID int
        as
        Begin
             Delete from Customers where ID = @ID
        End
        Go


        Create procedure UpdateCustomer
        @ID int,
        @FirstName nvarchar(Max),
        @Surname nvarchar(Max),
        @DateOfBirth datetime,
        @Telephone int
        as
        Begin
        Update Customers Set FirstName = @FirstName, Surname = @Surname, DateOfBirth = @DateOfBirth, Telephone = @Telephone
        Where ID = @ID
        End
        Go
	
	
	
	