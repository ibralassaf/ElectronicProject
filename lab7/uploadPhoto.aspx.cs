using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace lab7
{
    public partial class uploadPhoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.FileName);
                Label1.Visible = true;
                Label1.Text = "File Uploaded";
                SqlConnection con = new SqlConnection("Data Source= .\\sql19; Initial Catalog = ComputerStore; Persist Security Info = True; User ID = ProjectUser; Password = 123");
                con.Open();
                con.Close();

            }
            else
            {
                Label1.Text = "Please Select File First";
            }
        }
    }
}