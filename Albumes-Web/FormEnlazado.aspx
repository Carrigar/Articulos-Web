<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="FormEnlazado.aspx.cs" Inherits="Albumes_Web.FormEnlazado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="container mt-3">
        <h2>Formulario Enlazado</h2>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container row">
                    <div class="col">
                        <asp:Label ID="lblIndex" Text="Indice:" CssClass="form-label" runat="server" />
                        <asp:TextBox ID="txtIndex" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Button ID="btnAceptar" runat="server" CssClass="btn btn-secondary mt-1" OnClick="btnAceptar_Click" Text="Button" />
                    </div>
                    <div class="col">
                        <asp:Label ID="lblCategoria" runat="server" CssClass="form-label" Text="Categoría"></asp:Label> <br>
                        <asp:DropDownList ID="ddlSelectCategoria" CssClass="btn active" runat="server"></asp:DropDownList>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
