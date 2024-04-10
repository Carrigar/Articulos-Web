<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="LoginBienvenida.aspx.cs" Inherits="Albumes_Web.LoginBienvenida" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Bienvenido a tu Sesión!</h2>
        <div class="row col-8">
            <div class="col">
                <asp:Button ID="btnUser" Text="Usuario" CssClass="btn btn-success" OnClick="btnUser_Click" runat="server" />
            </div>
            <div class="col">
                <%if (IsAdmin)
                    {%>
                    <asp:Button ID="btnAdmin" Text="Administrador" CssClass="btn btn-success" OnClick="btnAdmin_Click" runat="server" />
                    <%} %>
            </div>
        </div>


    </div>

</asp:Content>
