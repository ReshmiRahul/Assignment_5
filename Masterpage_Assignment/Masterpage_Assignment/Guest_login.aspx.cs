using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masterpage_Assignment
{
    public partial class Guest_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (user.Text == "Admin" && pass.Text == "Admin1")
            {
                Response.Redirect("~/Admin/Admin_login.aspx");
            }
            else
            {
                ModelState.AddModelError("", "Incorrect password or username");
            }
            
        }
    }
}