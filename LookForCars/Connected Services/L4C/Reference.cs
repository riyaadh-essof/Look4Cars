﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LookForCars.L4C {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="L4C.ILookForCarsService")]
    public interface ILookForCarsService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/checkUser", ReplyAction="http://tempuri.org/ILookForCarsService/checkUserResponse")]
        bool checkUser(string email);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/checkUser", ReplyAction="http://tempuri.org/ILookForCarsService/checkUserResponse")]
        System.Threading.Tasks.Task<bool> checkUserAsync(string email);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/UserAuth", ReplyAction="http://tempuri.org/ILookForCarsService/UserAuthResponse")]
        LookForCars.L4C.UserAuthResponse UserAuth(LookForCars.L4C.UserAuthRequest request);
        
        // CODEGEN: Generating message contract since the operation has multiple return values.
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/UserAuth", ReplyAction="http://tempuri.org/ILookForCarsService/UserAuthResponse")]
        System.Threading.Tasks.Task<LookForCars.L4C.UserAuthResponse> UserAuthAsync(LookForCars.L4C.UserAuthRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/CreateUserAddress", ReplyAction="http://tempuri.org/ILookForCarsService/CreateUserAddressResponse")]
        int CreateUserAddress(int User_ID, string Line1, string Line2, string Suburb, string City, string Province, int PostalCode, string Type);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/CreateUserAddress", ReplyAction="http://tempuri.org/ILookForCarsService/CreateUserAddressResponse")]
        System.Threading.Tasks.Task<int> CreateUserAddressAsync(int User_ID, string Line1, string Line2, string Suburb, string City, string Province, int PostalCode, string Type);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/CreateUser", ReplyAction="http://tempuri.org/ILookForCarsService/CreateUserResponse")]
        int CreateUser(int FirstName, string LastName, string IDType, string IDNumber, string Email, string Cell, int Tel, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/CreateUser", ReplyAction="http://tempuri.org/ILookForCarsService/CreateUserResponse")]
        System.Threading.Tasks.Task<int> CreateUserAsync(int FirstName, string LastName, string IDType, string IDNumber, string Email, string Cell, int Tel, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/CreatePolicy", ReplyAction="http://tempuri.org/ILookForCarsService/CreatePolicyResponse")]
        int CreatePolicy(int UserID, string PolicyNumber, string Item_ID, string Make, string Model, string Derivative, int Year, string Image, string Status);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/CreatePolicy", ReplyAction="http://tempuri.org/ILookForCarsService/CreatePolicyResponse")]
        System.Threading.Tasks.Task<int> CreatePolicyAsync(int UserID, string PolicyNumber, string Item_ID, string Make, string Model, string Derivative, int Year, string Image, string Status);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/GetUserPolicies", ReplyAction="http://tempuri.org/ILookForCarsService/GetUserPoliciesResponse")]
        System.Data.DataTable GetUserPolicies(int UserID);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/GetUserPolicies", ReplyAction="http://tempuri.org/ILookForCarsService/GetUserPoliciesResponse")]
        System.Threading.Tasks.Task<System.Data.DataTable> GetUserPoliciesAsync(int UserID);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/GetUserPoliciesByStatus", ReplyAction="http://tempuri.org/ILookForCarsService/GetUserPoliciesByStatusResponse")]
        System.Data.DataTable GetUserPoliciesByStatus(int UserID, string status);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ILookForCarsService/GetUserPoliciesByStatus", ReplyAction="http://tempuri.org/ILookForCarsService/GetUserPoliciesByStatusResponse")]
        System.Threading.Tasks.Task<System.Data.DataTable> GetUserPoliciesByStatusAsync(int UserID, string status);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.MessageContractAttribute(WrapperName="UserAuth", WrapperNamespace="http://tempuri.org/", IsWrapped=true)]
    public partial class UserAuthRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=0)]
        public string username;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=1)]
        public string password;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=2)]
        public int id;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=3)]
        public string propic;
        
        public UserAuthRequest() {
        }
        
        public UserAuthRequest(string username, string password, int id, string propic) {
            this.username = username;
            this.password = password;
            this.id = id;
            this.propic = propic;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.MessageContractAttribute(WrapperName="UserAuthResponse", WrapperNamespace="http://tempuri.org/", IsWrapped=true)]
    public partial class UserAuthResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=0)]
        public bool UserAuthResult;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=1)]
        public int id;
        
        [System.ServiceModel.MessageBodyMemberAttribute(Namespace="http://tempuri.org/", Order=2)]
        public string propic;
        
        public UserAuthResponse() {
        }
        
        public UserAuthResponse(bool UserAuthResult, int id, string propic) {
            this.UserAuthResult = UserAuthResult;
            this.id = id;
            this.propic = propic;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ILookForCarsServiceChannel : LookForCars.L4C.ILookForCarsService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class LookForCarsServiceClient : System.ServiceModel.ClientBase<LookForCars.L4C.ILookForCarsService>, LookForCars.L4C.ILookForCarsService {
        
        public LookForCarsServiceClient() {
        }
        
        public LookForCarsServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public LookForCarsServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public LookForCarsServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public LookForCarsServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool checkUser(string email) {
            return base.Channel.checkUser(email);
        }
        
        public System.Threading.Tasks.Task<bool> checkUserAsync(string email) {
            return base.Channel.checkUserAsync(email);
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        LookForCars.L4C.UserAuthResponse LookForCars.L4C.ILookForCarsService.UserAuth(LookForCars.L4C.UserAuthRequest request) {
            return base.Channel.UserAuth(request);
        }
        
        public bool UserAuth(string username, string password, ref int id, ref string propic) {
            LookForCars.L4C.UserAuthRequest inValue = new LookForCars.L4C.UserAuthRequest();
            inValue.username = username;
            inValue.password = password;
            inValue.id = id;
            inValue.propic = propic;
            LookForCars.L4C.UserAuthResponse retVal = ((LookForCars.L4C.ILookForCarsService)(this)).UserAuth(inValue);
            id = retVal.id;
            propic = retVal.propic;
            return retVal.UserAuthResult;
        }
        
        public System.Threading.Tasks.Task<LookForCars.L4C.UserAuthResponse> UserAuthAsync(LookForCars.L4C.UserAuthRequest request) {
            return base.Channel.UserAuthAsync(request);
        }
        
        public int CreateUserAddress(int User_ID, string Line1, string Line2, string Suburb, string City, string Province, int PostalCode, string Type) {
            return base.Channel.CreateUserAddress(User_ID, Line1, Line2, Suburb, City, Province, PostalCode, Type);
        }
        
        public System.Threading.Tasks.Task<int> CreateUserAddressAsync(int User_ID, string Line1, string Line2, string Suburb, string City, string Province, int PostalCode, string Type) {
            return base.Channel.CreateUserAddressAsync(User_ID, Line1, Line2, Suburb, City, Province, PostalCode, Type);
        }
        
        public int CreateUser(int FirstName, string LastName, string IDType, string IDNumber, string Email, string Cell, int Tel, string password) {
            return base.Channel.CreateUser(FirstName, LastName, IDType, IDNumber, Email, Cell, Tel, password);
        }
        
        public System.Threading.Tasks.Task<int> CreateUserAsync(int FirstName, string LastName, string IDType, string IDNumber, string Email, string Cell, int Tel, string password) {
            return base.Channel.CreateUserAsync(FirstName, LastName, IDType, IDNumber, Email, Cell, Tel, password);
        }
        
        public int CreatePolicy(int UserID, string PolicyNumber, string Item_ID, string Make, string Model, string Derivative, int Year, string Image, string Status) {
            return base.Channel.CreatePolicy(UserID, PolicyNumber, Item_ID, Make, Model, Derivative, Year, Image, Status);
        }
        
        public System.Threading.Tasks.Task<int> CreatePolicyAsync(int UserID, string PolicyNumber, string Item_ID, string Make, string Model, string Derivative, int Year, string Image, string Status) {
            return base.Channel.CreatePolicyAsync(UserID, PolicyNumber, Item_ID, Make, Model, Derivative, Year, Image, Status);
        }
        
        public System.Data.DataTable GetUserPolicies(int UserID) {
            return base.Channel.GetUserPolicies(UserID);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataTable> GetUserPoliciesAsync(int UserID) {
            return base.Channel.GetUserPoliciesAsync(UserID);
        }
        
        public System.Data.DataTable GetUserPoliciesByStatus(int UserID, string status) {
            return base.Channel.GetUserPoliciesByStatus(UserID, status);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataTable> GetUserPoliciesByStatusAsync(int UserID, string status) {
            return base.Channel.GetUserPoliciesByStatusAsync(UserID, status);
        }
    }
}