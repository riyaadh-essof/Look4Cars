using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace LookForCars
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "LookForCarsService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select LookForCarsService.svc or LookForCarsService.svc.cs at the Solution Explorer and start debugging.
    public class LookForCarsService : ILookForCarsService
    {
        MySqlConnection connection = new MySqlConnection("server=dedi106.jnb2.host-h.net;Port=3306;user id=db_tester; password='Bankai_2019';database=Dev_DB; default command timeout=40;");
        public bool checkUser(string email)
        {
            MySqlCommand commandClient = new MySqlCommand("Select * From L4C_Users Where Email=@email", connection);
            commandClient.Connection.Open();
            commandClient.Parameters.AddWithValue("@email", email);
            MySqlDataReader reader = commandClient.ExecuteReader();
            if (reader.Read())
            {
                reader.Dispose();
                reader.Close();
                connection.Close();
                return true;
            }
            else
            {
                reader.Dispose();
                reader.Close();
                return false;
            }
        }

        public bool UserAuth(string username, string password, ref int id, ref string propic, ref string firstname, ref string lastname)
        {
            MySqlCommand commandAdmin = new MySqlCommand("Select * From L4C_Users Where Email=@username AND Password=@pass AND Status=@status", connection);
            commandAdmin.Connection.Open();
            commandAdmin.Parameters.AddWithValue("@username", username);
            commandAdmin.Parameters.AddWithValue("@pass", password);
            commandAdmin.Parameters.AddWithValue("@status", "Active");

            MySqlDataReader reader = commandAdmin.ExecuteReader();

            if (reader.Read())
            {
                username = reader["Email"].ToString();
                id = int.Parse(reader["ID"].ToString());
                propic = reader["ProfileImage"].ToString();
                firstname = reader["FirstName"].ToString();
                lastname = reader["LastName"].ToString();
                reader.Dispose();
                commandAdmin.Connection.Close();
                return true;

            }
            else
            {
                reader.Dispose();
                commandAdmin.Connection.Close();
                return false;
            }

        }

        public int CreateUserAddress(int User_ID, string Line1, string Line2, string Suburb, string City, string Province, int PostalCode, string Type)
        {
            MySqlCommand command = new MySqlCommand("INSERT INTO `L4C_Address`( `Line1`, `Line2`, `Suburb`, `City`, `Province`, `PostalCode`, `Type`, `User_ID`) VALUES (@Line1, @Line2, @Suburb, @City, @Province, @PostalCode, @Type, @User_ID); Select LAST_INSERT_ID()", connection);
            command.Connection.Open();
            command.Parameters.AddWithValue("@Line1", Line1);
            command.Parameters.AddWithValue("@Line2", Line2);
            command.Parameters.AddWithValue("@Suburb", Suburb);
            command.Parameters.AddWithValue("@City", City);
            command.Parameters.AddWithValue("@Province", Province);
            command.Parameters.AddWithValue("@PostalCode", PostalCode);
            command.Parameters.AddWithValue("@Type", Type);
            command.Parameters.AddWithValue("@User_ID", User_ID);

            int id = Convert.ToInt32(command.ExecuteScalar());
            command.Connection.Close();
            command.Dispose();
            return id;
        }

        public int CreateUser(string FirstName, string LastName, string IDType, string IDNumber, string Email, string Cell, string Tel, string Password)
        {
            MySqlCommand command = new MySqlCommand("INSERT INTO `L4C_Users`(`FirstName`, `LastName`, `IDType`, `IDNumber`, `Email`, `Cell`, `Tel`, `Password`) VALUES (@FirstName, @LastName, @IDType, @IDNumber, @Email, @Cell, @Tel, @Password); Select LAST_INSERT_ID()", connection);
            command.Connection.Open();
            command.Parameters.AddWithValue("@FirstName", FirstName);
            command.Parameters.AddWithValue("@LastName", LastName);
            command.Parameters.AddWithValue("@IDType", IDType);
            command.Parameters.AddWithValue("@IDNumber", IDNumber);
            command.Parameters.AddWithValue("@Email", Email);
            command.Parameters.AddWithValue("@Cell", Cell);
            command.Parameters.AddWithValue("@Tel", Tel);
            command.Parameters.AddWithValue("@Password", Password);

            int id = Convert.ToInt32(command.ExecuteScalar());
            command.Connection.Close();
            command.Dispose();
            return id;
        }

        public int CreatePolicy(int UserID, string PolicyNumber, string Status)
        {
            MySqlCommand command = new MySqlCommand("INSERT INTO `L4C_Policies`(`UserID`, `PolicyNumber`, `Status`) VALUES (@UserID, @PolicyNumber, @Status); Select LAST_INSERT_ID()", connection);
            command.Connection.Open();
            command.Parameters.AddWithValue("@UserID", UserID);
            command.Parameters.AddWithValue("@PolicyNumber", PolicyNumber);
            command.Parameters.AddWithValue("@Status", Status);

            int id = Convert.ToInt32(command.ExecuteScalar());
            command.Connection.Close();
            command.Dispose();
            return id;
        }

        public void UpdatePolicy(int id, string PolicyNumber, string Status)
        {
            MySqlCommand command = new MySqlCommand("UPDATE `L4C_Policies` SET PolicyNumber=@PolicyNumber, Status=@Status WHERE ID=@ID", connection);
            command.Connection.Open();
            command.Parameters.AddWithValue("@ID", id);
            command.Parameters.AddWithValue("@PolicyNumber", PolicyNumber);
            command.Parameters.AddWithValue("@Status", Status);
            command.ExecuteNonQuery();
            command.Connection.Close();
            command.Dispose();
        }


        public int CreateVehicle(int UserID, string PolicyNumber, string Item_ID, string Make, string Model, string Derivative, int Year, string Image, string Status)
        {
            MySqlCommand command = new MySqlCommand("INSERT INTO `L4C_Vehicles`(`UserID`, `PolicyNumber`, `VehicleID`, `Make`, `Model`, `Derivative`, `Year`, `Image`, `Status`) VALUES (@UserID, @PolicyNumber, @Item_ID, @Make, @Model, @Derivative, @Year, @Image, @Status); Select LAST_INSERT_ID()", connection);
            command.Connection.Open();
            command.Parameters.AddWithValue("@UserID", UserID);
            command.Parameters.AddWithValue("@PolicyNumber", PolicyNumber);
            command.Parameters.AddWithValue("@Item_ID", Item_ID);
            command.Parameters.AddWithValue("@Make", Make);
            command.Parameters.AddWithValue("@Model", Model);
            command.Parameters.AddWithValue("@Derivative", Derivative);
            command.Parameters.AddWithValue("@Year", Year);
            command.Parameters.AddWithValue("@Image", Image);
            command.Parameters.AddWithValue("@Status", Status);

            int id = Convert.ToInt32(command.ExecuteScalar());
            command.Connection.Close();
            command.Dispose();
            return id;
        }
        public DataTable GetUserPolicies(int UserID)
        {
            MySqlCommand command = new MySqlCommand("Select * From L4C_Policies Where UserID=@ID", connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(command);
            command.Connection.Open();
            command.Parameters.AddWithValue("@ID", UserID);
            DataTable dt = new DataTable();
            dt.TableName = "Policies";
            adapter.Fill(dt);
            command.Connection.Close();
            command.Dispose();
            return dt;
        }

        public DataTable GetUserPoliciesByStatus(int UserID, string status)
        {
            MySqlCommand command = new MySqlCommand("Select * From L4C_Policies Where UserID=@ID AND Status=@Status", connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(command);
            command.Connection.Open();
            command.Parameters.AddWithValue("@ID", UserID);
            command.Parameters.AddWithValue("@Status", status);
            DataTable dt = new DataTable();
            dt.TableName = "Policies";
            adapter.Fill(dt);
            command.Connection.Close();
            command.Dispose();
            return dt;
        }

        public DataTable GetVehicleDetails(string PolicyNumber)
        {
            MySqlCommand command = new MySqlCommand("Select * From L4C_Vehicles Where PolicyNumber=@PolicyNumber", connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(command);
            command.Connection.Open();
            command.Parameters.AddWithValue("@PolicyNumber", PolicyNumber);
            DataTable dt = new DataTable();
            dt.TableName = "Vehicle Details";
            adapter.Fill(dt);
            command.Connection.Close();
            command.Dispose();
            return dt;
        }
    }
}
