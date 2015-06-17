CREATE TABLE [dbo].[Order] (
    [OrderId]     INT             NOT NULL,
    [ClientId]    INT             NULL,
    [OrderDate]   DATETIME        NULL,
    [OrderTotal]  NUMERIC (18, 2) NULL,
    [OrderStatus] CHAR (1)        NULL,
    CONSTRAINT [pkOrderId] PRIMARY KEY CLUSTERED ([OrderId] ASC),
    CONSTRAINT [fk_Order_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([ClientId])
);

