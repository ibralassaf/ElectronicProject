using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace lab7
{
    public partial class editItem : System.Web.UI.Page
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
                Label8.Visible = false;
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source= .\\sql19; Initial Catalog = ComputerStore; Persist Security Info = True; User ID = ProjectUser; Password = 123");
            string sql;
            sql = "update product set name ='" + TextBox2.Text + "', price = '" + TextBox3.Text + "' ,WithDiscount = '" + RadioButton1.Checked + "',NoDiscount = '" + RadioButton2.Checked + "', quantity = '" + TextBox4.Text + "', category = '" + ListBox1.SelectedValue + "' where name ='" + TextBox2.Text + "'";
            SqlCommand comm = new SqlCommand(sql, conn);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                ListBox1.ClearSelection();
                RadioButton2.Checked = false;
                RadioButton1.Checked = false;

                Label1.Visible = false;
                Label8.Visible = true;
                Label8.Text = "Item Updated";

            }
            catch
            {
                Label1.Visible = false;
                Label8.Visible = true;
                Label8.Text = "No Name Found";
            }
            finally
            { conn.Close(); }
        }
    }
}