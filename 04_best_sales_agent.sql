SELECT
    e.FirstName || ' ' || e.LastName AS EmployeeFullName,
    COUNT(i.InvoiceId) AS TotalSalesCount,
    SUM(i.Total) AS TotalSalesValue
FROM
    employee e
JOIN
    customer c ON e.EmployeeId = c.SupportRepId
JOIN
    invoice i ON c.CustomerId = i.CustomerId
GROUP BY
    EmployeeFullName
ORDER BY
    TotalSalesValue DESC;