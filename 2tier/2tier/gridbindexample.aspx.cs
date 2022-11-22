using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Http.Headers;
using System.Web.UI.WebControls;


namespace _2tier
{
    public partial class gridbindexample : System.Web.UI.Page
    {
        Dboperation db=new Dboperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GridView1.DataSource = db.exedataset("SELECT *FROM tbl_employee");
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex=e.NewEditIndex;//changing grid view to edit mode and set edit index as from event
            GridView1.DataSource = db.exedataset("select * from tbl_employee");//take value from table
            GridView1.DataBind();//set or bind data to grid view
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            string Employee_id = GridView1.DataKeys[e.RowIndex].Value.ToString();

            TextBox txtname = new TextBox();

            txtname = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];

            TextBox txtemail = new TextBox();
            txtemail = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];

            TextBox txtphone = new TextBox();
            txtphone = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];

            TextBox txtage = new TextBox();
            txtage = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];

            db.exenonquery("update tbl_employee set Name='" + txtname.Text + "',Email='" + txtemail.Text + "',Phone='" + txtphone.Text + "',Age='"+txtage.Text+"' where Employee_id="+Employee_id+"");
            
           
            GridView1.EditIndex = -1;
            GridView1.DataSource = db.exedataset("Select * from tbl_employee");
            GridView1.DataBind();


        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            GridView1.EditIndex = -1;
            GridView1.DataSource = db.exedataset("Select * from tbl_employee");
            GridView1.DataBind();
        }

        
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string _id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("delete from tbl_employee where Employee_id='" + _id + "'");
            GridView1.DataSource = db.exedataset("Select * from tbl_employee");
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            HtmlInputCheckBox chk;
            foreach (GridViewRow dr in GridView1.Rows)
            {
                chk = (HtmlInputCheckBox)dr.FindControl("ch");
                if (chk.Checked)
                {
                    db.exenonquery("delete from tbl_employee where Employee_id=" + chk.Value + "");

                }
            }
            db.fillgrid("Select * from tbl_employee", GridView1);

        }

       
    }
}