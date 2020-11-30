using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace lab7
{
    public partial class deleteItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection("Data Source= .\\sql19; Initial Catalog = ComputerStore; Persist Security Info = True; User ID = ProjectUser; Password = 123");
                String sql;
                sql = "delete from product where Id ='" + TextBox1.Text + "'";
                SqlCommand comm = new SqlCommand(sql, con);
                try
                {
                    con.Open();
                    comm.ExecuteNonQuery();
                    TextBox1.Text = "";
                    Label1.Visible = true;
                    Label1.Text = "Item deleted";

                }
                catch
                {
                    Label1.Visible = true;
                    Label1.Text = "Item not found"; }
                finally { con.Close(); }
            }
        }
    }
}