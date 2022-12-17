<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inactivate_City.aspx.cs" Inherits="CrewTransfer_module.Inactivate_City" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

    body {

        background: linear-gradient(50deg,pink,skyBlue);
        margin-top:0px;
        font-family: 'Californian FB';
        font-style:oblique;
        
</style>
</head>
<body>
    <form id="form1" runat="server">
        
        <h1 style="text-align:center;">Inactivate Cities</h1>

  <div>
    <asp:Label ID="lblCityMasterCodeInActivate" runat="server" Text="Select Cities :"></asp:Label>
    <asp:DropDownList ID="ddlCitylistInActivate" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCitylistInActivate_SelectedIndexChanged"></asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lblCityIdInActive" runat="server" Text="City Id :"></asp:Label>
    <asp:TextBox ID="txtCityIdInActive" runat="server" Enabled="false"></asp:TextBox>
      <br />
      <br />
       <asp:Label ID="lblstatusIsActive" runat="server" Text="Status :"></asp:Label>
    <asp:TextBox ID="txtIsActive" runat="server" Enabled="false"></asp:TextBox>
      <br />
      <br />
    <asp:Label ID="lblCityNameInActive" runat="server" Text="City Name :"></asp:Label>
    <asp:TextBox ID="txtCityNameInActive" runat="server" Enabled="false"></asp:TextBox>
     <br />
    <br />
    <asp:Button ID="btnInactivate" runat="server" Text="Inactivate" OnClick="btnInactivate_Click" />
    <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" />
    <br/>
    <br/>
    <asp:Label ID="lblsaved" runat="server" Text=""></asp:Label>
  </div>
   
    </form>
</body>
</html>
