<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="swaprequest.aspx.cs" Inherits="CrewTransfer_module.swaprequest" %>

<%-- 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <div style="text-align:center;">
            <label id="lbltra" style="font-size:30px;">Base / Priority Swap Request</label>
        </div>

        <div class="transferRequestScreen">

        <p>
            &nbsp;</p>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="lblCrewId" runat="server" Text="Crew Id :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCrewId" runat="server" Enabled="False"></asp:TextBox>
            <br />
        <asp:Label ID="lblcurrentbase" runat="server" Text="Current Base :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCurrentBase" runat="server" Enabled="False"></asp:TextBox>
            <br />
            <br />
            <br />
        <asp:Label ID="lblrequestedbase" runat="server" Text="Requested Base :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRequestedBase" runat="server" Enabled="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblswaptype" runat="server" Text="Swap Type :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlSwapType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSwapType_SelectedIndexChanged">
            <asp:ListItem Enabled="true"  Text="select Swap Type" Value="-1"></asp:ListItem>
            <asp:ListItem Enabled="true" Text="Base Swap" Value="Base Swap"></asp:ListItem>
            <asp:ListItem Enabled="true" Text="Priority Swap" Value="Priority Swap"></asp:ListItem>
        </asp:DropDownList>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:RequiredFieldValidator ID="RequiredFieldValidatorforswaptype" runat="server" ErrorMessage="please select a swap type" ControlToValidate="ddlSwapType" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />
        <br />
        <asp:Label ID="lblselectcrew" runat="server" Text="Crew Names :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlselectcrew" runat="server" AutoPostBack="true">
            </asp:DropDownList>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:RequiredFieldValidator ID="RequiredFieldValidatorforselectcrew" runat="server" ErrorMessage="please select a crew for your swap type to make a swap request" ControlToValidate="ddlselectcrew" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" onclick="btnsubmit_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click"/>
            <br/>
            <br />
            <asp:Label ID="lblswaprequested" runat="server"></asp:Label>
            </div>
</asp:Content>
