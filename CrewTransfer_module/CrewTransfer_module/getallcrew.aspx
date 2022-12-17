<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getallcrew.aspx.cs" Inherits="CrewTransfer_module.getallcrew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>get all crews</title>

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
        
        <h1 style="text-align:center;">Get All Crews</h1>
        
        <br />
        <br />
        <div>
            <asp:Label ID="lblAllCrews" runat="server" Text="Crews :"></asp:Label>
            <asp:DropDownList ID="ddlAllCrews" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlAllCrews_SelectedIndexChanged"></asp:DropDownList>
        </div>
        <br />
         <div>
            <asp:Label ID="lblgetcrewId" runat="server" Text="Crew Id :"></asp:Label>
            <asp:TextBox ID="txtgetcrewId" runat="server" Enabled="false"></asp:TextBox>
        </div>
           <br />
        
        <div>
            <asp:Label ID="lblgetcrewName" runat="server" Text="Crew Name :"></asp:Label>
            <asp:TextBox ID="txtgetcrewName" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblgetcrewAddr" runat="server" Text="Address :"></asp:Label>
            <asp:TextBox ID="txtgetcrewAddr" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label ID="lblgetContact" runat="server" Text="Contact Number :"></asp:Label>
            <asp:TextBox ID="txtgetContact" runat="server" Enabled="false"></asp:TextBox>
        </div>
         <br />
         <div>
            <asp:Label ID="lblgetBloodGr" runat="server" Text="Blood Group :"></asp:Label>
            <asp:TextBox ID="txtgetBloodGr" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label ID="lblgetDOB" runat="server" Text="Date Of Birth :"></asp:Label>
            <asp:TextBox ID="txtgetDOB" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label ID="lblgetWorkingcity" runat="server" Text="Working City :"></asp:Label>
            <asp:TextBox ID="txtgetWorkingcity" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label ID="lblgetDOJoining" runat="server" Text="Date Of Joining :"></asp:Label>
            <asp:TextBox ID="txtgetDOJoining" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label ID="lblgetdesignation" runat="server" Text="Designation :"></asp:Label>
            <asp:TextBox ID="txtgetdesignation" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblIsactive" runat="server" Text="IsActive Status :"></asp:Label>
            <asp:TextBox ID="txtIsactive" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
         <div>
             <asp:Button ID="btngetbacktohome" runat="server" Text="Get Back To Home" OnClick="btngetbacktohome_Click" />
             
        </div>
        <div>
                <footer style="text-align:center;">
                    &copy 2020 Transfer Module
                </footer>
          </div>
    </form>
</body>
</html>
