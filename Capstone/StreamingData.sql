-- Batch 1 --
SELECT c.CustomerId,
	c.FirstName,
    c.LastName,
    c.Company,
    c.Address,
    c.City,
    c.State,
    c.Country,
    c.PostalCode,
    c.Phone,
    c.Email,
    c.SupportRepId,
    i.InvoiceId,
    i.InvoiceDate,
    i.Total,
    il.TrackId,
    il.UnitPrice,
    il.Quantity
FROM [dbo].[Customer] AS c
INNER JOIN [dbo].[Invoice] AS i
ON c.CustomerId = i.CustomerId
RIGHT OUTER JOIN [dbo].[InvoiceLine] AS il
ON i.InvoiceId = il.InvoiceId
WHERE c.CustomerId BETWEEN 1 AND 15

--BATCH 2
SELECT c.CustomerId,
	c.FirstName,
    c.LastName,
    c.Company,
    c.Address,
    c.City,
    c.State,
    c.Country,
    c.PostalCode,
    c.Phone,
    c.Email,
    c.SupportRepId,
    i.InvoiceId,
    i.InvoiceDate,
    i.Total,
    il.TrackId,
    il.UnitPrice,
    il.Quantity
FROM [dbo].[Customer] AS c
INNER JOIN [dbo].[Invoice] AS i
ON c.CustomerId = i.CustomerId
RIGHT OUTER JOIN [dbo].[InvoiceLine] AS il
ON i.InvoiceId = il.InvoiceId
WHERE c.CustomerId BETWEEN 16 AND 30

--BATCH 3
SELECT c.CustomerId,
	c.FirstName,
    c.LastName,
    c.Company,
    c.Address,
    c.City,
    c.State,
    c.Country,
    c.PostalCode,
    c.Phone,
    c.Email,
    c.SupportRepId,
    i.InvoiceId,
    i.InvoiceDate,
    i.Total,
    il.TrackId,
    il.UnitPrice,
    il.Quantity
FROM [dbo].[Customer] AS c
INNER JOIN [dbo].[Invoice] AS i
ON c.CustomerId = i.CustomerId
RIGHT OUTER JOIN [dbo].[InvoiceLine] AS il
ON i.InvoiceId = il.InvoiceId
WHERE c.CustomerId BETWEEN 31 AND 45

--BATCH 4
SELECT c.CustomerId,
	c.FirstName,
    c.LastName,
    c.Company,
    c.Address,
    c.City,
    c.State,
    c.Country,
    c.PostalCode,
    c.Phone,
    c.Email,
    c.SupportRepId,
    i.InvoiceId,
    i.InvoiceDate,
    i.Total,
    il.TrackId,
    il.UnitPrice,
    il.Quantity
FROM [dbo].[Customer] AS c
INNER JOIN [dbo].[Invoice] AS i
ON c.CustomerId = i.CustomerId
RIGHT OUTER JOIN [dbo].[InvoiceLine] AS il
ON i.InvoiceId = il.InvoiceId
WHERE c.CustomerId BETWEEN 46 AND 59

