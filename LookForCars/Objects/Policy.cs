using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Look4Cars.Objects
{
    public class Policy
    {
        public string PolicyNumber { get; set; }
        public string SalesReferenceNumber { get; set; }
        public string BranchCode { get; set; }
        public string SalesOTPNumber { get; set; }
        public string SalesQuoteNumber { get; set; }
        public string FIUserName { get; set; }
        public string FIUserEmployeeNumber { get; set; }
        public string FIUserRSAIDNumber { get; set; }
        public string SalesRSAIDNumber { get; set; }
        public string SalesEmployeeNumber { get; set; }
        public string SalesFirstName { get; set; }
        public string SalesLastName { get; set; }
        public string TransactionType { get; set; }
        public string Category { get; set; }
        public string CompanyName { get; set; }
        public string CompanyTradingAsName { get; set; }
        public string CompanyRegistrationNumber { get; set; }
        public string CompanyVATVendorInd { get; set; }
        public string CompanyVATNumber { get; set; }
        public string EstablishmentCountry { get; set; }
        public PhysicalAddress CompanyAddress { get; set; }
        public Person Client { get; set; }
        public Person Spouse { get; set; }
        public Person Relative { get; set; }
        public string RelativeRelation { get; set; }
        public BankAccount[] BankAccounts { get; set; }
        public bool CashInd { get; set; }
        public string FinanceCompanyCode { get; set; }
        public string FinanceAccountNumber { get; set; }
        public decimal FinanceRate { get; set; }
        public string FinanceRateType { get; set; }
        public string FinanceTerm { get; set; }
        public string AgreementType { get; set; }
        public string PaymentFrequency { get; set; }
        public string PaymentMethod { get; set; }
        public int PaymentDay { get; set; }
        public bool FirstPaymentExtendedInd { get; set; }
        public bool AdvancePaymentInd { get; set; }
        public bool TakeABreakMonth { get; set; }
        public bool IdxConsentInd { get; set; }
        public bool CreditCheckConsentInd { get; set; }
        public bool CompanyConsentInd { get; set; }
        public bool OtherCompanyConsetId { get; set; }
        public bool MarketingConsentInd { get; set; }
        public bool CreditRehabilitationInd { get; set; }
        public string MarketingSource { get; set; }

        public string FirstRegistrationDate { get; set; }
        public string VehicleCode { get; set; }
        public string Manufacturer { get; set; }
        public string Model { get; set; }
        public string ManufacturerDerivativeCode { get; set; }
        public bool ManufacturerApprovedUsedInd { get; set; }
        public bool FullServiceHistoryInd { get; set; }
        public string VehicleDescription { get; set; }
        public string StockNumber { get; set; }
        public string VehicleSource { get; set; }
        public string NewUsed { get; set; }
        public string RegistrationNumber { get; set; }
        public string Colour { get; set; }
        public string InteriorTrim { get; set; }
        public int ExpectedAnnualMileage { get; set; }
        public int OdometerReading { get; set; }
        public string VINNumber { get; set; }
        public string EngineNumber { get; set; }
        public string ChassisNumber { get; set; }
        public string BodyNumber { get; set; }
        public string HPIReferenceNumber { get; set; }
        public string TaxiConversionCertificateNumber { get; set; }
        public string TaxiConversionCertificateIssueDate { get; set; }
        public bool WarrantyInd { get; set; }
        public string WarrantyCommencementDate { get; set; }
        public int WarrantyExpiryMonths { get; set; }
        public int WarrantyExpiryKilometres { get; set; }
        public bool ExistingWarrantyInd { get; set; }
        public string ExistingWarrantyExpiryDate { get; set; }
        public string PlanType { get; set; }
        public int PlanExpiryMonths { get; set; }
        public string ExistingPlanType { get; set; }
        public string ExistingPlanExpiryDate { get; set; }
        public string ExistingPlanExpiryKilometres { get; set; }
        public bool GearlockInd { get; set; }
        public bool ImmobiliserInd { get; set; }
        public bool TrackingDeviceInd { get; set; }
        public int TyreNumber { get; set; }
        public int TyreSize { get; set; }
        public string TyreNewUsed { get; set; }
        public string InspectorName { get; set; }
        public bool VehicleDamageInd { get; set; }
        public string LeftFrontFenderDamage { get; set; }
        public string LeftFrontDoorDamage { get; set; }
        public string LeftBackFenderDamage { get; set; }
        public string LeftBackDoorDamage { get; set; }
        public string RightFrontFenderDamage { get; set; }
        public string RightFrontDoorDamage { get; set; }
        public string RightBackFenderDamage { get; set; }
        public string RightBackDoorDamage { get; set; }
        public string BonnetDamage { get; set; }
        public string RoofDamage { get; set; }
        public string BootDamage { get; set; }
        public string FrontBumperDamage { get; set; }
        public string BackBumperDamage { get; set; }
        public decimal RetailPrice { get; set; }
        public decimal DiscountAmount { get; set; }
        public decimal FleetAssist { get; set; }
        public decimal OtherIncome { get; set; }
        public decimal Rebate { get; set; }
        public decimal VehicleCost { get; set; }
        public decimal Reconditioning { get; set; }
        public decimal PreDeliveryCost { get; set; }
        public decimal OverAllowance { get; set; }
        public decimal OtherExpenses { get; set; }
        public decimal MarkDown { get; set; }
        public decimal OtherCommissionAmount { get; set; }
        public decimal OtherCostAmount { get; set; }
        public decimal RegistrationFee { get; set; }
        public decimal RegistrationCost { get; set; }
        public decimal DeliveryFee { get; set; }
        public decimal DeliveryCost { get; set; }
        public decimal DICAmount { get; set; }
        public decimal FinanceInitiationFee { get; set; }
       
        public string StockDate { get; set; }
        public string CarDeliveryDate { get; set; }
        public string InvoiceNumber { get; set; }
        public string InvoiceDate { get; set; }
        public string InvoicePaidDate { get; set; }
        public string VehicleUse { get; set; }
        public bool ExtremeVehicleUsageInd { get; set; }
        public decimal OffRoadUsagePercentage { get; set; }
        public decimal DepositValue { get; set; }
        public decimal CashDepositValue { get; set; }
        public decimal ChequeDepositValue { get; set; }
        public decimal EFTDepositValue { get; set; }
        public decimal ResidualValue { get; set; }
        public decimal ResidualPercentage { get; set; }
        public bool TradeInInd { get; set; }
        public bool TradeInCashInd { get; set; }
        public string TradeInFinanceCompanyCode { get; set; }
        public string TradeInAccountNumber { get; set; }
        public decimal TradeInCurrentInstallment { get; set; }
        public decimal TradeInValue { get; set; }
        public decimal TradeInSettlementValue { get; set; }
        public decimal TradeInCashPaybackValue { get; set; }
        public FinanceApplication[] FinanceApplications { get; set; }

        public Policy(string policyNumber, string salesReferenceNumber, string branchCode, string salesOTPNumber, string salesQuoteNumber, string fIUserName, string fIUserEmployeeNumber, string fIUserRSAIDNumber, string salesRSAIDNumber, 
            string salesEmployeeNumber, string salesFirstName, string salesLastName, string transactionType, string category, string companyName, 
            string companyTradingAsName, string companyRegistrationNumber, string companyVATVendorInd, string companyVATNumber, string establishmentCountry,
            PhysicalAddress companyAddress, Person client, Person spouse, Person relative, string relativeRelation, BankAccount[] bankAccounts, bool cashInd, 
            string financeCompanyCode, string financeAccountNumber, decimal financeRate, string financeRateType, string financeTerm, string agreementType, 
            string paymentFrequency, string paymentMethod, int paymentDay, bool firstPaymentExtendedInd, bool advancePaymentInd, bool takeABreakMonth, 
            bool idxConsentInd, bool creditCheckConsentInd, bool companyConsentInd, bool otherCompanyConsetId, bool marketingConsentInd, bool creditRehabilitationInd, 
            string marketingSource, string firstRegistrationDate, string vehicleCode, string manufacturer, string model, string manufacturerDerivativeCode, bool manufacturerApprovedUsedInd, 
            bool fullServiceHistoryInd, string vehicleDescription, string stockNumber, string vehicleSource, string newUsed, string registrationNumber, 
            string colour, string interiorTrim, int expectedAnnualMileage, int odometerReading, string vINNumber, string engineNumber, string chassisNumber, 
            string bodyNumber, string hPIReferenceNumber, string taxiConversionCertificateNumber, string taxiConversionCertificateIssueDate, bool warrantyInd,
            string warrantyCommencementDate, int warrantyExpiryMonths, int warrantyExpiryKilometres, bool existingWarrantyInd, string existingWarrantyExpiryDate, string planType, int planExpiryMonths,
            string existingPlanType, string existingPlanExpiryDate, string existingPlanExpiryKilometres, bool gearlockInd, bool immobiliserInd,
            bool trackingDeviceInd, int tyreNumber, int tyreSize, string tyreNewUsed, string inspectorName, bool vehicleDamageInd, string leftFrontFenderDamage,
            string leftFrontDoorDamage, string leftBackFenderDamage, string leftBackDoorDamage, string rightFrontFenderDamage, string rightFrontDoorDamage, 
            string rightBackFenderDamage, string rightBackDoorDamage, string bonnetDamage, string roofDamage, string bootDamage, string frontBumperDamage, 
            string backBumperDamage, decimal retailPrice, decimal discountAmount, decimal fleetAssist, decimal otherIncome, decimal rebate, decimal vehicleCost,
            decimal reconditioning, decimal preDeliveryCost, decimal overAllowance, decimal otherExpenses, decimal markDown, decimal otherCommissionAmount, 
            decimal otherCostAmount, decimal registrationFee, decimal registrationCost, decimal deliveryFee, decimal deliveryCost, decimal dICAmount, 
            decimal financeInitiationFee, string stockDate, string carDeliveryDate, string invoiceNumber, string invoiceDate, string invoicePaidDate,
            string vehicleUse, bool extremeVehicleUsageInd, decimal offRoadUsagePercentage, decimal depositValue, decimal cashDepositValue, 
            decimal chequeDepositValue, decimal eFTDepositValue, decimal residualValue, decimal residualPercentage, bool tradeInInd, bool tradeInCashInd, 
            string tradeInFinanceCompanyCode, string tradeInAccountNumber, decimal tradeInCurrentInstallment, decimal tradeInValue,
            decimal tradeInSettlementValue, decimal tradeInCashPaybackValue, FinanceApplication[] financeApplications)
        {
            PolicyNumber = policyNumber;
            SalesReferenceNumber = salesReferenceNumber;
            BranchCode = branchCode;
            SalesOTPNumber = salesOTPNumber;
            SalesQuoteNumber = salesQuoteNumber;
            FIUserName = fIUserName;
            FIUserEmployeeNumber = fIUserEmployeeNumber;
            FIUserRSAIDNumber = fIUserRSAIDNumber;
            SalesRSAIDNumber = salesRSAIDNumber;
            SalesEmployeeNumber = salesEmployeeNumber;
            SalesFirstName = salesFirstName;
            SalesLastName = salesLastName;
            TransactionType = transactionType;
            Category = category;
            CompanyName = companyName;
            CompanyTradingAsName = companyTradingAsName;
            CompanyRegistrationNumber = companyRegistrationNumber;
            CompanyVATVendorInd = companyVATVendorInd;
            CompanyVATNumber = companyVATNumber;
            EstablishmentCountry = establishmentCountry;
            CompanyAddress = companyAddress;
            Client = client;
            Spouse = spouse;
            Relative = relative;
            RelativeRelation = relativeRelation;
            BankAccounts = bankAccounts;
            CashInd = cashInd;
            FinanceCompanyCode = financeCompanyCode;
            FinanceAccountNumber = financeAccountNumber;
            FinanceRate = financeRate;
            FinanceRateType = financeRateType;
            FinanceTerm = financeTerm;
            AgreementType = agreementType;
            PaymentFrequency = paymentFrequency;
            PaymentMethod = paymentMethod;
            PaymentDay = paymentDay;
            FirstPaymentExtendedInd = firstPaymentExtendedInd;
            AdvancePaymentInd = advancePaymentInd;
            TakeABreakMonth = takeABreakMonth;
            IdxConsentInd = idxConsentInd;
            CreditCheckConsentInd = creditCheckConsentInd;
            CompanyConsentInd = companyConsentInd;
            OtherCompanyConsetId = otherCompanyConsetId;
            MarketingConsentInd = marketingConsentInd;
            CreditRehabilitationInd = creditRehabilitationInd;
            MarketingSource = marketingSource;
            FirstRegistrationDate = firstRegistrationDate;
            VehicleCode = vehicleCode;
            Manufacturer = manufacturer;
            Model = model;
            ManufacturerDerivativeCode = manufacturerDerivativeCode;
            ManufacturerApprovedUsedInd = manufacturerApprovedUsedInd;
            FullServiceHistoryInd = fullServiceHistoryInd;
            VehicleDescription = vehicleDescription;
            StockNumber = stockNumber;
            VehicleSource = vehicleSource;
            NewUsed = newUsed;
            RegistrationNumber = registrationNumber;
            Colour = colour;
            InteriorTrim = interiorTrim;
            ExpectedAnnualMileage = expectedAnnualMileage;
            OdometerReading = odometerReading;
            VINNumber = vINNumber;
            EngineNumber = engineNumber;
            ChassisNumber = chassisNumber;
            BodyNumber = bodyNumber;
            HPIReferenceNumber = hPIReferenceNumber;
            TaxiConversionCertificateNumber = taxiConversionCertificateNumber;
            TaxiConversionCertificateIssueDate = taxiConversionCertificateIssueDate;
            WarrantyInd = warrantyInd;
            WarrantyCommencementDate = warrantyCommencementDate;
            WarrantyExpiryMonths = warrantyExpiryMonths;
            WarrantyExpiryKilometres = warrantyExpiryKilometres;
            ExistingWarrantyInd = existingWarrantyInd;
            ExistingWarrantyExpiryDate = existingWarrantyExpiryDate;
            PlanType = planType;
            PlanExpiryMonths = planExpiryMonths;
            ExistingPlanType = existingPlanType;
            ExistingPlanExpiryDate = existingPlanExpiryDate;
            ExistingPlanExpiryKilometres = existingPlanExpiryKilometres;
            GearlockInd = gearlockInd;
            ImmobiliserInd = immobiliserInd;
            TrackingDeviceInd = trackingDeviceInd;
            TyreNumber = tyreNumber;
            TyreSize = tyreSize;
            TyreNewUsed = tyreNewUsed;
            InspectorName = inspectorName;
            VehicleDamageInd = vehicleDamageInd;
            LeftFrontFenderDamage = leftFrontFenderDamage;
            LeftFrontDoorDamage = leftFrontDoorDamage;
            LeftBackFenderDamage = leftBackFenderDamage;
            LeftBackDoorDamage = leftBackDoorDamage;
            RightFrontFenderDamage = rightFrontFenderDamage;
            RightFrontDoorDamage = rightFrontDoorDamage;
            RightBackFenderDamage = rightBackFenderDamage;
            RightBackDoorDamage = rightBackDoorDamage;
            BonnetDamage = bonnetDamage;
            RoofDamage = roofDamage;
            BootDamage = bootDamage;
            FrontBumperDamage = frontBumperDamage;
            BackBumperDamage = backBumperDamage;
            RetailPrice = retailPrice;
            DiscountAmount = discountAmount;
            FleetAssist = fleetAssist;
            OtherIncome = otherIncome;
            Rebate = rebate;
            VehicleCost = vehicleCost;
            Reconditioning = reconditioning;
            PreDeliveryCost = preDeliveryCost;
            OverAllowance = overAllowance;
            OtherExpenses = otherExpenses;
            MarkDown = markDown;
            OtherCommissionAmount = otherCommissionAmount;
            OtherCostAmount = otherCostAmount;
            RegistrationFee = registrationFee;
            RegistrationCost = registrationCost;
            DeliveryFee = deliveryFee;
            DeliveryCost = deliveryCost;
            DICAmount = dICAmount;
            FinanceInitiationFee = financeInitiationFee;
            StockDate = stockDate;
            CarDeliveryDate = carDeliveryDate;
            InvoiceNumber = invoiceNumber;
            InvoiceDate = invoiceDate;
            InvoicePaidDate = invoicePaidDate;
            VehicleUse = vehicleUse;
            ExtremeVehicleUsageInd = extremeVehicleUsageInd;
            OffRoadUsagePercentage = offRoadUsagePercentage;
            DepositValue = depositValue;
            CashDepositValue = cashDepositValue;
            ChequeDepositValue = chequeDepositValue;
            EFTDepositValue = eFTDepositValue;
            ResidualValue = residualValue;
            ResidualPercentage = residualPercentage;
            TradeInInd = tradeInInd;
            TradeInCashInd = tradeInCashInd;
            TradeInFinanceCompanyCode = tradeInFinanceCompanyCode;
            TradeInAccountNumber = tradeInAccountNumber;
            TradeInCurrentInstallment = tradeInCurrentInstallment;
            TradeInValue = tradeInValue;
            TradeInSettlementValue = tradeInSettlementValue;
            TradeInCashPaybackValue = tradeInCashPaybackValue;
            FinanceApplications = financeApplications;
        }

        public Policy()
        {
        }
    }
}