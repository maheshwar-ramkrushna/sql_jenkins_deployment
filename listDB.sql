BEGIN TRANSACTION

USE [EMPDB]
GO

select * from Emp;
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




