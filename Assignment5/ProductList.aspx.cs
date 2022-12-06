using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using Image = System.Drawing.Image;

namespace WebApplicationCourse
{
    public partial class ProductList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductListView.DataSource = GetProducts();
            ProductListView.DataBind();
            

        }

        private DataTable GetProducts()
        {
            DataTable products = new DataTable();


            using (SqlConnection connection =
                   new SqlConnection("Server=MELIH\\SQLEXPRESS;Database=Northwind;Trusted_Connection=True"))
            {
                try
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(
                        "SELECT p.ProductName,c.CategoryName,p.QuantityPerUnit,p.UnitPrice,p.UnitsInStock,p.ImageUrl FROM Products as p " +
                        "LEFT JOIN Categories as c ON p.CategoryId = c.CategoryId",
                        connection);
                    adapter.Fill(products);
                }
                catch (Exception e)
                {
                    Console.WriteLine(e);
                    throw;
                }
            }

            return products;
        }
        
    }
}