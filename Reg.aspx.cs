using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace RegLogin
{
    public partial class Reg : System.Web.UI.Page
    {
        string connstring = @"Data Source=LAPTOP-78MS55CN;Initial Catalog=SqlServer;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                clear();
                LinkButton1.Visible=false;
            }
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {

            clear();
        }
        void clear()
        {
            name.Text = email.Text = password.Text = repassword.Text = address.Text = phone.Text = dob.Text = "";
            hfuserid.Value = "";
            error.Text = success.Text = "";

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (name.Text == "" || password.Text == "" || email.Text == "" || repassword.Text == "")
            {
                error.Text = "Enter username,passwords and email";
            }
            else if (password.Text != repassword.Text)
            {
                error.Text = "Password do not match";
            }
            else
            {
                using (SqlConnection sqlcon = new SqlConnection(connstring))
                {
                    sqlcon.Open();
                    SqlCommand sqlcmd = new SqlCommand("UserAdd", sqlcon);
                    sqlcmd.CommandType = CommandType.StoredProcedure;
                    sqlcmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfuserid.Value == "" ? "0" : hfuserid.Value));
                    sqlcmd.Parameters.AddWithValue("@Name", name.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@Email", email.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@Password", password.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@Address", address.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@DOB", dob.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@Gender", gender.SelectedValue);
                    sqlcmd.Parameters.AddWithValue("@Phone", phone.Text.Trim());
                    sqlcmd.ExecuteNonQuery();
                    sqlcon.Close();
                    clear();
                    success.Text = "Registered!";
                    LinkButton1.Visible = true;
                }
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}