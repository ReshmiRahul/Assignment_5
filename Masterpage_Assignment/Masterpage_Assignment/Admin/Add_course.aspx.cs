using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Masterpage_Assignment
{
    public partial class Add_course : System.Web.UI.Page
    {
        Dboperation db = new Dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            int i = db.exenonquery("insert into course values('" + course.Text + "')");
            db.dbclose();
            if (i == 1)
            {
                Response.Write("Success");
            }
            else
            {
                Response.Write("Failed");
            }

        }
    }
}