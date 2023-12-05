-- DATABASE CREATION
CREATE DATABASE REAL_ESTATE_DB;

-- SCHEMA CREATION
CREATE SCHEMA ESTATE_SALES_SCHEMA;

-- TABLE REAL ESTATE PROPERTY SALES CREATION WITH COMPOSITE PRIMARY KEY
CREATE TABLE [ESTATE_SALES_SCHEMA].[REAL ESTATE PROPERTY SALES](
    [Serial Number] INT NOT NULL,
    [List Year] INT NOT NULL,
    [Date Recorded] DATE NULL,
    [Town] VARCHAR(50) NOT NULL,
    [Address] VARCHAR(255) NOT NULL,
    [Assessed Value] MONEY NOT NULL,
    [Sale Amount] MONEY NOT NULL,
    [Sales Ratio] FLOAT NOT NULL,
    [Property Type] VARCHAR(50) NULL,
    [Residential Type] VARCHAR(50) NULL,
    [Non Use Code] VARCHAR(100) NULL,
    [Assessor Remarks] VARCHAR(MAX) NULL,
    [OPM remarks] VARCHAR(MAX) NULL,
    [Location] VARCHAR(100) NULL,
    [BUYER ID] INT NOT NULL,
    PRIMARY KEY ([Serial Number])
);

-- TABLE BUYERS CREATION 
CREATE TABLE [ESTATE_SALES_SCHEMA].[BUYERS](
    [BUYER ID] INT  IDENTITY (1, 1) NOT NULL,
    [FIRST NAME] VARCHAR(50) NULL,
    [LAST NAME] VARCHAR(50) NULL,
    [PHONE NUMBER] VARCHAR(20) NULL,
    PRIMARY KEY ([BUYER ID])
)

-- ALTER STATEMENT TO ADD FOREIGN KEY
ALTER TABLE [ESTATE_SALES_SCHEMA].[REAL ESTATE PROPERTY SALES]
ADD FOREIGN KEY ([BUYER ID]) REFERENCES [ESTATE_SALES_SCHEMA].[BUYERS]([BUYER ID]);

