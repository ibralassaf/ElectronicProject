using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace lab7
{
    public partial class selectItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source= .\\sql19; Initial Catalog = ComputerStore; Persist Security Info = True; User ID = ProjectUser; Password = 123");
            String sql;
            sql = "SELECT * FROM product where name ='" + TextBox2.Text + "' ";
            SqlCommand comm = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();


            if (reader.Read())
            {
                TextBox1.Text = Convert.ToString((int)reader["Id"]);
                TextBox3.Text = Convert.ToString((int)reader["price"]);
                TextBox4.Text = Convert.ToString((int)reader["quantity"]);
                RadioButton2.Checked = (Boolean)reader["NoDiscount"];
                RadioButton1.Checked = (Boolean)reader["WithDiscount"];
                ListBox1.SelectedValue = (string)reader["category"];
                Label1.Visible = true;
                Label1.Text = "Item Selected";
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                ListBox1.ClearSelection();
                Label1.Visible = true;
                Label1.Text = "This name doesn't exist";
            }
            reader.Close();

        }
    }
}