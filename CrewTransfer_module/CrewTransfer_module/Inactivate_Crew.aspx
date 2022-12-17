<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inactivate_Crew.aspx.cs" Inherits="CrewTransfer_module.Inactivate_Crew" %>

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
        <h1 style="text-align:center;">Inactivate Crews</h1>
        <div>
            <asp:Label ID="lblselectcrew" runat="server" Text="SelectCrew :"></asp:Label>
            <asp:DropDownList ID="ddlCrewlist" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCrewlist_SelectedIndexChanged">   </asp:DropDownList>
        </div>
        <br />
        <br />
        <div>
            <asp:Label ID="lblCrewId" runat="server" Text="Crew Id :"></asp:Label>
            <asp:TextBox ID="txtCrewId" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <br />
        <div>
            <asp:Label ID="lblIsactivate" runat="server" Text="Status :"></asp:Label>
            <asp:TextBox ID="txtIsacivate" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <br />
        <div>
            <asp:Label ID="lblCrewName" runat="server" Text="Crew Name :"></asp:Label>
            <asp:TextBox ID="txtCrewName" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <br />
        <div>
            <asp:Button ID="btnInactivate" runat="server" Text="Inactivate" OnClick="btnInactivate_Click" />
            <asp:Button ID="btncancelInactivate" runat="server" Text="Cancel" OnClick="btncancelInactivate_Click" />
        </div>
        <br />
        <br />
        <asp:Label ID="lblInactivated" runat="server" Text=""></asp:Label>

        <div>
                <footer style="text-align:center;">
                    &copy 2020 Transfer Module
                </footer>
          </div>

    </form>
</body>
</html>
