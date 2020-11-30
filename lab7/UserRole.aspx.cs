using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class UserRole : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            users user = new users();

            user.name = DropDownList1.SelectedValue.ToString();

            if (DropDownList2.SelectedValue.ToString() == "admin")

            {
                user.role = "admin";

            }
            else if(DropDownList2.SelectedValue.ToString() == "customer")
            {

                user.role = "customer";
            }
            else
            {

                user.role = "guest";
            }

            user.UpgradeUser(user.name, user.role);
            Label3.Visible = true;
            Label3.Text = "Role Changed";



        }
}
}