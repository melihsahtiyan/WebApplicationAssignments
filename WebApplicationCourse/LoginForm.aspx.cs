using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationCourse.DataAccess;
using WebApplicationCourse.DataAccess.Abstract;
using WebApplicationCourse.DbConnection;
using WebApplicationCourse.Entities;

namespace WebApplicationCourse
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            var result = getUser();
                if (result == null)
                {
                    Response.Redirect("RegistrationForm.aspx");
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            

        }


        private int getUser()
        {
            int recordsAffected = 0;

            using (SqlConnection con = new SqlConnection("Server=MELIH\\SQLEXPRESS;Database=Northwind;Trusted_Connection=True"))
            {
                SqlCommand command = new SqlCommand("SELECT c.CompanyName, c.ContactName FROM Customers as c WHERE c.CusomerID = @CustomerID", con);
                
                command.Parameters.AddWithValue("@CustomerID", txtCustomerId.Text);
                

                try
                {
                    con.Open();
                    recordsAffected = command.ExecuteNonQuery();
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