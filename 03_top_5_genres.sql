SELECT
    g.Name AS Genre,
    SUM(il.Quantity) AS TotalQuantitySold
FROM
    genre g
JOIN
    track t ON g.GenreId = t.GenreId
JOIN
    invoiceline il ON t.TrackId = il.TrackId
JOIN
    invoice i ON il.InvoiceId = i.InvoiceId
GROUP BY
    g.Name
ORDER BY
    TotalQuantitySold DESC
LIMIT 5;