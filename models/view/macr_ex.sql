
SELECT
    o.Order_Id,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_Id,
    p.Product_Name,
    o.Quantity,
    {{ get_date_parts('Order_date')}} AS date_extract
FROM
    raw.orders AS o 
JOIN 
    {{ ref ("stg_customer")}} AS c 
ON
    c.Customer_ID = o.Customer_ID
JOIN
    raw.products AS p 
ON
    o.Product_Id = p.Product_Id