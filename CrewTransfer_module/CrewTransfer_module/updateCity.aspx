<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updateCity.aspx.cs" Inherits="CrewTransfer_module.updateCity" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1 style="text-align:center;color:black;">Update City</h1>

    <br />
    <br />
     <asp:Label ID="lblUpdateCity" runat="server" Text="All Cities :"></asp:Label>
    <asp:DropDownList ID="ddlCitylistUpdate" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCitylistUpdate_SelectedIndexChanged"></asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lblCityIdupdate" runat="server" Text="City Id :"></asp:Label>
    <asp:TextBox ID="txtCityIdupdate" runat="server" Enabled="false"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblCityCodeupdate" runat="server" Text="City Code :"></asp:Label>
    <asp:TextBox ID="txtCityCodeupdate" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblCityNameupdate" runat="server" Text="City Name :"></asp:Label>
    <asp:TextBox ID="txtCityNameupdate" runat="server"></asp:TextBox>
     <br />
    <br />
    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click"/>
    <br/>
    <br/>
    <asp:Label ID="lblsaved" runat="server" Text=""></asp:Label>

</asp:Content>