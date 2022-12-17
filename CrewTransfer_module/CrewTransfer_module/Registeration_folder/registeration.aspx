<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registeration.aspx.cs" Inherits="CrewTransfer_module.Registeration_folder.registeration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registeration</title>
<style>
    body{
      background: linear-gradient(50deg,pink,skyBlue);
        margin-top:0px;
        font-family: 'Californian FB';
        font-style:oblique;
        
    }
    .content{
        border:solid 2px;
        width:300px;
        padding:20px;
    }

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <p style="margin-left: 640px; font-size:30px;">
                Registeration Page</p>

        </div>

     <div class="content">
        Register Id :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRegisterId" runat="server" Enabled="False" ToolTip="Please don't fill Register Id, it will be automatically filled after registeration"></asp:TextBox>
        <br />
        <p>
            Username :&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        </p>
        <p>
            Password :&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" ToolTip="enter your password"></asp:TextBox>
        </p>
        <p>
            Confirm Password :&nbsp;&nbsp;
            <asp:TextBox ID="txtconfirmpass" runat="server"></asp:TextBox>
        </p>
        <p>
            Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
        </p>
         <p style="margin-left: 40px">
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click"/>
        </p>

        <div>
            <asp:Label ID="lblreg" runat="server" Text=""></asp:Label>
        </div>
     </div>

        <div>
                <footer style="text-align:center;">
                    &copy 2020 Transfer Module
                </footer>
          </div>
    </form>
</body>
</html>

