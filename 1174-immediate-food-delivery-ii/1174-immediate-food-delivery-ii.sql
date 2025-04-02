/* Write your T-SQL query statement below */
/* Write your T-SQL query statement below */
DECLARE @TotalCustomers int;
SET @TotalCustomers = (
    SELECT 
        COUNT(*) 
    FROM (
            SELECT 
                customer_id 
            FROM 
                Delivery 
            GROUP BY 
                customer_id
        ) AS Temp
    );


DECLARE @ImmediateOrderCustomers int;
SET @ImmediateOrderCustomers = (
    SELECT 
        COUNT(*) 
    FROM (
            SELECT 
                customer_id 
            FROM 
                Delivery 
            GROUP BY 
                customer_id 
            HAVING MIN(customer_pref_delivery_date) = MIN(order_date)) 
        AS Temp
    );


SELECT 
    ROUND(100.0 * @ImmediateOrderCustomers / @TotalCustomers, 2) AS immediate_percentage;