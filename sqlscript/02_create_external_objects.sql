--Create External File Format

IF NOT EXISTS (SELECT * FROM sys.external_file_formats WHERE name = 'SynapseDelimitedTextFormat')
CREATE EXTERNAL FILE FORMAT SynapseDelimitedTextFormat
WITH (
    FORMAT_TYPE = DELIMITEDTEXT,
    FORMAT_OPTIONS (
        FIELD_TERMINATOR = ',',
        USE_TYPE_DEFAULT = FALSE
    )
);
GO

--Create External Data Source,

CREATE EXTERNAL DATA SOURCE PayrollDataLake
WITH (
    LOCATION = 'https://nycstorageaccount.dfs.core.windows.net/adlsnycpayroll-akshitha-b'
);
GO

--Create External Table

CREATE EXTERNAL TABLE dbo.NYC_Payroll_Summary (
    FiscalYear INT,
    AgencyName VARCHAR(50),
    TotalPaid FLOAT
)
WITH (
    LOCATION = '/',
    DATA_SOURCE = PayrollDataLake,
    FILE_FORMAT = SynapseDelimitedTextFormat
);
GO
