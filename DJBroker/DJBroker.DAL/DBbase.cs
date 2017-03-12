using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DJBroker.DAL
{
    public class DBbase
    {
        protected static SqlConnection con;
        private static string server;
        private static string database;
        private static string uid;
        private static string password;

        protected static void Connect()
        {
            try
            {
                server = @".\SQLEXPRESS2008R2";
                database = "DJBrokerCar";
                uid = "sa";
                password = "admin2000";

                string connectionString;
                connectionString = "SERVER=" + server + ";" + "DATABASE=" +
                database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";

                con = new SqlConnection(connectionString);
                con.Open();
            }
            catch (Exception ex) 
            {
                throw ex;
            }
        }
    }
}
