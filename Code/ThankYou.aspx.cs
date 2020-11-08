using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO.Ports;

namespace OnlineEyeStore
{
    public partial class ThankYou : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {

                string userid = Session["userid"].ToString();
                string query = "select * from Customer_Orders where Customerid='" + userid + "'";
                // string query = "select * from Customer_Orders where Customerid='a'";
                SqlConnection con = new SqlConnection(DBClass.connectionString);
                //Open database connection to connect to SQL Server
                con.Open();
                //Data table is used to bind the resultant data
                DataTable dtusers = new DataTable();
                // Create a new data adapter based on the specified query.
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                //SQl command builder is used to get data from database based on query
                SqlCommandBuilder cmd = new SqlCommandBuilder(da);
                //Fill data table
                da.Fill(dtusers);
                con.Close();
                GridView1.DataSource = dtusers;
                GridView1.DataBind();




                Session.Abandon();

            }
        }
    }
}