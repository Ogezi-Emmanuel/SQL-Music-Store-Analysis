SELECT
    ar.Name AS ArtistName,
    COUNT(il.InvoiceLineId) AS TracksSold
FROM
    artist ar
JOIN
    album al ON ar.ArtistId = al.ArtistId
JOIN
    track t ON al.AlbumId = t.AlbumId
JOIN
    invoiceline il ON t.TrackId = il.TrackId
GROUP BY
    ArtistName
ORDER BY
    TracksSold DESC
LIMIT 10;