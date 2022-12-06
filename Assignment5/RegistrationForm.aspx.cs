using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationCourse.Models;

namespace WebApplicationCourse
{
    public partial class RegistrationForm : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int InsertCustomer()
        {
            int recordsAffected = 0; 
            Models.User user = new User();

            user.FirstName = txtFirstName.Text;
            user.LastName = txtLastName.Text;
            user.Email = txtEmail.Text;
            user.Password = txtPassword.Text;

            using (SqlConnection con = new SqlConnection("Server=MELIH\\SQLEXPRESS;Database=Northwind;Trusted_Connection=True"))
            {
                SqlCommand command = new SqlCommand("INSERT INTO Users (FirstName,LastName,Email,Password)" +
                    "VALUES (@FirstName,@LastName,@Email,@Password)", con);
                command.Parameters.AddWithValue("@FirstName", user.FirstName);
                command.Parameters.AddWithValue("@LastName", user.LastName);
                command.Parameters.AddWithValue("@Email", user.Email);
                command.Parameters.AddWithValue("@Password", user.Password);
                

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

        
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            var result = InsertCustomer();

            if (result > 0)
            {
                resultTextBox.Text = "Sign up successful!";
            }
            else
            {
                resultTextBox.Text = "Sign up fail";
            }
        }
    }
}