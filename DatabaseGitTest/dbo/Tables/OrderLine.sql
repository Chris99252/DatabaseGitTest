CREATE TABLE [dbo].[OrderLine] (
    [OrderId]    INT             NOT NULL,
    [LineNumber] INT             NOT NULL,
    [ProductId]  INT             NOT NULL,
    [Qty]        NUMERIC (18, 3) NOT NULL,
    [LineTotal]  NUMERIC (18, 2) NOT NULL,
    CONSTRAINT [pk_OrderId_LineNumber] PRIMARY KEY CLUSTERED ([OrderId] ASC, [LineNumber] ASC),
    CONSTRAINT [fk_OrderLine_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([OrderId]),
    CONSTRAINT [fk_OrderLine_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId])
);

