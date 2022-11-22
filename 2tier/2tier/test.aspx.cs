using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2tier
{
   
    public partial class test : System.Web.UI.Page
    {
        Dboperation db=new Dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string _id=Request.QueryString["Employee_id"].ToString();
                DataTable dt = db.exedatatable("Select * from tbl_employee where Employee_id='" + _id + "'");
                Label1.Text = dt.Rows[0]["Name"].ToString();
                Label2.Text = dt.Rows[0]["Email"].ToString();
                Label3.Text = dt.Rows[0]["Phone"].ToString();
                Label5.Text = dt.Rows[0]["Age"].ToString();
            }

        }
    }
}
