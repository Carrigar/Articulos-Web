<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="Albumes_Web.Error" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container ">
        <h1>¡Hubo un error!</h1>
        <asp:Label ID="lblError" Text="" runat="server" />
        <br/>
        <br/>
        <a href="Login.aspx">Volver a Login</a>
    </div>
</asp:Content>
