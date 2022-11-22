using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masterpage_Assignment
{
    public partial class student_confirmation : System.Web.UI.Page
    {
        Dboperation db = new Dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select s.*,l.* from student_registration s inner join login l on s.lid=l.lid where l.status='Not Confirmed'", GridView1);

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = db.exedataset("select * from login where status='Not Confirmed'");
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource=db.exedataset("select * from login where status='Not Confirmed'");
            GridView1.DataBind();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string s = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("update login set status='Confirmed' where lid=" + s + "");
            //db.fillgrid("select s.*,l.* from student_registration s inner join login l on s.lid=l.lid where l.status='Not Confirmed'", GridView1);
            GridView1.DataSource=db.exedataset("select * from login where status='Not Confirmed'");
            GridView1.DataBind();
        }

       
    }

}