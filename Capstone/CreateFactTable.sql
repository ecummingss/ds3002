CREATE TABLE [dbo].[fact_invoices] (
[CustomerId] INT NULL DEFAULT NULL,
[FirstName] VARCHAR(50) NULL DEFAULT NULL,
[LastName] VARCHAR(50) NULL DEFAULT NULL,
[Company] VARCHAR(50) DEFAULT NULL,
[Address] TEXT NULL DEFAULT NULL,
[City] VARCHAR(50) NULL DEFAULT NULL,
[State] VARCHAR(50) NULL DEFAULT NULL,
[Country] VARCHAR(50) NULL DEFAULT NULL,
[PostalCode] VARCHAR(50)NULL DEFAULT NULL,
[Phone] VARCHAR(50) NULL DEFAULT NULL,
[Email] VARCHAR(75) NULL DEFAULT NULL,
[SupportRepId] INT NULL DEFAULT NULL,
[InvoiceId] INT NULL DEFAULT NULL ,
[InvoiceDate] DATETIME NULL DEFAULT NULL,
[Total] DECIMAL (19,4) NULL DEFAULT '0.0000',
[TrackId] INT NULL DEFAULT NULL,
[UnitPrice] DECIMAL (19,4) NULL DEFAULT '0.0000',
[Quantity] DECIMAL (19,4) NULL DEFAULT '0.0000')
;