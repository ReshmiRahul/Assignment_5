using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Masterpage_Assignment
{
    public partial class Faculty_Register : System.Web.UI.Page
    {
        Dboperation db = new Dboperation();
        string s;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 1; i <= 31; i++)
                {
                    ddday.Items.Add(i.ToString());
                }
                for (int i = 1980; i <= 2010; i++)
                {
                    ddyear.Items.Add(i.ToString());
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            object ob = db.exescalar("insert into login values('" + user.Text + "','" + pass.Text + "',' faculty','Not Confirmed');select @@IDENTITY");
            db.dbclose();
            if (ob.ToString() != null)
            {
                string dob = ddday.SelectedValue + "/" + ddmonth.SelectedValue + "/" + ddyear.SelectedValue;
                if (RadioButton1.Checked == true)
                {
                    s = "Male";
                }
                else if (RadioButton2.Checked == true)
                {
                    s = "Female";
                }
                else
                {
                    s = "Others";
                }

                int i = db.exenonquery("insert into faculty_registration values('" + txtname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + s + "','" + dwcourse.Text + "','" + dob + "','" + state.Text + "','" + user.Text + "','" + pass.Text + "'," + ob + ")");
                // cmd.Connection = con;

                //con.Open();

                //int i = cmd.ExecuteNonQuery();
                //con.Close();
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
}