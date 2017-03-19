using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

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
                server = @".\SQLSERVER2008R2";
                database = "DJBrokerCar";
                uid = "sa";
                password = "1234";

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

        protected static void DisConnect()
        {
            try
            {
                if (con != null && con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
