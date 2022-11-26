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
            using (SqlConnection con = new SqlConnection(@"Server=MELIH\SQLEXPRESS;Database=Assignment4;Trusted_Connection=True"))
            {


                
                string email = txtEmail.Text;

                EfUserDal userDal = new EfUserDal();

                User result = userDal.Get(u => u.Email == email);

                if (result == null || result.Password != txtPassword.Text)
                {
                    Response.Redirect("RegistrationForm.aspx");
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            }

        }
    }
}