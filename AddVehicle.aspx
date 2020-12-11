<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddVehicle.aspx.cs" Inherits="AddVehicle" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

    <head>
        <link rel="stylesheet" href="../CarRentalWebApp/StyleSheet.css" type="text/css"/>
       

        <title>Add Vehicle</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
 .back
    {
        background-image: url("../CarRentalWebApp/images/addCar.jpg");
      background-size: 1367px 700px;
      background-repeat:no-repeat;
      height: 100%;
  margin: 0;
    }
    input[type=text]
    {
        width: 90%;
    }
    
    select
    {
        width: 50%;
    }
    input[type=text]:focus, input[type=password]:focus,input[type=date]:focus,input[type=file]:focus, textarea:focus,input[type=email] ,select:focus{
  background-color: #ddd;
  outline: none;}
</style>

    </head>
    <body bgcolor="#eee" class="body">
    <form id="form1" runat="server">
        <div >
            <table   style="width: 100%;height:100%;">
                <tr>
                    <td rowspan="2"><img src="../CarRentalWebApp/images/car.png" alt="img" width="200" height="100"/> </td>
                    <td style="height: 50px;background-color: #eee;text-align: center;">
                        
                        <h1>Vehicle Rental</h1>
                        
                    </td>
                    <td style="text-align: right"><a style="text-decoration:none;font-size: 25px;" href="AdminLogin.aspx">Logout</a>&nbsp&nbsp</td>
                </tr>
                <tr>
                    <td style="text-align: center;font-style: italic">Welcome Sachin </td> <td style="text-align: right"></td>
                </tr>
                <tr>
               
                    <td style="width:200px;vertical-align: text-top;">
                        <div class="vertical-menu">
  <a href="AdminMain.aspx" class="">Home</a>
  <a href="VehicleDetails.aspx">Vehicle Details</a>
  <a href="ViewFeedback.aspx">View Feedback</a>
  <a href="#"></a>
  <a href="#"></a>
  <a href="#"></a>
  <a href="#"></a>
 
</div>

                    </td>
               
                    <td colspan="2" >
                        <div style="border-radius: 3px;background-color: white;height: 100%;height: 100%;min-height: 600px;margin-right: 5px ">
                            
                            <div  style="vertical-align: text-top;">
                            
                            <div style="text-align: left;">  <h2>Add Vehicle</h2></div>
                           
                                <div   style="float:left;">
<table class="container" cellpadding="4" width="100%"  cellspacing="1" style="overflow:scroll;">
            

<tr>
<td style="width: 288px">Car Type</td>
<td style="width: 318px">
    <asp:DropDownList ID="ddlType" runat="server" CssClass="text">
    <asp:ListItem Text="Hatchback" Value="0" />
    <asp:ListItem Text="Sedan" Value="1" />
    <asp:ListItem Text="MUV" Value="2" />
    <asp:ListItem Text="SUV" Value="3" />
    </asp:DropDownList></td>
    <td style="width: 98px">
    </td>
</tr>
    
  
    
<tr>
    <td style="width: 288px; height: 27px;"><label>Vehicle Number</label></td>
<td style="width: 318px; height: 27px">
    &nbsp;<asp:TextBox ID="txtVehicleNo" runat="server" placeholder="Vehicle Number" CssClass="text" OnTextChanged="txtVehicleNo_TextChanged" />
    </td>
    <td style="width: 98px; height: 27px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtVehicleNo"
        ErrorMessage="Vehicle Number Required">*</asp:RequiredFieldValidator></td>
</tr>

<tr>
<td style="width: 288px">Brand</td>
<td style="width: 318px"><asp:TextBox ID="txtBrand" runat="server" placeholder="Brand" CssClass="text" OnTextChanged="txtVehicleNo_TextChanged" /></td>
    <td style="width: 98px">
    </td>
</tr>


<tr>
<td style="width: 288px">Model</td>
<td style="width: 318px"><asp:TextBox ID="txtModel" runat="server" placeholder="Model" CssClass="text" OnTextChanged="txtVehicleNo_TextChanged" /></td>
    <td style="width: 98px">
    </td>
</tr>


<tr>
<td style="width: 288px">Model Year</td>
<td style="width: 318px"><asp:TextBox ID="txtYear" runat="server" placeholder="Model Year" CssClass="text" OnTextChanged="txtVehicleNo_TextChanged" /></td>
    <td style="width: 98px">
    </td>
</tr>


<tr>
<td style="width: 288px">Number Of Seats</td>
<td style="width: 318px"><asp:TextBox ID="txtNOS" runat="server" placeholder="Number of Seats" CssClass="text" OnTextChanged="txtVehicleNo_TextChanged" /></td>
    <td style="width: 98px">
    </td>
</tr>


<tr>
<td style="width: 288px">Mileage</td>
<td style="width: 318px"><asp:TextBox ID="txtMil" runat="server" placeholder="Mileage" CssClass="text" OnTextChanged="txtVehicleNo_TextChanged" /></td>
    <td style="width: 98px">
    </td>
</tr>


<tr>
<td style="width: 288px">Cost per Day</td>
<td style="width: 318px"><asp:TextBox ID="txtCPD" runat="server" placeholder="Cost per Day" CssClass="text" OnTextChanged="txtVehicleNo_TextChanged" /></td>
    <td style="width: 98px">
    </td>
</tr>




<tr>
    
    <td style="width: 288px"><a href="VehicleDetails.aspx"><input type="button"  value="   BACK   "></a></td>
    <td style="width: 318px"> 
     <asp:Button ID="btnAdd" runat="server" Text="ADD" OnClick="btnAdd_Click" Width="110px" />
        
    </td>
    <td style="width: 98px">
    </td>
</tr>

</table>
</div>


                            
                            
                            
                            
                            </div>
                            
                            
                            
                                                      
                            
                        </div>
                    </td>
                </tr>
                <tr><td></td>
                   <td colspan="2"  style="height: 20px;border-top: 1px solid #eee;">
                        
                       &copy;2020 <i> University Visvesvaraya College of Engineering.</i><a href="http://www.bangaloreuniversity.ac.in"><img style="margin-top: 5px" src="../CarRentalWebApp/images/bulogo1.png" alt="img"  height="30"/></a> Developed by Sachin V Nayak 
                         
                    </td>
                </tr>
                
            </table>
        
        </div>
     </form>          
    </body>
</html>
