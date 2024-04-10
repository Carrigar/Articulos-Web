<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="Albumes_Web.Email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container col-8">
        <h2>Envíame un correo</h2>

        <asp:Label ID="lblCorreo" cssclass="form-label" runat="server" Text="Correo"></asp:Label>
        <asp:TextBox ID="txtCorreo" cssclass="form-control" runat="server"></asp:TextBox>
        <asp:Label ID="lblAsunto" cssclass="form-label" runat="server" Text="Asunto"></asp:Label>
        <asp:TextBox ID="txtAsunto" cssclass="form-control" runat="server"></asp:TextBox>
        <asp:Label ID="lblMensaje" cssclass="form-label" runat="server" Text="Mensaje"></asp:Label>
        <asp:TextBox ID="txtMensaje" cssclass="form-control" TextMode="multiline" runat="server"></asp:TextBox>
        <asp:button ID="btnEnviar" cssclass="btn btn-success mt-2" text="Enviar" runat="server" />
    </div>
</asp:Content>
