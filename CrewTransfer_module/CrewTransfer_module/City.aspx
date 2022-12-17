<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="City.aspx.cs" Inherits="CrewTransfer_module.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="color:black;">City Page</h1>

     <br />
    <br />
    <asp:Label ID="lblCityMasterCode" runat="server" Text="All Cities :"></asp:Label>
    <asp:DropDownList ID="ddlCitylist" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCitylist_SelectedIndexChanged"></asp:DropDownList>
    <br />
    <br />
   
    <asp:Label ID="lblCityCode" runat="server" Text="City Code :"></asp:Label>
    <asp:TextBox ID="txtCityCode" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblCityName" runat="server" Text="City Name :"></asp:Label>
    <asp:TextBox ID="txtCityName" runat="server"></asp:TextBox>
     <br />
    <br />
    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click"/>
    <br/>
    <br/>
    <asp:Label ID="lblsaved" runat="server" Text=""></asp:Label>
    
</asp:Content>
