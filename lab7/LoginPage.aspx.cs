using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source= .\\sql19; Initial Catalog = ComputerStore; Persist Security Info = True; User ID = ProjectUser; Password = 123");
            SqlCommand cmd = new SqlCommand("select * from userAccount where name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);

            con.Open();
            SqlDataReader datareader = cmd.ExecuteReader();

            while (datareader.Read())
            {
                if (datareader.HasRows)
                {
                    Session["role"] = datareader["role"].ToString();
                    Session["Image"] = datareader["ImageUrl"].ToString();
                    Session["name"] = datareader["name"].ToString();
                    Session.Timeout = 9999;
                    if (Session["role"].ToString() == "customer")
                    {
                        Response.Redirect("~/customerDefault.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/adminDefault.aspx");

                    }
                }

            }
            Label1.Visible = true;
            Label1.Text = "username or password isn't valid";
            con.Close();

        }
    }
}