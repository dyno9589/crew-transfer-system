<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getallCities.aspx.cs" Inherits="CrewTransfer_module.getallCities" %>

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

        <h1 style="text-align:center;">Get All Cities</h1>

        <div>
            <asp:Label ID="AllCities" runat="server" Text="All Cities :"></asp:Label>
            <asp:DropDownList ID="ddlAllCities" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlAllCities_SelectedIndexChanged"></asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Label ID="lblgetCityId" runat="server" Text="City Id :"></asp:Label>
            <asp:TextBox ID="txtgetCityId" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblgetCityCode" runat="server" Text="City Code :"></asp:Label>
            <asp:TextBox ID="txtgetCityCode" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblgetCityName" runat="server" Text="City Name :"></asp:Label>
            <asp:TextBox ID="txtgetCityName" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="btnbacktohome" runat="server" Text="Get Back To Home" onclick="btnbacktohome_Click"/>
        </div>
    </form>
</body>
</html>
