INSERT INTO [dbo].[fact_invoices]
([CustomerId],
[FirstName],
[LastName],
[Company],
[Address],
[City],
[State],
[Country],
[PostalCode],
[Phone],
[Email],
[SupportRepId],
[InvoiceId],
[InvoiceDate],
[Total],
[TrackId],
[UnitPrice],
[Quantity])
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
ON i.InvoiceId = il.InvoiceId;