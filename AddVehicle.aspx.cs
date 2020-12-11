using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using MySql.Data.MySqlClient;


public partial class AddVehicle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void txtVehicleNo_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        try
        {
            string myConnectionString =System.Configuration.ConfigurationManager.AppSettings["ConString"].ToString();
            int Myear=0;Int32.TryParse(txtYear.Text.Trim(),out Myear);
            int Seats=0;Int32.TryParse(txtNOS.Text.Trim(),out Seats);
            int Milage=0;Int32.TryParse(txtMil.Text.Trim(),out Milage);
            int cpd=0;Int32.TryParse(txtCPD.Text.Trim(),out cpd);
            string qry = "insert into vehicle_details(veh_no,veh_type,brand,model,m_year,nos,mileage,cpd,status) values('" + txtVehicleNo.Text + "','" + ddlType.SelectedItem.Text + "','" + txtBrand.Text + "','" + txtModel.Text + "'," + Myear + "," + Seats + "," + Milage + "," + cpd + ",1)";
            MySqlConnection con = new MySqlConnection(myConnectionString);
            MySqlCommand cmd = new MySqlCommand(qry, con);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Clone();
            Response.Write("<script language='javascript'>window.alert('Success.');window.location='AddVehicle.aspx';</script>");
           // Server.Transfer("AddVehicle.aspx", false);     
        }
        catch (Exception ex)
        {
            ClientScript.RegisterClientScriptBlock(GetType(), "alertMessage ", "alert('" + ex.Message + "');");
        }
    }
}
