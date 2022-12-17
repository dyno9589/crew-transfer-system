<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Crew.aspx.cs" Inherits="CrewTransfer_module.Crew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1 style="color:black;">Crew Page</h1>

    <asp:Label ID="lblCrewId" runat="server" Text="Crew Id :" ></asp:Label>
    <asp:TextBox ID="TxtCrewId" runat="server" Enabled="false"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblCrewName" runat="server" Text="Crew Name :"></asp:Label>
    <asp:TextBox ID="TxtCrewName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorforcrewname" runat="server" ErrorMessage="please fill your Name" ControlToValidate="TxtCrewName" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblAddress" runat="server" Text="Address :"></asp:Label>
    <asp:TextBox ID="TxtAddress" runat="server" MaxLength="200" TextMode="MultiLine" Height="19px" Width="142px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorforAddress" runat="server" ErrorMessage="please fill your Address" ControlToValidate="TxtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblContact" runat="server" Text="Contact Number :"></asp:Label>
    <asp:TextBox ID="TxtContact" runat="server" MaxLength="10"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorforcontact" runat="server" ErrorMessage="please fill your Contact Number" ControlToValidate="TxtContact" ForeColor="Red"></asp:RequiredFieldValidator>
    <br/>
    <br />
     <asp:Label ID="lblBloodGroup" runat="server" Text="Blood Group :"></asp:Label>
    <asp:DropDownList ID="ddlBloodGroup" runat="server">
        <asp:ListItem Enabled="true" Text="select Blood Group" Value="-1"></asp:ListItem>
        <asp:ListItem Enabled="true" Text="A+" Value="A+"></asp:ListItem>
        <asp:ListItem Enabled="true" Text="A-" Value="A-"></asp:ListItem>
        <asp:ListItem Enabled="true" Text="B+" Value="B+"></asp:ListItem>
        <asp:ListItem Enabled="true" Text="B-" Value="B-"></asp:ListItem>
        <asp:ListItem Enabled="true" Text="O+" Value="O+"></asp:ListItem>
        <asp:ListItem Enabled="true" Text="O-" Value="O-"></asp:ListItem>
        <asp:ListItem Enabled="true" Text="AB+" Value="AB+"></asp:ListItem>
        <asp:ListItem Enabled="true" Text="AB-" Value="AB-"></asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorforbloodgr" runat="server" ErrorMessage="please choose your Blood Group" ControlToValidate="ddlBloodGroup" ForeColor="Red"></asp:RequiredFieldValidator>
    <br/>
    <br />
    <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth :"></asp:Label>
    <asp:TextBox ID="TxtDOB" runat="server" MaxLength="10" TextMode="Date" Height="20px" Width="174px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorforDOB" runat="server" ErrorMessage="please fill your Date of Birth" ControlToValidate="TxtDOB" ForeColor="Red"></asp:RequiredFieldValidator>
    <br/>
    <br />
    <asp:Label ID="lblWorkingCity" runat="server" Text="Working City :"></asp:Label>
    <asp:DropDownList ID="ddlWorkingCities" AutoPostBack="true" runat="server"></asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorforworkingcity" runat="server" ErrorMessage="please choose your Working City" ControlToValidate="ddlWorkingCities" ForeColor="Red"></asp:RequiredFieldValidator>
    <br/>
    <br />
    <asp:Label ID="lblDOJoining" runat="server" Text="Date Of Joining :"></asp:Label>
    <asp:TextBox ID="TxtDOJoining" runat="server" TextMode="Date" Height="16px" Width="161px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorforDOJoining" runat="server" ErrorMessage="please fill your date of joining" ControlToValidate="TxtDOJoining" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblDesignationCode" runat="server" Text="Designation Code :"></asp:Label>
    <asp:DropDownList ID="ddlDesignationCode" runat="server">
        <asp:ListItem Enabled="true" Text="select DesignationCode" Value="-1"></asp:ListItem>
        <asp:ListItem Enabled="true" Text="001" Value="Senior"></asp:ListItem>
        <asp:ListItem Enabled="true" Text="002" Value="Lead"></asp:ListItem>
        <asp:ListItem Enabled="true" Text="003" Value="Fresher"></asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorfordesignationcode" runat="server" ErrorMessage="please choose your designation" ControlToValidate="ddlDesignationCode" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblcreateusername" runat="server" Text="Create Username :"></asp:Label>
    <asp:TextBox ID="txtcreateusername" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorforusername" runat="server" ErrorMessage="please fill a Userame for login" ControlToValidate="txtcreateusername" ForeColor="Red"></asp:RequiredFieldValidator>
    <br/>
    <br/>
    <asp:Label ID="lblcreatepass" runat="server" Text="Create Password :"></asp:Label>
    <asp:TextBox ID="txtcreatepass" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorforpassword" runat="server" ErrorMessage="please fill a Password for login" ControlToValidate="txtcreatepass" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click"/>
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click"/>
     <br />
    <br />
    <asp:Label ID="lblsaved" runat="server" Text=""></asp:Label>

</asp:Content>
