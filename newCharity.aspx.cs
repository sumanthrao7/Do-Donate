using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoDonate
{
    public partial class newCharity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            flImage.PostedFile.SaveAs(Server.MapPath("images/" + flImage.Value));
            string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("Select Max(id) from charity ", con);
            con.Open();
            int id = (int)cmd.ExecuteScalar();
            con.Close();

            string insertQuery = "Insert into charity values (" + (id + 1) + ",'" + txtName.Value + "', 'images/" + flImage.Value + "', 0,'" + txtAbout.Value + "','" + txtLink.Value + "')";
            SqlCommand cmdInsert = new SqlCommand(insertQuery, con);
            con.Open();
            cmdInsert.ExecuteNonQuery();
            con.Close();
            Response.Redirect("default.aspx");

        }
    }
}