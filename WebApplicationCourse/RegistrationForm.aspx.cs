using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationCourse
{
    public partial class RegistrationForm : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using(SqlConnection con = new SqlConnection("Server=MELIH\\SQLEXPRESS;Database=Assignment4;Trusted_Connection=True"))
            {
                SqlCommand command = new SqlCommand("INSERT INTO Users (Email,Password,FirstName,LastName,Gender) " +
                    "VALUES (@Email,@Password,@FirstName,@LastName,@Gender)", con);
                command.Parameters.AddWithValue("@Email", txtEmail.Text);
                command.Parameters.AddWithValue("@Password", txtPassword.Text);
                command.Parameters.AddWithValue("@FirstName", txtName.Text);
                command.Parameters.AddWithValue("@LastName", txtSurname.Text);
                if (btnMale.Checked)
                {
                    command.Parameters.AddWithValue("@Gender", 1);
                }
                else if(btnFemale.Checked)
                {
                    command.Parameters.AddWithValue("@Gender", 0);
                }
                try
                {
                    con.Open();
                    int recordsAffected = command.ExecuteNonQuery();
                }
                catch(SqlException error)
                {
                    throw new Exception(error.Message);
                }
                finally
                {
                    con.Close();
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}