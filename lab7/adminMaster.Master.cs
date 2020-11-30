using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab7
{
    public partial class adminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"].ToString() == "customer")
            {
                Response.Redirect("~/error.aspx");
            }
            else if(Session["role"].ToString() == "guest")
                {
                    Response.Redirect("~/error.aspx");
                }





        }
    }
}