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

#if DEBUG
                server = @".\SQLEXPRESS2008R2";
                database = "DJBrokerCar";
                uid = "sa";
                password = "Admin2000";
#else
                server = @"203.146.129.248";
                database = "DJBrokerCar";
                uid = "sa";
                password = "djB8888";
#endif
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
                if (con.State == ConnectionState.Open)
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
