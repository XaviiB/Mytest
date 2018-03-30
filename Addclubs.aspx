<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="~/Addclubs.aspx.cs"  Inherits="WebApplication5.Addclubs" %>
<%@ Register TagName="UserControls" TagPrefix="Clubs" Src="~/WebUserControl1.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <h1>ADD CLUB</h1>
    <Clubs:UserControls ID="ClubUser" runat="server" />
    
    <br />
    <br/>
     <asp:Label ID="Label3" runat="server" Text="Registration Number: "></asp:Label><br />
    <asp:TextBox ID="Regnumbtxt" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Regustraion Number Required" ControlToValidate="Regnumbtxt" ForeColor="Red" ></asp:RequiredFieldValidator> <asp:RegularExpressionValidator id="RequiredValidateField1" ValidationExpression="^[ 0-9]+${8}" ErrorMessage="Numbers Only" ControlToValidate="Regnumbtxt" runat="server" ForeColor="Red"></asp:RegularExpressionValidator>
    <br />
    <br />
     <asp:Label ID="Label4" runat="server" Text="Address: "></asp:Label><br /><asp:TextBox ID="Address" runat="server"></asp:TextBox>
    <br />
    <br />


    <asp:Button ID="SaveBut" runat="server" Text="Save" OnClick="Button1_Click"/>
         
    <asp:Button ID="CancelBut" runat="server" style="margin-left: 15px" Text="Cancel" OnClick="Button2_Click"  CausesValidation="false"/>
    <br/>
    <br/>

    <asp:Button id="AddPlayerBut" runat="server" Text="Add Player" OnClick="Button3_Click" CausesValidation="false" ></asp:Button>

    <br/>
    <br/>
    <asp:Label id="PlayerLab" runat="server" Text="Player Name:"></asp:Label><br/><asp:TextBox id="PlyerNam" runat="server"></asp:TextBox>
    <br/>
    <asp:Label id="DOB" runat="server" Text="D.O.B:"></asp:Label><br/><asp:TextBox id="DOB1" runat="server"></asp:TextBox>
    <br/>
    <asp:Label id="PlayerNum" runat="server" Text="Player Number:"></asp:Label><br/><asp:TextBox id="PlyerNum" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="PlyerNum" ErrorMessage="Must be between 0-99" ForeColor="Red" MaximumValue="99" MinimumValue="0"></asp:RangeValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="PlyerNum" ErrorMessage="NumbersOnly" ForeColor="Red" ValidationExpression="^[ 0-99]+${2}"></asp:RegularExpressionValidator>
    <br/>
    <br/>
     <asp:Button id="SavePlayBut" runat="server" Text="Save Player" OnClick="Button4_Click" CausesValidation="false" ></asp:Button>
     <asp:Button id="CancelPlayBut" runat="server" Text="Cancel Player" OnClick="Button5_Click" CausesValidation="false" ></asp:Button>


    </asp:Content>
