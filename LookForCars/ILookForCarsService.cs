﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace LookForCars
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ILookForCarsService" in both code and config file together.
    [ServiceContract]
    public interface ILookForCarsService
    {
        [OperationContract]
        bool checkUser(string email);

        [OperationContract]
        bool UserAuth(string username, string password, ref int id, ref string propic);

        [OperationContract]
        int CreateUserAddress(int User_ID, string Line1, string Line2, string Suburb, string City, string Province, int PostalCode, string Type);

        [OperationContract]
        int CreateUser(int FirstName, string LastName, string IDType, string IDNumber, string Email, string Cell, int Tel, string password);

        [OperationContract]
        int CreatePolicy(int UserID, string PolicyNumber, string Item_ID, string Make, string Model, string Derivative, int Year, string Image, string Status);

        [OperationContract]
        DataTable GetUserPolicies(int UserID);

        [OperationContract]
        DataTable GetUserPoliciesByStatus(int UserID, string status);


        
    }
}
