-- Local
DECLARE @SearchWord NVARCHAR(30)   
SET @SearchWord = N'performance'  

select @SearchWord as 'word'

-- Global
SELECT @@LANGUAGE as 'Language' 