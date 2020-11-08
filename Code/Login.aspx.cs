using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineEyeStore
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            showAll();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string usertype = DropDownList1.Text;
                string userid = TextBox1.Text;
                string pw = TextBox2.Text;
                string query = "select * from Users where userid='" + userid + "' and password='" + pw + "'";

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

                if (usertype.Equals("Admin") && userid.Equals("admin") && pw.Equals("admin"))
                {

                    Response.Redirect("AdminPannel.aspx");
                }

                else if (dtusers.Rows.Count > 0)
                {
                    if (usertype.Equals("Customer"))
                    {




                        Session["userid"] = userid;
                        Response.Redirect("Default.aspx");

                    }
                   

                    else if (usertype.Equals("Suplier"))
                    {
                        Session["userid"] = userid;
                        Response.Redirect("SuplierPannel.aspx");
                    }
                }
                else
                {

                    Label1.Text = "User ID and or Password is wrong";

                }

            }
            catch (Exception exp)
            {

                Label1.Text = exp.Message.ToString();
            }
        }



        private void showAll()
        {
            string query = "select * from items";

            // SqlConnection con = new SqlConnection(DBClass.connectionString);
            SqlConnection con = new SqlConnection(DBClass.connectionString);
            //Open database connection to connect to SQL Server
            con.Open();
            //Data table is used to bind the resultant data
            DataTable dt = new DataTable();
            // Create a new data adapter based on the specified query.
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            //SQl command builder is used to get data from database based on query
            SqlCommandBuilder cmd = new SqlCommandBuilder(da);
            //Fill data table
            da.Fill(dt);
            con.Close();
            DataList1.DataSource = dt;
            DataList1.DataBind();


        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }

        protected void DataList1_ItemDataBound1(object sender, DataListItemEventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}