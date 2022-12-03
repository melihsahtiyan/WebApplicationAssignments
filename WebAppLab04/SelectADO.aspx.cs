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
    public partial class SelectADO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gvCourses.DataSource = GetCourses();
            gvCourses.DataBind();
        }

        private DataTable GetCourses()
        {
            SqlConnection con = new SqlConnection(@"Server=MELIH\SQLEXPRESS;Database=SchoolDB;Trusted_Connection=True");
            con.Open();
            DataTable dt = new DataTable();

            if (con.State == ConnectionState.Open)
            {
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT CourseName, Location FROM Course",con);
                adapter.Fill(dt);
            }
            return dt;
        }

        protected void gvCourses_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}
