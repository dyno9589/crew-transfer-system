<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="CrewTransfer_module.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home</title>
     <%--css starts from here--%>
<style type="text/css">                             
    body {                                                     
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
    .mnusubul{
         list-style-type:none;
        margin:0;
        padding:0;
        overflow:hidden;
        background:linear-gradient(50deg,pink,skyBlue);
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

    /*li #btnshowCrew:hover{
        background-color:white;
        color:black;
        border:solid 2px black;
        border-radius:50px;

    }*/
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
   /* #btnshowCrew{
        background-color:black;
        color:white;
    }*/

    li #btnshowCity:hover {
        background-color: white;
        color: black;
        border:solid 2px black;
        border-radius:50px;
    }

    #btnshowCity{
        background-color:black;
        color:white;
        
    }
    
    a{
        font-size:20px;
    }
    a:hover{
        color:red;
    }

    #CrC{
        margin-left:20px;
        font-size:24px;
        color:black;
    }

    #CtC{
        margin-left:20px;
        font-size:24px;
        color:black;
    }

    #TrC{
        margin-left:20px;
        font-size:24px;
        color:black;
    }
    #AdC{
        margin-left:20px;
        font-size:24px;
        color:black;
    }

    #ShowCrew{
        margin-left:50px;
        
    }
    #ShowCity{
        margin-left:380px;
    }
    #ShowTransfer{
        margin-left:380px;
    }
    #ShowAdmin{
        margin-left:380px;
    }

    #ShowCrewDesign{
        border:solid 3px white;
    }

    #crewlbl{
        color:white;
    }
    #citylbl{
        color:white;
    }
    #transferlbl{
        color:white;
    }
    #adminlbl{
        color:white;
    }
    
    
    #crewlbl:hover{
        color:crimson;
        background:linear-gradient(48deg,yellow,skyblue);

    }
    #citylbl:hover{
        color:crimson;
        background:linear-gradient(48deg,yellow,skyblue);

    }
    #transferlbl:hover{
        color:crimson;
        background:linear-gradient(48deg,yellow,skyblue);

    }
    #adminlbl:hover{
        color:crimson;
        background:linear-gradient(48deg,yellow,skyblue);
    }
    #fhd:hover{
        color:dimgrey;
    }

    #btnhideCrew{
        margin-left :60px;
    }
    #btnhideCity{
        margin-left :60px;

    }
    #btnhideTransfer{
        margin-left :60px;

    }
    #btnhideAdmin{
        margin-left :60px;

    }


    #btnhideCrew:hover{
        margin-left :60px;
        background:linear-gradient(48deg,yellow,skyblue);

    }
    #btnhideCity:hover{
        margin-left :60px;
        background:linear-gradient(48deg,yellow,skyblue);


    }
    #btnhideTransfer:hover{
        margin-left :60px;
        background:linear-gradient(48deg,yellow,skyblue);

    }
    #btnhideAdmin:hover{
        margin-left :60px;
        background:linear-gradient(48deg,yellow,skyblue);

    }


</style>      
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $('#ShowCrew').click(function () {
            $('#mnuSubCrew').show('type', $(this).is(':checked') ? 'text' : 'password');
        });
        
        $("#btnhideCrew").click(function () {
            $("#mnuSubCrew").hide('type', $(this).is(':checked') ? 'text' : 'password');
        });



        $('#ShowCity').click(function () {
            $('#mnuSubCity').show('type', $(this).is(':checked') ? 'text' : 'password');
        });

        $("#btnhideCity").click(function () {
            $("#mnuSubCity").hide('type', $(this).is(':checked') ? 'text' : 'password');
        });


        $('#ShowTransfer').click(function () {
            $('#mnuSubTransfer').show('type', $(this).is(':checked') ? 'text' : 'password');
        });

        $("#btnhideTransfer").click(function () {
            $("#mnuSubTransfer").hide('type', $(this).is(':checked') ? 'text' : 'password');
        });


        $('#ShowAdmin').click(function () {
            $('#mnuSubAdmin').show('type', $(this).is(':checked') ? 'text' : 'password');
        });

        $("#btnhideAdmin").click(function () {
            $("#mnuSubAdmin").hide('type', $(this).is(':checked') ? 'text' : 'password');
        });
    });
</script>
</head>


