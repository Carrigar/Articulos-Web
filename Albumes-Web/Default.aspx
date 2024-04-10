<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Albumes_Web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Bienvenido</h1>
    <%if (!UserAcive)
        { %>
    <p>
        Logueate aquí: 
            <a href="Login.aspx">Iniciar Sesión</a>
    </p>

    <% } %>
    <%if (UserAcive)
        { %>
    <p>Iniciaste Sesion!</p>

    <% } %>
</asp:Content>
