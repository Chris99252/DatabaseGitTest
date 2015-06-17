CREATE TABLE [dbo].[Occupation] (
    [OccupationId]   INT          IDENTITY (1, 1) NOT NULL,
    [OccupationName] VARCHAR (60) NULL,
    CONSTRAINT [pk_OccupationId] PRIMARY KEY CLUSTERED ([OccupationId] ASC)
);

