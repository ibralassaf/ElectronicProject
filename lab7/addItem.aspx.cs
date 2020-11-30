using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace lab7
{
    public partial class addItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            String sql;
            int OriginalPrice = 0;
            Boolean WithDiscount = true;
            Boolean NoDiscount = true;

            if (RadioButton1.Checked)
            {
                int DisPrice = (Convert.ToInt32(TextBox3.Text) * 50) / 100;
                OriginalPrice = DisPrice;
                WithDiscount = true;
                NoDiscount = false;

            }
            else
            {
                OriginalPrice = Convert.ToInt32(TextBox3.Text);
                WithDiscount = false;
                NoDiscount = true;


            }


            SqlConnection con = new SqlConnection("Data Source= .\\sql19; Initial Catalog = ComputerStore; Persist Security Info = True; User ID = ProjectUser; Password = 123");
            sql = "insert into product(name,price,quantity,category,WithDiscount,NoDiscount) values ('" + TextBox2.Text + "','" + OriginalPrice + "','" + TextBox4.Text + "','" + ListBox1.SelectedValue + "','" + WithDiscount + "','" + NoDiscount + "')";

            SqlCommand comm = new SqlCommand(sql, con);

            try
            {
                con.Open();
                comm.ExecuteNonQuery();
                con.Close();
                Label1.Visible = true;
                Label1.Text = "Item Inserted";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                ListBox1.ClearSelection();
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;

            }
            catch
            {
                Label1.Visible = true;
                Label1.Text = "something went wrong nothing was inserted";
            }
            finally
            { con.Close(); }
        }

    }
}
