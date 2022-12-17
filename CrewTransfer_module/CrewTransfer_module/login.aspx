<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="CrewTransfer_module.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Login page</title>
    
    <style>

        body{
            background:linear-gradient(90deg,yellow, brown,blue,pink);
        }
        .grp1{
            text-align:center;
            color:navajowhite;
            background:linear-gradient(460deg,violet,indigo,blue,green,yellow,orange,red);
            border:solid 3px red ;
            border-radius:50px 50px 50px 50px;
            width:300px;
            margin-left:620px;
        }
        #div2 { 
            margin:100px 60px 50px 650px;
            color:orangered;
            font-family:'Arial Rounded MT';
            font-size:16px;
        }
        #lblmail{
            margin-right:30px
        }

        #txtmail{
            border:solid 3px black;

        }
        #lblpass{
            margin-right:0px;
            margin-top:30px;
        }
        #txtpass{
            border:solid 3px black;
            margin-top:30px;
        }
        #btnlogin{
            margin-left:100px;
            background-color:aqua;
            margin-top:30px;
        }

        #btncancel{
            margin-left:30px;
            background-color:aqua;
            margin-top:30px;
        }

        #registerlink{
            color:white;
        }
        #registerlink:hover{
            color:red;
        }
        #l{
            color:white;
        }

    </style>

</head>
<body >
    <form id="form1" runat="server">
        <div class="grp1" id ="div1">
            <h1>Login Page</h1>
        </div>
        <div class="grp2" id="div2">
        <asp:Label ID="lblusername" runat="server" Text="Username :"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" BorderStyle="Solid" BorderWidth="3px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorforUsername" runat="server" ErrorMessage="please fill the username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lblpass" runat="server" Text="password :"></asp:Label>
        <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorforPassword" runat="server" ErrorMessage="please fill the Password for Your Username" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:CheckBox ID="chkBoxRememberMe" runat="server" />
            <asp:Label ID="lblRememberMe" runat="server" Text="Remember me"></asp:Label>

        <br />
        <br />

        <asp:Button ID="btnlogin" runat="server" Text="login" onclick="btnlogin_Click"/>

            <asp:Button ID="btncancel" runat="server" Text="Cancel" onclick="btncancel_Click"/>
        <br />
        <asp:Label ID="lblf" runat="server" Text=""></asp:Label>

            <br />
            <br />
            <div>
               <label id="l">if you do not have a username and password</label>
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