<body>
    <form id="form1" runat="server">
        <div>
            <h2 id="fhd" style="text-align:center;background:linear-gradient(50deg,pink,skyBlue);width:200px;margin-left:660px;border-radius:10px 10px 10px 10px;">Crew Transfer Module</h2>
        <ul style="z-index:-1;">
          <div class="ShowCrewDesign">
            <li>
                <asp:CheckBox ID="ShowCrew" runat="server" CssClass="checkbox" />
            </li>
            <li>
               <asp:Label ID="crewlbl">Crew</asp:Label>     
            </li>
          </div>
          <div class="ShowCityDesign">
            <li>
                <asp:CheckBox ID="ShowCity" runat="server" CssClass="checkbox" />
            </li>
            <li>
                <asp:Label ID="citylbl">City</asp:Label>
            </li>
          </div>
          <div class="ShowTransferDesign">
               <li>
                <asp:CheckBox ID="ShowTransfer" runat="server" CssClass="checkbox" />
            </li>
            <li>
                 <asp:Label ID="transferlbl">Transfer</asp:Label>   
            </li>
          </div>
            <div class="ShowAdminDesign">
               <li>
                <asp:CheckBox ID="ShowAdmin" runat="server" CssClass="checkbox" />
            </li>
            <li>
                 <asp:Label ID="adminlbl">Admin</asp:Label>   
            </li>
          </div>

        </ul>
      </div>
        <br />

        <%--group of crew--%>
    
        <ul class="mnusubul">
            <li>
        <div id="mnuSubCrew" runat="server" style="display:none;border-style:solid;width:170px;margin-bottom:20px;">
       
        <asp:Label ID="CrC">Crew Controls</asp:Label>
        <div>
            <a href="Crew.aspx" runat="server">New</a>      <%--Crew.aspx page--%>
        </div>
        <br />
        <div>
            <a href="WebForm2.aspx" runat="server">Update Crew</a>      <%--update crew page /webform2.aspx--%>
        </div>
        <br />
        <div>
            <a href="Inactivate_Crew.aspx" runat="server">Inactivate Crew</a>          <%--Inactivate crew page--%>
        </div>
        <br />
        <div>
            <a href="getallcrew.aspx" runat="server">Get all Crew</a>             <%--get all crew page--%>
        </div>
        <br />  
        <asp:Button ID="btnhideCrew" runat="server" Text="Hide" />              <%--button for hide crew--%>
    </div>
        </li>
        
        <%--group of City--%>
    <li>
            <div id="mnuSubCity" style="display:none ;border-style:solid;width:170px;margin-bottom:20px;margin-left:250px;">          
        
        <asp:Label ID="CtC">City Controls</asp:Label>
        <div>
            <a href="City.aspx" runat="server">New</a>              <%--City page--%>
        </div>
        <br />
        <div>
            <a href="updateCity.aspx" runat="server">Update City</a>              <%--city update page--%>
        </div>
        <br />
        <div>
            <a href="Inactivate_City.aspx" runat="server">Inactivate City</a>          <%--Inactivate City page--%>
        </div>
        <br />
        <div>
            <a href="getallCities.aspx" runat="server">Get all City</a>             <%-- get all cities page--%>
        </div>
        <br />
        <asp:Button ID="btnhideCity" runat="server" Text="Hide" />      <%--button for hide City--%>
    </div>
</li>

            <%--group of Transfer--%>
    <li>
            <div id="mnuSubTransfer" style="display:none ;border-style:solid;width:170px;margin-bottom:20px;margin-left:250px;">          
        
        <asp:Label ID="TrC">Transfer Controls</asp:Label>
        <div>
            <a href="transfer.aspx" runat="server">Transfer Request</a>              <%--Transfer Request page--%>
        </div>
        <br />
        <div>
            <a href="swaprequest.aspx" runat="server">Swap request</a>              <%--Swap Request Page--%>
        </div>
        <br />
        <div>
            <a href="#" runat="server">#</a>          <%--#--%>
        </div>
        <br />
        <div>
            <a href="#" runat="server">#</a>             <%-- #--%>
        </div>
        <br />
        <asp:Button ID="btnhideTransfer" runat="server" Text="Hide" />      <%--button for hide Transfer--%>
    </div>
    </li>


          <%--group of Admin--%>
    <li>
            <div id="mnuSubAdmin" style="display:none ;border-style:solid;width:170px;margin-bottom:20px;margin-left:250px;">          
        
        <asp:Label ID="AdC">Admin Controls</asp:Label>
        <div>
            <a href="admin.aspx" runat="server">Admin Transfer approve or not approve</a>              <%--Admin page--%>
        </div>
        <br />
        <div>
            <a href="#" runat="server">#</a>              <%--Admin update page--%>
        </div>
        <br />
        <div>
            <a href="#" runat="server">#</a>          <%--Inactivate Admin page--%>
        </div>
        <br />
        <div>
            <a href="#" runat="server">#</a>             <%-- get all Admin --%>
        </div>
        <br />
        <asp:Button ID="btnhideAdmin" runat="server" Text="Hide" />      <%--button for hide Admin--%>
    </div>
        </li>
            </ul>
        
        <div>
                <footer style="text-align:center;background:linear-gradient(50deg,pink,skyBlue);width:150px;margin-left:685px;border-radius:10px 10px 10px 10px;">
                    &copy 2020 Transfer Module
                </footer>
          </div>

</form>

</body>
</html>
