using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace foodCourt.pages
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlog_Click(object sender, EventArgs e)
        {
            //setting the connection string
            String str = "Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver";
            int y = 0;
            //instantiating SqlConnection class
            SqlConnection con = new SqlConnection(str);
            con.Open();
            String query = "select * from tbl_admin";

            SqlCommand com = new SqlCommand(query, con);
            SqlDataReader sdr = com.ExecuteReader();
            while (sdr.Read())
            {
                if (TextBox1.Text.Equals(sdr["user"]) && TextBox2.Text.Equals(sdr["password"]))
                {
                    Response.Redirect("adminselect.aspx");
                }
                else
                {
                    Lblmsg.Text = "Please retry";
                }
            }

        }
    }
}