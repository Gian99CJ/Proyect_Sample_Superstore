
-- Estas consultas me ayudaron a crear la nueva tabla

-- Mi primera consulta
select *
from bd_sample_store.default.sample_superstore
--Se estandarizan los nombres de columnas (sin espacios ni guiones) y se crea una nueva tabla dennominada "superstore"
--Creacion de la tabla
create or replace table bd_sample_store.default.superstore as
select
`Row ID` as Row_ID,	
`Order ID` as Order_ID,
coalesce(try_to_date(`Order Date`,'MM-dd-yyyy'),
try_to_date(`Order Date`, 'M/d/yyyy')) as Order_Date,
coalesce(try_to_date(`Ship Date`,'MM-dd-yyyy'),
try_to_date(`Ship Date`, 'M/d/yyyy')) as Ship_Date,
`Ship Mode` as Ship_Mode,
`Customer ID` as Customer_ID,
Segment, 
Country,
City,
State, 
Region,
`Product ID` as Product_ID,
Category,
`Sub-Category` as Sub_Category,
`Product Name` as Product_Name,
Sales,
Quantity,
Discount,
Profit	

from bd_sample_store.default.sample_superstore

