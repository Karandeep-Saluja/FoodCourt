using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using System.Data;
namespace foodCourt.pages
{
    public partial class vegpizza : System.Web.UI.Page
    {
        private int Button;
        protected void Page_Load(object sender, EventArgs e)
        {
            string st;
            int i=0;

            if (!this.IsPostBack)
            {
                //Populating a DataTable from database.
                DataTable dt = this.GetData_pizza();

                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                //Table start.
                html.Append("<table align=center>");

                //Building the Header row.
                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<th>");
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }
                html.Append("</tr>");

                //Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<td>");
                        if (column.ColumnName != "picture")
                        {
                            html.Append(row[column.ColumnName]);
                        }
                        else
                        {
                            st = "<img src="+Convert.ToString(row[column.ColumnName])+">";
                            html.Append("<img src="+row[column.ColumnName]+" width=400px height=200px>");
                        }
                            html.Append("</td>");
                    }
                     html.Append("</tr>");
                }

                //Table end.
                html.Append("</table>");

                //Append the HTML string to Placeholder.
                PlaceHolder_vegpizza.Controls.Add(new Literal { Text = html.ToString() });
            }
        }
        private void DynamicButton_Click(object sender, EventArgs e)
        {
            
        }


        private DataTable GetData_pizza()
        {
            string constr = ConfigurationManager.ConnectionStrings["mydbstring"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT name_of_dish, price,picture FROM tbl_veg_pizza"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
    }
}