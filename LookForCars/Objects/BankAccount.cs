using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Look4Cars.Objects
{
    public class BankAccount
    {
        public string AccountType { get; set; }
        public string CreditCardType { get; set; }
        public string BankBranchCode { get; set; }
        public string AccountNumber { get; set; }
        public string AccountHolderName { get; set; }

        public BankAccount(string accountType, string creditCardType, string bankBranchCode, string accountNumber, string accountHolderName)
        {
            AccountType = accountType;
            CreditCardType = creditCardType;
            BankBranchCode = bankBranchCode;
            AccountNumber = accountNumber;
            AccountHolderName = accountHolderName;
        }
    }
}