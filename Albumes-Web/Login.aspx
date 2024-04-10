<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Albumes_Web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container row">
        <div class="container col-7">
            <h2>Iniciar Sesión</h2>
            <asp:Label ID="lblUser" CssClass="form-label" runat="server" Text="Usuario"></asp:Label>
            <asp:TextBox ID="txtUser" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:Label ID="lblPassword" CssClass="form-label" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="txtPassword" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
            <asp:Button ID="btnIngresar" CssClass="btn btn-success  m-2" Text="Ingresar" OnClick="btnIngresar_Click" runat="server" />
            <a href="Default.aspx">Volver...</a>
        </div>
        <div class="col">
        </div>
    </div>
</asp:Content>
