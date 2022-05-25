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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=LAPTOP-78MS55CN;Initial Catalog=SqlServer;Integrated Security=True"))
            {
                sqlCon.Open();
                string que = "SELECT COUNT(1) FROM std_details_tb WHERE Email=@Email AND Password=@Password";
                SqlCommand sqlcmd = new SqlCommand(que, sqlCon);
                sqlcmd.Parameters.AddWithValue("@Email",txtemail.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@Password",txtpass.Text);
                int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
                sqlcmd.ExecuteNonQuery();
                
                if(count == 1)
                {
                    Session["Email"] = txtemail.Text.Trim();
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    error.Text = "Incorrect Email or Password";
                }
                sqlCon.Close();

            }
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            clear();
        }
        void clear()
        {
            txtemail.Text = txtpass.Text = "";
            error.Text = "";

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reg.aspx");
        }
    }
}