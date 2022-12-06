using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationCourse
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            var result = getCustomer();
                if (result == 0)
                {
                    Response.Redirect("RegistrationForm.aspx");
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            

        }


        private int getCustomer()
        {
            int recordsAffected = 0;

            using (SqlConnection con = new SqlConnection("Server=MELIH\\SQLEXPRESS;Database=Northwind;Trusted_Connection=True"))
            {
                SqlCommand command= new SqlCommand($"SELECT COUNT(*) FROM Users as u WHERE u.Email = '{txtEmail.Text}'", con);
                

                try
                {
                    con.Open();
                    recordsAffected = (int) command.ExecuteScalar();
                }
                catch (SqlException)
                {
                }
                finally
                {
                    con.Close();
                }
            }

            return recordsAffected;
        }
    }
}