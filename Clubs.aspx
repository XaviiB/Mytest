<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Clubs.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<%@ Register Src="~/ClubsWebCon.ascx" TagPrefix="uc1" TagName="ClubsWebCon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
     <H1>Clubs <br />
     </H1>

    <uc1:ClubsWebCon runat="server" ID="ClubsWebCon" />
    <p></p>

</asp:Content>
