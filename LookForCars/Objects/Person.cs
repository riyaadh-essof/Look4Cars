using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Look4Cars.Objects
{
    public class Person
    {
        public string SalesReferenceNumber { get; set; }
        public string Title { get; set; }
        public string Initials { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
        public string BirthDate { get; set; }
        public string BirthCountry { get; set; }
        public string IDType { get; set; }
        public string IDNumber { get; set; }
        public string PassportIssueDate { get; set; }
        public string PassportExpiryDate { get; set; }
        public string EmailAddress { get; set; }
        public string MobileNumber { get; set; }
        public string MobileContractType { get; set; }
        public string WorkTelephoneCode { get; set; }
        public string WorkTelephoneNumber { get; set; }
        public string HomeTelephoneNumber { get; set; }
        public string AlternativeMobileNumber { get; set; }
        public string EthnicGroup { get; set; }
        public string EducationLevel { get; set; }
        public string CitizenshipCountry { get; set; }
        public string NationalityCountry { get; set; }
        public string ResidenceCountry { get; set; }
        public string MaritalStatus { get; set; }
        public string MarriageType { get; set; }
        public string MarriageDate { get; set; }
        public string NumberOfDependents { get; set; }
        public string HomeLanguage { get; set; }
        public string CorrespondenceLanguage { get; set; }
        public string ContactMethod { get; set; }
        public string EmploymentType { get; set; }
        public string Occupation { get; set; }
        public string EmployerName { get; set; }
        public string EmployeeNumber { get; set; }
        public PhysicalAddress EmploymentAddress { get; set; }

        public decimal SalaryDay { get; set; }
        public decimal BasicSalary { get; set; }
        public decimal Commission { get; set; }
        public decimal OverTime { get; set; }
        public decimal OtherIncome { get; set; }
        public string OtherIncomeSource { get; set; }
        public decimal CarAllowance { get; set; }
        public decimal OtherAllowance { get; set; }
        public decimal TaxPayments { get; set; }
        public decimal NettSalary { get; set; }
        public decimal LoanRepayments { get; set; }
        public decimal VehicleRepayments { get; set; }
        public decimal InsurancePayments { get; set; }
        public decimal MunicipalPayments { get; set; }
        public decimal BondRentPayments { get; set; }
        public decimal CreditCardPayments { get; set; }
        public decimal FurnitureAccountPayments { get; set; }
        public decimal ClothingAccountPayments { get; set; }
        public decimal OverdraftPayments { get; set; }
        public decimal TelephonePayments { get; set; }
        public decimal TransportCosts { get; set; }
        public decimal FoodEntertainmentCosts { get; set; }
        public decimal EducationCosts { get; set; }
        public decimal ChildMaintenance { get; set; }
        public decimal HouseHoldExpenses { get; set; }
        public decimal OtherPayments { get; set; }
        public decimal RentalIncome { get; set; }
        public string FundsSource { get; set; }


        public PhysicalAddress PhysicalAddress { get; set; }
        public PostalAddress PostalAddress { get; set; }

        public Person(string salesReferenceNumber, string title, string initials, string firstName, string lastName, string gender, string birthDate, string birthCountry, string iDType, string iDNumber, string passportIssueDate, string passportExpiryDate, string emailAddress, string mobileNumber, string mobileContractType, string workTelephoneCode, string workTelephoneNumber, string homeTelephoneNumber, string alternativeMobileNumber, string ethnicGroup, string educationLevel, string citizenshipCountry, string nationalityCountry, string residenceCountry, string maritalStatus, string marriageType, string marriageDate, string numberOfDependents, string homeLanguage, string correspondenceLanguage, string contactMethod, string employmentType, string occupation, string employerName, string employeeNumber, PhysicalAddress employmentAddress, decimal salaryDay, decimal basicSalary, decimal commission, decimal overTime, decimal otherIncome, string otherIncomeSource, decimal carAllowance, decimal otherAllowance, decimal taxPayments, decimal nettSalary, decimal loanRepayments, decimal vehicleRepayments, decimal insurancePayments, decimal municipalPayments, decimal bondRentPayments, decimal creditCardPayments, decimal furnitureAccountPayments, decimal clothingAccountPayments, decimal overdraftPayments, decimal telephonePayments, decimal transportCosts, decimal foodEntertainmentCosts, decimal educationCosts, decimal childMaintenance, decimal houseHoldExpenses, decimal otherPayments, decimal rentalIncome, string fundsSource, PhysicalAddress physicalAddress, PostalAddress postalAddress)
        {
            SalesReferenceNumber = salesReferenceNumber;
            Title = title;
            Initials = initials;
            FirstName = firstName;
            LastName = lastName;
            Gender = gender;
            BirthDate = birthDate;
            BirthCountry = birthCountry;
            IDType = iDType;
            IDNumber = iDNumber;
            PassportIssueDate = passportIssueDate;
            PassportExpiryDate = passportExpiryDate;
            EmailAddress = emailAddress;
            MobileNumber = mobileNumber;
            MobileContractType = mobileContractType;
            WorkTelephoneCode = workTelephoneCode;
            WorkTelephoneNumber = workTelephoneNumber;
            HomeTelephoneNumber = homeTelephoneNumber;
            AlternativeMobileNumber = alternativeMobileNumber;
            EthnicGroup = ethnicGroup;
            EducationLevel = educationLevel;
            CitizenshipCountry = citizenshipCountry;
            NationalityCountry = nationalityCountry;
            ResidenceCountry = residenceCountry;
            MaritalStatus = maritalStatus;
            MarriageType = marriageType;
            MarriageDate = marriageDate;
            NumberOfDependents = numberOfDependents;
            HomeLanguage = homeLanguage;
            CorrespondenceLanguage = correspondenceLanguage;
            ContactMethod = contactMethod;
            EmploymentType = employmentType;
            Occupation = occupation;
            EmployerName = employerName;
            EmployeeNumber = employeeNumber;
            EmploymentAddress = employmentAddress;
            SalaryDay = salaryDay;
            BasicSalary = basicSalary;
            Commission = commission;
            OverTime = overTime;
            OtherIncome = otherIncome;
            OtherIncomeSource = otherIncomeSource;
            CarAllowance = carAllowance;
            OtherAllowance = otherAllowance;
            TaxPayments = taxPayments;
            NettSalary = nettSalary;
            LoanRepayments = loanRepayments;
            VehicleRepayments = vehicleRepayments;
            InsurancePayments = insurancePayments;
            MunicipalPayments = municipalPayments;
            BondRentPayments = bondRentPayments;
            CreditCardPayments = creditCardPayments;
            FurnitureAccountPayments = furnitureAccountPayments;
            ClothingAccountPayments = clothingAccountPayments;
            OverdraftPayments = overdraftPayments;
            TelephonePayments = telephonePayments;
            TransportCosts = transportCosts;
            FoodEntertainmentCosts = foodEntertainmentCosts;
            EducationCosts = educationCosts;
            ChildMaintenance = childMaintenance;
            HouseHoldExpenses = houseHoldExpenses;
            OtherPayments = otherPayments;
            RentalIncome = rentalIncome;
            FundsSource = fundsSource;
            PhysicalAddress = physicalAddress;
            PostalAddress = postalAddress;
        }
    }
}