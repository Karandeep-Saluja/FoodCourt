using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace foodCourt.pages
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            } 
        }
        protected void Bind()
        {

            SqlConnection con = new SqlConnection("Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver");
            ddlCategory.Items.Insert(0, new ListItem("Select Category", "0"));
            con.Open();
            SqlCommand cmd = new SqlCommand("select distinct Category from Cart", con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ddlCategory.Items.Add(dr["Category"].ToString());
            }
            con.Close();
        }
        protected void Category_Changed(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver"); 
            ddlProduct.Items.Clear();
            ddlProduct.Items.Insert(0, new ListItem("Select Product", "0"));
            con.Open();
            SqlCommand cmd = new SqlCommand("select Product,Category from Cart",con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                 if (ddlCategory.SelectedItem.Text.Equals(dr["Category"]))
                {
                    ddlProduct.Items.Add(dr["Product"].ToString());
                }
            }
            con.Close();
        }

        protected void Product_Changed(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Cart",con);
            SqlDataReader dr = cmd.ExecuteReader();
            
            while (dr.Read())
            {
                if (ddlProduct.SelectedItem.Text.Equals(dr["Product"]))
                {

                    lblPrice.Text = dr["Price"].ToString();
                    lblSubTotal.Text = Convert.ToString(Convert.ToDecimal(lblPrice.Text) * Convert.ToInt32(ddlQuantity.SelectedItem.Text));

                }
                else
                {
                    
                }
            }
            
            con.Close();
        }
        protected void Quantity_Changed(object sender, EventArgs e)
        {
            lblSubTotal.Text = Convert.ToString(Convert.ToDecimal(lblPrice.Text) * Convert.ToInt32(ddlQuantity.SelectedItem.Text));
        }

        /*protected void txtQuantity_TextChanged(object sender, EventArgs e)
        {
            if (txtQuantity.Text == "")
            {
            }
            else
            {
                
            }
        }
        */
        /*protected void btnAdd_Click(object sender, EventArgs e)
        {
            
            
        }
        */

        protected void CalculateTotal()
        {
            decimal Total=0;
            SqlConnection con = new SqlConnection("Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver");
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from Cart where Quantity>0", con);
            SqlDataReader dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                if (dr["Subtotal"] != "")
                    Total = Total + Convert.ToDecimal(dr["Subtotal"].ToString());
            }
            lblTotal.Text = Convert.ToString(Total);
            con.Close();
        }


protected void BindDataGridView()
{
    SqlConnection con4 = new SqlConnection("Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver");
    con4.Open();
    SqlCommand cmd4 = new SqlCommand("select * from Cart where Quantity>0", con4);
    SqlDataReader sdr = cmd4.ExecuteReader();
    gvCart.Visible = true;
    gvCart.DataSource = sdr;
    gvCart.DataBind();
    con4.Close();
}

protected void btnAdd_Click1(object sender, EventArgs e)
{
    SqlConnection con = new SqlConnection("Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver");
    //ddlCategory.Items.Clear();
    //Bind();
    //CalculateTotal();
    con.Open();
    SqlCommand cmd2 = new SqlCommand("update Cart Set Quantity=@quantity,SubTotal=@subtotal where Product=@product", con);
    cmd2.Parameters.AddWithValue("@quantity", Convert.ToInt32(ddlQuantity.SelectedItem.Text));
    cmd2.Parameters.AddWithValue("@subtotal", Convert.ToInt32(lblSubTotal.Text));
    cmd2.Parameters.AddWithValue("@product", ddlProduct.SelectedItem.Text);
    BindDataGridView();
    cmd2.ExecuteNonQuery();
    con.Close();
    CalculateTotal();
}

protected void btnconfirm_Click(object sender, EventArgs e)
{
    SqlConnection con = new SqlConnection("Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver");
    con.Open();
    SqlCommand cmd2 = new SqlCommand("update Cart Set Quantity=0,SubTotal=0 where Quantity>0", con);
    cmd2.Parameters.AddWithValue("@product", ddlProduct.SelectedItem.Text);
    cmd2.ExecuteNonQuery();
    con.Close();
    lblorder.Text = "Order has been placed Successfully";
}

protected void btnexit_Click(object sender, EventArgs e)
{
    Response.Redirect("../index.aspx");
}

protected void btnclean_Click(object sender, EventArgs e)
{
    SqlConnection con = new SqlConnection("Data Source=DELL-INSPIRON\\SQLEXPRESS;Initial Catalog=foodCourt;Persist Security Info=True;User ID=sa;Password=sqlserver");
    con.Open();
    SqlCommand cmd2 = new SqlCommand("update Cart Set Quantity=0,SubTotal=0 where Quantity>0", con);
    cmd2.Parameters.AddWithValue("@product", ddlProduct.SelectedItem.Text);
    cmd2.ExecuteNonQuery();
    BindDataGridView();
    con.Close();
    
}

    }
}