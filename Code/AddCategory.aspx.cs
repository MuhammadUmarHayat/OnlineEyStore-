using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OnlineEyeStore
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {//save
            SqlConnection conn = new SqlConnection(DBClass.connectionString);

            string query = "insert into Category(Title,Discription,Date) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Now + "')";


            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();
            Label1.Text = "Record is saved seccessfully";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //cancel

            Response.Redirect("AddCategory.aspx");
        }
    }
}