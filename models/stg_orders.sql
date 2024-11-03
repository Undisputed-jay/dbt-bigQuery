SELECT
    o.Order_Id,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_Id,
    p.Product_Name,
    o.Quantity,
    o.Order_date
FROM
    test-project-439910.raw.orders AS o
JOIN 
    {{ ref ("stg_customer")}} AS c
ON
    o.Customer_ID = c.Customer_ID
JOIN
    test-project-439910.raw.products AS p 
ON
    o.Product_Id = p.Product_Id