<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="transfer.aspx.cs" Inherits="CrewTransfer_module.transfer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>transfer</title>

    <style>
        body{
            background: linear-gradient(50deg,pink,skyBlue);
            font-family: 'Californian FB';
            font-style:oblique;
            font-size:30px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">--%>

        <div style="text-align:center;">
            <label id="lbltra" style="font-size:30px;">Transfer Request</label>
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
            <asp:Label ID="lblTId" runat="server" Text="TId :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtTId" runat="server" Enabled="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="CrewId :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCrewId" runat="server" Enabled="False"></asp:TextBox>
            <br />
            <br />
        <asp:Label ID="Label1" runat="server" Text="Current Working City :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCurrentWorkingCity" runat="server" Enabled="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Transfer Requested City :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlcityrequestedlist" runat="server" AutoPostBack="True">
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorfortransferrequestedcity" runat="server" ErrorMessage="please choose a City for your transfer requested city" ControlToValidate="ddlcityrequestedlist" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Reason for Change :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtReasonForChange" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorforreason" runat="server" ErrorMessage="please give reason for transfer" ControlToValidate="txtReasonForChange" ForeColor="Red"></asp:RequiredFieldValidator>

        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCreateRequest" runat="server" Text="Create Request" onclick="btnCreateRequest_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click"/>
            <br/>
            <br />
            <asp:Label ID="lblrequestCreated" runat="server" Text=""></asp:Label>
            </div>
    <%--</form>
</body>
</html>--%>
    </asp:Content>