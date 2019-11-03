BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "ProspectiveBuyer" (
	"ProspectiveBuyerKey"	INTEGER,
	"ProspectAlternateKey"	INTEGER,
	"FirstName"	TEXT,
	"MiddleName"	TEXT,
	"LastName"	TEXT,
	"BirthDate"	TEXT,
	"MaritalStatus"	TEXT,
	"Gender"	TEXT,
	"EmailAddress"	TEXT,
	"YearlyIncome"	INTEGER,
	"TotalChildren"	INTEGER,
	"NumberChildrenAtHome"	INTEGER,
	"Education"	TEXT,
	"Occupation"	TEXT,
	"HouseOwnerFlag"	INTEGER,
	"NumberCarsOwned"	INTEGER,
	"AddressLine1"	TEXT,
	"AddressLine2"	TEXT,
	"City"	TEXT,
	"StateProvinceCode"	TEXT,
	"PostalCode"	INTEGER,
	"Phone"	TEXT,
	"Salutation"	TEXT,
	"Unknown"	INTEGER
);
CREATE TABLE IF NOT EXISTS "NewFactCurrencyRate" (
	"AverageRate"	INTEGER,
	"CurrencyID"	TEXT,
	"CurrencyDate"	TEXT,
	"EndOfDayRate"	REAL,
	"CurrencyKey"	INTEGER,
	"DateKey"	TEXT
);
CREATE TABLE IF NOT EXISTS "FactSurveyResponse" (
	"SurveyResponseKey"	INTEGER,
	"DateKey"	INTEGER,
	"CustomerKey"	INTEGER,
	"ProductCategoryKey"	INTEGER,
	"EnglishProductCategoryName"	TEXT,
	"ProductSubcategoryKey"	INTEGER,
	"EnglishProductSubcategoryName"	TEXT,
	"Date"	TEXT
);
CREATE TABLE IF NOT EXISTS "FactSalesQuota" (
	"SalesQuotaKey"	INTEGER,
	"EmployeeKey"	INTEGER,
	"DateKey"	INTEGER,
	"CalendarYear"	INTEGER,
	"CalendarQuarter"	INTEGER,
	"SalesAmountQuota"	INTEGER,
	"Date"	TEXT
);
CREATE TABLE IF NOT EXISTS "FactResellerSales" (
	"ProductKey"	INTEGER,
	"OrderDateKey"	INTEGER,
	"DueDateKey"	INTEGER,
	"ShipDateKey"	INTEGER,
	"ResellerKey"	INTEGER,
	"EmployeeKey"	INTEGER,
	"PromotionKey"	INTEGER,
	"CurrencyKey"	INTEGER,
	"SalesTerritoryKey"	INTEGER,
	"SalesOrderNumber"	TEXT,
	"SalesOrderLineNumber"	INTEGER,
	"RevisionNumber"	INTEGER,
	"OrderQuantity"	INTEGER,
	"UnitPrice"	INTEGER,
	"ExtendedAmount"	INTEGER,
	"UnitPriceDiscountPct"	INTEGER,
	"DiscountAmount"	INTEGER,
	"ProductStandardCost"	INTEGER,
	"TotalProductCost"	INTEGER,
	"SalesAmount"	INTEGER,
	"TaxAmt"	INTEGER,
	"Frieght"	INTEGER,
	"CarrierTrackingNumber"	TEXT,
	"CustomerPONumber"	TEXT,
	"OrderDate"	TEXT,
	"DueDate"	TEXT,
	"ShipDate"	TEXT
);
CREATE TABLE IF NOT EXISTS "DimProductSubcategory" (
	"ProductSubcategoryKey"	INTEGER,
	"ProductSubcategoryAlternateKey"	INTEGER,
	"EnglishProductSubcategoryName"	TEXT,
	"SpanishProductSubcategoryName"	TEXT,
	"FrenchProductSubcategoryName"	TEXT,
	"ProductCategoryKey"	INTEGER
);
CREATE TABLE IF NOT EXISTS "FactInternetSales" (
	"ProductKey"	INTEGER,
	"OrderDateKey"	INTEGER,
	"DueDateKey"	INTEGER,
	"ShipDateKey"	INTEGER,
	"CustomerKey"	INTEGER,
	"PromotionKey"	INTEGER,
	"CurrencyKey"	INTEGER,
	"SalesTerritoryKey"	INTEGER,
	"SalesOrderNumber"	TEXT,
	"SalesOrderLineNumber"	INTEGER,
	"RevisionNumber"	INTEGER,
	"OrderQuantity"	INTEGER,
	"UnitPrice"	INTEGER,
	"ExtendedAmount"	INTEGER,
	"UnitPriceDiscountPct"	INTEGER,
	"DiscountAmount"	INTEGER,
	"ProductStandardCost"	INTEGER,
	"TotalProductCost"	INTEGER,
	"SalesAmount"	INTEGER,
	"TaxAmt"	INTEGER,
	"Freight"	INTEGER,
	"CarrierTrackingNumber"	TEXT,
	"CustomerPONNumber"	TEXT,
	"OrderDate"	TEXT,
	"DueDate"	TEXT,
	"ShipDate"	TEXT
);
CREATE TABLE IF NOT EXISTS "FactProductInventory" (
	"ProductKey"	INTEGER,
	"DateKey"	INTEGER,
	"MovementDate"	TEXT,
	"UnitCost"	INTEGER,
	"UnitsIn"	INTEGER,
	"UnitsOut"	INTEGER,
	"UnitsBalance"	INTEGER
);
CREATE TABLE IF NOT EXISTS "FactInternetSalesReason" (
	"SalesOrderNumber"	TEXT,
	"SalesOrderLineNumber"	INTEGER,
	"SalesReasonKey"	INTEGER
);
CREATE TABLE IF NOT EXISTS "FactFinance" (
	"FinanceKey"	INTEGER,
	"DateKey"	INTEGER,
	"OrganizationKey"	INTEGER,
	"DepartmentGroupKey"	INTEGER,
	"ScenarioKey"	INTEGER,
	"AccountKey"	INTEGER,
	"Amount"	INTEGER,
	"Date"	TEXT
);
CREATE TABLE IF NOT EXISTS "FactCurrencyRate" (
	"CurrencyKey"	INTEGER,
	"DateKey"	INTEGER,
	"AverageRate"	INTEGER,
	"EndOfDayRate"	INTEGER,
	"Date"	TEXT
);
CREATE TABLE IF NOT EXISTS "FactCallCenter" (
	"FactCallCenterID"	INTEGER,
	"DateKey"	INTEGER,
	"WageType"	TEXT,
	"Shift"	TEXT,
	"LevelOneOperators"	INTEGER,
	"LevelTwoOperators"	INTEGER,
	"TotalOperators"	INTEGER,
	"Calls"	INTEGER,
	"AutomaticResponses"	INTEGER,
	"Orders"	INTEGER,
	"IssuesRaised"	INTEGER,
	"AverageTimePerIssue"	INTEGER,
	"ServiceGrade"	INTEGER,
	"Date"	TEXT
);
CREATE TABLE IF NOT EXISTS "FactAdditionalInternationalProductDescription" (
	"ProductKey"	INTEGER,
	"CultureName"	TEXT,
	"ProductDescription"	TEXT
);
CREATE TABLE IF NOT EXISTS "DimScenario" (
	"ScenarioKey"	INTEGER,
	"ScenarioName"	TEXT
);
CREATE TABLE IF NOT EXISTS "DimSalesTerritory" (
	"SalesTerritoryKey"	INTEGER,
	"SalesTerritoryAlternateKey"	INTEGER,
	"SalesTerritoryRegion"	TEXT,
	"SalesTerritoryCountry"	TEXT,
	"SalesTerritoryGroup"	TEXT,
	"SalesTerritoryImage"	BLOB
);
CREATE TABLE IF NOT EXISTS "DimSalesReason" (
	"SalesReasonKey"	INTEGER,
	"SalesReasonAlternateKey"	INTEGER,
	"SalesReasonName"	TEXT,
	"SalesReasonReasonType"	TEXT
);
CREATE TABLE IF NOT EXISTS "DimReseller" (
	"ResellerKey"	INTEGER,
	"GeographyKey"	INTEGER,
	"ResellerAlternateKey"	TEXT,
	"Phone"	TEXT,
	"BusinessType"	TEXT,
	"ResellerName"	TEXT,
	"NumberEmployees"	INTEGER,
	"OrderFrequency"	TEXT,
	"OrderMonth"	TEXT,
	"FirstOrderYear"	TEXT,
	"LastOrderYear"	TEXT,
	"ProductLine"	TEXT,
	"AddressLine1"	TEXT,
	"AddressLine2"	TEXT,
	"AnnualSales"	INTEGER,
	"BankName"	TEXT,
	"MinPaymentType"	TEXT,
	"MinPaymentAmount"	TEXT,
	"AnnualRevenue"	INTEGER,
	"YearOpened"	INTEGER
);
CREATE TABLE IF NOT EXISTS "DimPromotion" (
	"PromotionKey"	INTEGER,
	"PromotionAlternateKey"	INTEGER,
	"EnglishPromotionName"	TEXT,
	"SpanishPromotionName"	TEXT,
	"FrenchPromotionName"	TEXT,
	"DiscountPct"	REAL,
	"EnglishPromotionType"	TEXT,
	"SpanishPromotionType"	TEXT,
	"FrenchPromotionType"	TEXT,
	"EnglishPromotionCategory"	TEXT,
	"SpanishPromotionCategory"	TEXT,
	"FrenchPromotionCategory"	TEXT,
	"StartDate"	TEXT,
	"EndDate"	TEXT,
	"MinQty"	INTEGER,
	"MaxQty"	TEXT
);
CREATE TABLE IF NOT EXISTS "DimProductCategory" (
	"ProductSubcategoryKey"	INTEGER,
	"ProductSubcategoryAlternateKey"	INTEGER,
	"EnglishProductSubcategoryName"	TEXT,
	"SpanishProductSubcategoryName"	TEXT,
	"ProductCategoryKey"	INTEGER
);
CREATE TABLE IF NOT EXISTS "DimProduct" (
	"ProductKey"	INTEGER,
	"ProductAlternateKey"	TEXT,
	"ProductSubcategoryKey"	TEXT,
	"WeightUnitMeasureCode"	TEXT,
	"SizeUnitMeasureCode"	TEXT,
	"EnglishProductName"	TEXT,
	"SpanishProductName"	TEXT,
	"FrenchProductName"	TEXT,
	"StandardCost"	TEXT,
	"FinishedGoodsFlag"	INTEGER,
	"Color"	TEXT,
	"SafetyStockLevel"	INTEGER,
	"ReorderPoint"	INTEGER,
	"ListPrice"	TEXT,
	"Size"	TEXT,
	"SizeRange"	TEXT,
	"Weight"	TEXT,
	"DaysToManufacture"	INTEGER,
	"ProductLine"	TEXT,
	"DealerPrice"	TEXT,
	"Class"	TEXT,
	"Style"	TEXT,
	"ModelName"	TEXT,
	"LargePhoto"	BLOB,
	"EnglishDescription"	TEXT,
	"SpanishDescription"	TEXT,
	"FrenchDescription"	TEXT,
	"ChineseDescription"	TEXT,
	"ArabicDescription"	TEXT,
	"HebrewDescription"	TEXT,
	"ThaiDescription"	TEXT,
	"GermanDescription"	TEXT,
	"JapaneseDescription"	TEXT,
	"TurkishDescription"	TEXT,
	"StartDate"	TEXT,
	"EndDate"	TEXT
);
CREATE TABLE IF NOT EXISTS "DimOrganization" (
	"OrganizationKey"	INTEGER,
	"ParentOrganizationKey"	TEXT,
	"PercentageOfOwnership"	INTEGER,
	"OrganizationName"	TEXT,
	"CurrencyKey"	INTEGER
);
CREATE TABLE IF NOT EXISTS "DimGeography" (
	"GeographyKey"	INTEGER,
	"City"	TEXT,
	"StateProvinceCode"	TEXT,
	"StateProvinceName"	TEXT,
	"CountryRegionCode"	TEXT,
	"EnglishCountryRegionName"	TEXT,
	"SpanishCountryRegionName"	TEXT,
	"FrenchCountryRegionName"	TEXT,
	"PostalCode"	INTEGER,
	"SalesTerritoryKey"	INTEGER,
	"IpAddressLocator"	TEXT
);
CREATE TABLE IF NOT EXISTS "DimEmployee" (
	"EmployeeKey"	INTEGER,
	"ParentEmployeeKey"	INTEGER,
	"EmployeeNationalIDAlternateKey"	INTEGER,
	"ParentEmployeeNationalIDAlternateKey"	TEXT,
	"SalesTerritoryKey"	INTEGER,
	"FirstName"	TEXT,
	"LastName"	TEXT,
	"MiddleName"	TEXT,
	"NameStyle"	INTEGER,
	"Title"	TEXT,
	"HireDate"	TEXT,
	"BirthDate"	TEXT,
	"LoginID"	TEXT,
	"EmailAddress"	TEXT,
	"Phone"	TEXT,
	"MartialStatus"	TEXT,
	"EmergencyContactName"	TEXT,
	"EmergencyContactPhone"	TEXT,
	"SalariedFlag"	INTEGER,
	"Gender"	TEXT,
	"PayFrequency"	INTEGER,
	"BaseRate"	INTEGER,
	"VacationHours"	INTEGER,
	"SickLeaveHours"	INTEGER,
	"CurrentFlag"	INTEGER,
	"SalesPersonFlag"	INTEGER,
	"DepartmentName"	TEXT,
	"StartDate"	TEXT,
	"EndDate"	TEXT,
	"Status"	TEXT,
	"EmployeePhoto"	BLOB
);
CREATE TABLE IF NOT EXISTS "DimDepartmentGroup" (
	"DepartmentGroupKey"	INTEGER,
	"ParentDepartmentGroupKey"	TEXT,
	"DepartmentGroupName"	TEXT
);
CREATE TABLE IF NOT EXISTS "DimDate" (
	"DateKey"	INTEGER,
	"FullDateAlternateKey"	TEXT,
	"DayNumberOfWeek"	INTEGER,
	"EnglishDayNameOfWeek"	TEXT,
	"SpanishDayNameOfWeek"	TEXT,
	"FrenchDayNameOfWeek"	TEXT,
	"DayNumberOfMonth"	INTEGER,
	"DayNumberOfYear"	INTEGER,
	"WeekNumberOfYear"	INTEGER,
	"EnglishMonthName"	TEXT,
	"SpanishMonthName"	TEXT,
	"FrenchMonthName"	TEXT,
	"MonthNumberOfYear"	INTEGER,
	"CalendarQuarter"	INTEGER,
	"CalendarYear"	INTEGER,
	"CalendarSemester"	INTEGER,
	"FiscalQuarter"	INTEGER,
	"FiscalYear"	INTEGER,
	"FiscalSemester"	INTEGER
);
CREATE TABLE IF NOT EXISTS "DimCustomer" (
	"CustomerKey"	INTEGER,
	"GeographyKey"	INTEGER,
	"CustomerAlternateKey"	TEXT,
	"Title"	TEXT,
	"FirstName"	TEXT,
	"MiddleName"	TEXT,
	"LastName"	TEXT,
	"NameStyle"	INTEGER,
	"BirthDate"	TEXT,
	"MaritalStatus"	TEXT,
	"Suffix"	TEXT,
	"Gender"	TEXT,
	"EmailAddress"	TEXT,
	"YearlyIncome"	INTEGER,
	"TotalChildren"	INTEGER,
	"NumberChildrenAtHome"	INTEGER,
	"EnglishEducation"	TEXT,
	"SpanishEducation"	TEXT,
	"FrenchEducation"	TEXT,
	"EnglishOccupation"	TEXT,
	"SpanishOccupation"	TEXT,
	"FrenchOccupation"	TEXT,
	"HouseOwnerFlag"	INTEGER,
	"NumberCarsOwned"	INTEGER,
	"AddressLine1"	TEXT,
	"AddressLine2"	TEXT,
	"Phone"	TEXT,
	"DateFirstPurchase"	TEXT,
	"CommuteDistance"	TEXT
);
CREATE TABLE IF NOT EXISTS "DimCurrency" (
	"CurrencyKey"	INTEGER,
	"CurrencyAlternateKey"	TEXT,
	"CurrencyName"	TEXT
);
CREATE TABLE IF NOT EXISTS "DimAccount" (
	"AccountKey"	INTEGER,
	"ParentAccountKey"	INTEGER,
	"AccountCodeAlternateKey"	INTEGER,
	"ParentAccountCodeAlternateKey"	INTEGER,
	"AccountDescription"	TEXT,
	"AccountType"	TEXT,
	"Operator"	TEXT,
	"CustomMembers"	TEXT,
	"ValueType"	TEXT,
	"CustomMemberOptions"	TEXT
);
COMMIT;
