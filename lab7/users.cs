using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Drawing;

namespace Project
{
    public class users
    {
        public String name;
        public String password;
        public String role;
        public String RegistDate;
        public String ImageUrl;

        public void AddUser(String name, String password,String role)

        {

            SqlConnection conn = new SqlConnection("Data Source= .\\sql19; Initial Catalog = ComputerStore; Persist Security Info = True; User ID = ProjectUser; Password = 123");

            String sql = "insert into userAccount (name,password,role) VALUES('" + name + "','" + password + "','" + role + "')";

            SqlCommand comm = new SqlCommand(sql, conn);
            try 

            {

                conn.Open();
                comm.ExecuteNonQuery();


            }

            finally

            { conn.Close(); }

        }
        public String ChangeUserInfo(String name, String password, String role)

        {

            SqlConnection conn = new SqlConnection("Data Source= .\\sql19; Initial Catalog = ComputerStore; Persist Security Info = True; User ID = ProjectUser; Password = 123");
            String sql = "update userAccount set name ='" + name + "', password = '" + password + "' ,role = '" + role + "' where name ='" + name + "'";


            SqlCommand comm = new SqlCommand(sql, conn);

            try

            {

                conn.Open();
                comm.ExecuteNonQuery();
                return "User Edited";

            }

            finally

            { conn.Close(); }

        }
        public void UpgradeUser(String name, String role)
        {
            SqlConnection conn = new SqlConnection("Data Source= .\\sql19; Initial Catalog = ComputerStore; Persist Security Info = True; User ID = ProjectUser; Password = 123");

            String sql = "update userAccount set role ='" + role + "' where name = '" + name + "'";
            SqlCommand comm = new SqlCommand(sql, conn);
            try

            {

                conn.Open();

                comm.ExecuteNonQuery();
            }
            catch
            {

            }

            finally

            {
                conn.Close();

            }


            }

        }
    }


 