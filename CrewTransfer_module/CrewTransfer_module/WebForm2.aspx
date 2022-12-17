<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="CrewTransfer_module.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>update</title>

    <style>

      body {
        background-attachment: scroll;
        background: linear-gradient(50deg,pink,skyBlue);
        margin-top:0px;
        width:auto;
        background-image:url();
        font-family: 'Californian FB';
        font-style:oblique;
        
    }
    ul{
        list-style-type:none;
        margin:0;
        padding:0;
        overflow:hidden;
        background-color:#333;
    }

    li{
        float:left;
    }

    li a{
        display:block;
        color:white;
        text-align:center;
        padding:14px 16px;
        text-decoration:none;
    }

    li a:hover{
        background:linear-gradient(60deg,white,yellow,pink,skyblue);
        color:black;
    }
    img{
        height:700px;
        background: linear-gradient(50deg,pink,skyBlue);
        padding-left:450px;
        padding-right:353px;
    }
    #new{
        margin-left:850px;
    }
    #update{
        margin-left:30px;
    }
    h1{
            text-align:center;
            font-style:oblique;
            color:crimson;
            font-family:'Californian FB';
            margin-bottom:50px;
    }
    #btnCancel{
        margin-left:30px;
    }

    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div style="background: linear-gradient(50deg,pink,skyBlue);"> 
        <div>
            <ul>
                <li><a class="active" href="home.aspx">Home</a></li>
                <li><a href="Crew.aspx">Crew Information</a></li>
                <li><a href="City.aspx">Crew City</a></li>
                <li><a href="#">Crew Information</a></li>
                <li id="new"><a href="Crew.aspx">New </a></li>
                <li id="update"><a href="WebForm2.aspx">Update </a></li>
            </ul>
        </div>
         <div>
            <h1>Update Your information</h1>
        </div>

        <div>
             <asp:Label ID="lblcrewNameUpdate" runat="server" Text="Select Crew :"></asp:Label>
        <asp:DropDownList ID="ddlCrewlist" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCrewlist_SelectedIndexChanged"></asp:DropDownList>
        </div>
        <br />
        
        <div>
            <asp:Label ID="lblcrewIdUpdate" runat="server" Text="Crew Id :"></asp:Label>
            <asp:TextBox ID="txtcrewIdUpdate" runat="server"></asp:TextBox>
        </div>
           <br />
        
        <div>
            <asp:Label ID="lblcrewNameUpdateBD" runat="server" Text="Crew Name :"></asp:Label>
            <asp:TextBox ID="txtcrewNameUpdateDB" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="lblcrewAddrUpdate" runat="server" Text="Address :"></asp:Label>
            <asp:TextBox ID="txtcrewAddrUpdate" runat="server"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label ID="lblContactUpdate" runat="server" Text="Contact Number :"></asp:Label>
            <asp:TextBox ID="txtContactUpdate" runat="server"></asp:TextBox>
        </div>
         <br />
         <div>
            <asp:Label ID="lblBloodGrUpdate" runat="server" Text="Blood Group :"></asp:Label>
            <asp:TextBox ID="txtBloodGrUpdate" runat="server"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label ID="lblDOBUpdate" runat="server" Text="Date Of Birth :"></asp:Label>
            <asp:TextBox ID="txtDOBUpdate" runat="server"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label ID="lblWorkingcityUpdate" runat="server" Text="Working City :"></asp:Label>
            <asp:TextBox ID="txtWorkingcityUpdate" runat="server"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label ID="lblDOJoiningUpdate" runat="server" Text="Date Of Joining :"></asp:Label>
            <asp:TextBox ID="txtDOJoiningUpdate" runat="server"></asp:TextBox>
        </div>
        <br />
         <div>
            <asp:Label ID="lbldesignationUpdate" runat="server" Text="Designation :"></asp:Label>
            <asp:TextBox ID="txtdesignationUpdate" runat="server"></asp:TextBox>
        </div>
        <br />
           <div>
            <asp:Label ID="lblIsactiveUpdate" runat="server" Text="IsActive :"></asp:Label>
            <asp:TextBox ID="txtIsactiveUpdate" runat="server" Enabled="false"></asp:TextBox>
        </div>
        <br />
         <div>
             <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
             <asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click"/>
        </div>
          <div>
              <br />
              <asp:Label ID="lblupdated" runat="server" Text=""></asp:Label>
          </div>

          <div>
                <footer style="text-align:center;">
                    &copy 2020 Transfer Module
                </footer>
          </div>

      </div>



           
    </form>
</body>
</html>
