USE ONLINE_SHOP
GO

IF OBJECT_ID('uspCau1') IS NOT NULL
	DROP PROC uspCau1
GO
CREATE PROC uspCau1
	@a float = 0,
	@b float = 0,
	@tong float OUT
AS
	SET @tong = @a + @b
GO 
DECLARE @x float = 3.2, @y float = 4.3, @tong float = 0 

EXEC   uspCau1 @x, @y, @tong out
PRINT CONVERT(varchar,  @x) + ' + ' + CONVERT(varchar,  @y)+ ' = ' + CONVERT(varchar,  @tong)