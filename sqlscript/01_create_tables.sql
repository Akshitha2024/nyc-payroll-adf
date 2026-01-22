# Create ALL tables in SQL DB
-- Employee table

CREATE TABLE dbo.NYC_Payroll_EMP_MD (
EmployeeID varchar(10),
LastName varchar(20),
FirstName varchar(20)
)

-- Title table

CREATE TABLE dbo.NYC_Payroll_TITLE_MD (
TitleCode varchar(10),
TitleDescription varchar(100)
)

-- Agency table

CREATE TABLE dbo.NYC_Payroll_AGENCY_MD (
AgencyID varchar(10),
AgencyName varchar(50)
)


-- Payroll 2020 table

CREATE TABLE [dbo].[NYC_Payroll_Data_2020] (
    [FiscalYear] INT NULL,
    [PayrollNumber] INT NULL,
    [AgencyID] VARCHAR(10) NULL,
    [AgencyName] VARCHAR(50) NULL,
    [EmployeeID] VARCHAR(10) NULL,
    [LastName] VARCHAR(20) NULL,
    [FirstName] VARCHAR(20) NULL,
    [AgencyStartDate] DATE NULL,
    [WorkLocationBorough] VARCHAR(50) NULL,
    [TitleCode] VARCHAR(10) NULL,
    [TitleDescription] VARCHAR(100) NULL,
    [LeaveStatusasofJune30] VARCHAR(50) NULL,
    [BaseSalary] FLOAT NULL,
    [PayBasis] VARCHAR(50) NULL,
    [RegularHours] FLOAT NULL,
    [RegularGrossPaid] FLOAT NULL,
    [OTHours] FLOAT NULL,
    [TotalOTPaid] FLOAT NULL,
    [TotalOtherPay] FLOAT NULL
);
GO

-- Payroll 2021 table
CREATE TABLE [dbo].[NYC_Payroll_Data_2021] (
    [FiscalYear] INT NULL,
    [PayrollNumber] INT NULL,
    [AgencyCode] VARCHAR(10) NULL,
    [AgencyName] VARCHAR(50) NULL,
    [EmployeeID] VARCHAR(10) NULL,
    [LastName] VARCHAR(20) NULL,
    [FirstName] VARCHAR(20) NULL,
    [AgencyStartDate] DATE NULL,
    [WorkLocationBorough] VARCHAR(50) NULL,
    [TitleCode] VARCHAR(10) NULL,
    [TitleDescription] VARCHAR(100) NULL,
    [LeaveStatusasofJune30] VARCHAR(50) NULL,
    [BaseSalary] FLOAT NULL,
    [PayBasis] VARCHAR(50) NULL,
    [RegularHours] FLOAT NULL,
    [RegularGrossPaid] FLOAT NULL,
    [OTHours] FLOAT NULL,
    [TotalOTPaid] FLOAT NULL,
    [TotalOtherPay] FLOAT NULL
);
GO

-- Summary table
CREATE TABLE dbo.NYC_Payroll_Summary (
FiscalYear int,
AgencyName varchar(50),
TotalPaid float
)
