SELECT
    c.FirstName,
    c.LastName,
    SUM(i.Total) AS TotalSpending
FROM
    customer c
JOIN
    invoice i ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId
ORDER BY
    TotalSpending DESC
LIMIT 10;