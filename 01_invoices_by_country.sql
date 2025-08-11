SELECT
    BillingCountry,
    COUNT(*) AS TotalInvoices
FROM
    invoice
GROUP BY
    BillingCountry
ORDER BY
    TotalInvoices DESC;