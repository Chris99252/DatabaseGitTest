CREATE TABLE [dbo].[Client] (
    [ClientId]        INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]       NVARCHAR (40)  NULL,
    [MiddleName]      NVARCHAR (40)  NULL,
    [LastName]        NVARCHAR (40)  NULL,
    [Gender]          CHAR (1)       NULL,
    [DateOfBirth]     DATETIME       NULL,
    [CreditRating]    FLOAT (53)     NULL,
    [XCode]           CHAR (7)       NULL,
    [OccupationId]    INT            NULL,
    [TelephoneNumber] NVARCHAR (20)  NULL,
    [Street1]         NVARCHAR (100) NULL,
    [Street2]         NVARCHAR (100) NULL,
    [City]            NVARCHAR (100) NULL,
    [ZipCode]         NVARCHAR (15)  NULL,
    [Longitude]       FLOAT (53)     NULL,
    [Latitude]        FLOAT (53)     NULL,
    [Notes]           NVARCHAR (MAX) NULL,
    CONSTRAINT [pk_ClientId] PRIMARY KEY CLUSTERED ([ClientId] ASC),
    CONSTRAINT [FK_Client_Occupation] FOREIGN KEY ([OccupationId]) REFERENCES [dbo].[Occupation] ([OccupationId])
);


GO
CREATE NONCLUSTERED INDEX [Client_firstName]
    ON [dbo].[Client]([FirstName] ASC);


GO
CREATE NONCLUSTERED INDEX [Client_lastName]
    ON [dbo].[Client]([LastName] ASC);


GO
CREATE NONCLUSTERED INDEX [Client_dateofbirth]
    ON [dbo].[Client]([DateOfBirth] ASC);


GO
CREATE NONCLUSTERED INDEX [Client_city]
    ON [dbo].[Client]([City] ASC);

