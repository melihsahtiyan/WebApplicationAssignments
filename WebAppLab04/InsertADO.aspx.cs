using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppLab04
{
    public partial class InsertADO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private int InsertCourse(string courseName)
        {
            var result = 0;

            SqlConnection connection = new SqlConnection(@"Server=MELIH\SQLEXPRESS;Database=SchoolDB;Trusted_Connection=True");

            connection.Open();

            DataTable dtCourse = new DataTable();


            if (connection.State == ConnectionState.Open)
            {
                SqlCommand command =
                    new SqlCommand("INSERT INTO course (CourseName,Location)" + "VALUES ('" + courseName + "', null)",
                        connection);
                result = command.ExecuteNonQuery();
            }

            return result;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            InsertCourse(txtCourse.Text);
        }
    }
}