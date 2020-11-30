using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project
{
    public partial class UserControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source= .\\sql19; Initial Catalog = ComputerStore; Persist Security Info = True; User ID = ProjectUser; Password = 123");
            String sql;
            sql = "SELECT * FROM userAccount where name ='" + DropDownList2.SelectedValue +"' ";
            SqlCommand comm = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();


            if (reader.Read())
            {
                TextBox1.Text = (string)reader["name"];
                TextBox2.Text = Convert.ToString(reader["password"]);
                DropDownList1.Text = (string)reader["role"];
                Label4.Visible = true;
                Label4.Text = "User Selected";
            }
            else
            {
                Label4.Visible = true;
                Label4.Text = "This Name Doesn't Exist";
            }
            reader.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            users user = new users();
            user.name = TextBox1.Text;
            user.password = TextBox2.Text;
            user.role = DropDownList1.SelectedValue;
            Label4.Visible = true;
            Label4.Text = user.ChangeUserInfo(user.name, user.password, user.role);
            TextBox1.Text = "";
            TextBox2.Text = "";
            DropDownList1.ClearSelection();
        }
    }
}