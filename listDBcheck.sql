BEGIN TRANSACTION

USE [EMPDB]
GO

select * from Emp;
GO

UPDATE Emp SET E_name ='Mony89' WHERE Empid= 102;
GO

UPDATE Emp SET E_name ='Mony45' WHERE Empid2= 102;
GO

IF @@ERROR != 0
    BEGIN
  PRINT 'Errors Found ... Rolling back'
  ROLLBACK TRANSACTION
  RETURN
    END
ELSE
     PRINT 'No Errors ... Committing changes'
     COMMIT TRANSACTION




