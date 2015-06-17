CREATE TABLE [dbo].[Cust] (
    [CustId]   NCHAR (10) NOT NULL,
    [CustName] NCHAR (10) NULL,
    [Addr]     NCHAR (10) NULL,
    [Tel]      NCHAR (10) NULL,
    CONSTRAINT [PK_Cust] PRIMARY KEY CLUSTERED ([CustId] ASC)
);

