CREATE VIEW GREATER_MANCHEST /* create view for great manchester 2019,2020,2021,2022 price paid data sets in SQL serrver data base */
AS
SELECT [Ref Number],
CAST( [Price] AS money) AS PRICE, /* convert price as numerical data type money ,coloumn name change as PRICE */
CONVERT(nvarchar(30),[Date of Transfer],101) /*  greater manchester price paid table set  in year 2019 */
[Postcode],
[Property Type],
[Old New],        
[Duration],
[Town City],
[District],
[PPD Category Type],
[Record Status]
FROM [dbo].[2019 (1)]
WHERE County= 'Greater Manchester'

union all


SELECT [Ref Number],
CAST( [Price] AS money) AS PRICE,
CONVERT(nvarchar(30),[Date of Transfer],101) /*greater manchester price paid data table  in year 2020 */
[Postcode],
[Property Type], /* thesese are coloumn names */
[Old New], 
[Duration],
[Town City],
[District],
[PPD Category Type],
[Record Status]
FROM [dbo].[2020]
WHERE County= 'Greater Manchester'

union all 


SELECT [Ref Number],
CAST( [Price] AS money) AS PRICE,
CONVERT(nvarchar(30),[Date of Transfer],101) /*  greater manchester price paid table set  in year 2021 */
[Postcode],
[Property Type],
[Old New], 
[Duration],
[Town City],
[District],
[PPD Category Type],
[Record Status]
FROM [dbo].[2021]
WHERE County= 'Greater Manchester'

union all 


SELECT [Ref Number],
CAST( [Price] AS money) AS PRICE,
CONVERT(nvarchar(30),[Date of Transfer],101)  /*  greater manchester price paid table set  in year 2022 */
[Postcode],
[Property Type],
[Old New], 
[Duration],
[Town City],
[District],
[PPD Category Type],
[Record Status]
FROM [dbo].[2022]
WHERE County= 'Greater Manchester'
 /* join greater manchester price paid data set in year 2019,2020,2021,2021 with UNION ALL Operator to combine all the results in data sets*/