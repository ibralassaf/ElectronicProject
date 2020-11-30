using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace lab7
{
    public partial class BuyItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source= .\\sql19; Initial Catalog = ComputerStore; Persist Security Info = True; User ID = ProjectUser; Password = 123");

            var index = int.Parse(e.CommandArgument.ToString());
            var selectedRow = GridView1.Rows[index];
            int Id = Convert.ToInt32(selectedRow.Cells[0].Text);




            DateTime dd = (DateTime)DateTime.Now;
            var time = dd.ToString("yyyy-MM-dd");

            SqlCommand c = new SqlCommand("INSERT INTO [order](itemid,username,Buydate) VALUES('" + Id + "','" + Session["name"].ToString() + "','" + time + "')", con);

            SqlCommand c1 = new SqlCommand("update product set quantity = quantity-1 where id=" + Id + "", con);
            int price = Convert.ToInt32(selectedRow.Cells[2].Text);

            Label8.Visible = true;
            Label8.Text = "You Have Bought " + selectedRow.Cells[1].Text + " For " + price;


            con.Open();
            c.ExecuteNonQuery();
            c1.ExecuteNonQuery();
            con.Close();

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
    }
}