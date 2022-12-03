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

        private int InsertCustomer()
        {
            int recordsAffected = 0;

            using (SqlConnection con = new SqlConnection("Server=MELIH\\SQLEXPRESS;Database=Northwind;Trusted_Connection=True"))
            {
                SqlCommand command = new SqlCommand("INSERT INTO Customers (CustomerID,CompanyName,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone)" +
                    "VALUES (@CustomerID,@CompanyName,@ContactName,@ContactTitle,@Address,@City,@Region,@PostalCode,@Country,@Phone)", con);
                command.Parameters.AddWithValue("@CustomerID", txtCustomerId.Text);
                command.Parameters.AddWithValue("@CompanyName", txtCompanyName.Text);
                command.Parameters.AddWithValue("@ContactName", txtContactName.Text);
                command.Parameters.AddWithValue("@ContactTitle", txtContactTitle.Text);
                command.Parameters.AddWithValue("@Address", txtAddress.Text);
                command.Parameters.AddWithValue("@City", txtCity.Text);
                command.Parameters.AddWithValue("@Region", txtRegion.Text);
                command.Parameters.AddWithValue("@PostalCode", txtPostalCode.Text);
                command.Parameters.AddWithValue("@Country", txtCountry.Text);
                command.Parameters.AddWithValue("@Phone", txtPhone.Text);

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

        protected void btnSave_Click(object sender, EventArgs e)
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

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}