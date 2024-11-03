WITH stg_customer AS (
    SELECT
        customer_id,
        CONCAT(first_name, ' ', last_name) AS customer_name,
        email AS email_address,
        address AS billing_address
    FROM test-project-439910.raw.customer
)

SELECT
    *
FROM stg_customer