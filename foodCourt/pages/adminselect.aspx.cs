using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace foodCourt.pages
{
    public partial class adminselect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            String str = "Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            try
            {
                String query = "update " + txtname.Text + " set price=@price where name_of_dish=@dish";
                SqlCommand com = new SqlCommand(query, con);
                com.Parameters.AddWithValue("@dish", txtdish.Text);
                com.Parameters.AddWithValue("@price", Convert.ToDouble(txtprice.Text));
                com.ExecuteNonQuery();
                Label1.Text = "Record is updated Successfully";
            }
            catch (Exception a)
            {
                Label1.Text = "error" + a.Message;
            }
            con.Close();
            String str2 = "Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver";
            SqlConnection con2 = new SqlConnection(str2);
            con2.Open();
            try
            {
                String query = "update Cart set price=@price where Product=@dish";
                SqlCommand com2 = new SqlCommand(query, con2);
                com2.Parameters.AddWithValue("@dish", txtdish.Text);
                com2.Parameters.AddWithValue("@price", Convert.ToInt32(txtprice.Text));
                com2.ExecuteNonQuery();
                Label1.Text = "Record is updated Successfully";
            }
            catch (Exception a)
            {
                Label1.Text = "error" + a.Message;
            }
            con2.Close();
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            String str = "Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            try
            {
                String query = "insert into " + txtname.Text + " values(@dish,@price,@picture)";
                SqlCommand com = new SqlCommand(query, con);
                String strname = FileUpload.FileName.ToString();
                FileUpload.PostedFile.SaveAs(Server.MapPath("~/pages/") + strname);
                com.Parameters.AddWithValue("@dish", txtdish.Text);
                com.Parameters.AddWithValue("@price", Convert.ToDouble(txtprice.Text));
                com.Parameters.AddWithValue("@picture", strname);
                com.ExecuteNonQuery();
                Label1.Text = "Record is inserted Successfully";
            }
            catch (Exception a)
            {
                Label1.Text = "error" + a.Message;
            }
            con.Close();

            String str2 = "Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver";
            SqlConnection con2 = new SqlConnection(str2);
            con2.Open();
            try
            {
                String query = "insert into Cart values(@dish,@cat,@price,0,0)";
                SqlCommand com2= new SqlCommand(query, con2);
                com2.Parameters.AddWithValue("@dish", txtdish.Text);
                com2.Parameters.AddWithValue("@price", Convert.ToInt32(txtprice.Text));
                com2.Parameters.AddWithValue("@cat", txtcat.Text);
                com2.ExecuteNonQuery();
                Label1.Text = "Record is inserted Successfully";
            }
            catch (Exception a)
            {
                Label1.Text = "error" + a.Message;
            }
            con2.Close();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            String str = "Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            try
            {
                String query = "delete from " + txtname.Text + " where name_of_dish=@dish";
                SqlCommand com = new SqlCommand(query, con);
                com.Parameters.AddWithValue("@dish", txtdish.Text);
                com.ExecuteNonQuery();
                Label1.Text = "Record is deleted Successfully";
            }
            catch (Exception a)
            {
                Label1.Text = "error" + a.Message;
            }
            con.Close();

            String str2 = "Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver";
            SqlConnection con2 = new SqlConnection(str2);
            con2.Open();
            try
            {
                String query = "delete from Cart where Product=@dish";
                SqlCommand com2 = new SqlCommand(query, con2);
                com2.Parameters.AddWithValue("@dish", txtdish.Text);
                com2.ExecuteNonQuery();
                Label1.Text = "Record is deleted Successfully";
            }
            catch (Exception a)
            {
                Label1.Text = "error" + a.Message;
            }
            con2.Close();
        }

        
    }
}