using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class UserAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            users user = new users();

            user.name = DropDownList1.SelectedValue.ToString();
            user.name = TextBox1.Text;
            user.password = TextBox2.Text;
            user.role = DropDownList1.SelectedValue;


            user.AddUser(user.name, user.password, user.role);
            Label4.Visible = true;
            Label4.Text = "Account Created";
        }
    }
}