<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="FormArticulo.aspx.cs" Inherits="Albumes_Web.FormArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


    <h2>Formulario de Artículo</h2>
    <div class="container row">
        <div class="col-6">
            <div class="mb-3">
                <asp:Label ID="lblId" CssClass="form-label" Text="Id" runat="server" />
                <asp:TextBox ID="txtId" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="lblCodigo" CssClass="form-label" Text="Código" runat="server" />
                <asp:TextBox ID="txtCodigo" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="lblNombre" CssClass="form-label" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="lblPrecio" CssClass="form-label" runat="server" Text="Precio"></asp:Label>
                <asp:TextBox ID="txtPrecio" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="row mb-2">
                <div class="col-2">
                    <div class="mb-3 mt-1">
                        <asp:Label ID="lblMarca" CssClass="form-label" runat="server" Text="Marca"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblCategoria" CssClass="form-label" runat="server" Text="Categoria"></asp:Label>
                    </div>
                </div>
                <div class="col">
                    <div class="mb-2">
                        <asp:DropDownList ID="ddlMarca" CssClass="btn btn-sm active" runat="server"></asp:DropDownList>
                    </div>
                    <div>
                        <asp:DropDownList ID="ddlCategoria" CssClass="btn btn-sm active" runat="server"></asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <asp:Label ID="lblDescripcion" CssClass="form-label" runat="server" Text="Descripción"></asp:Label>
                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnAceptar" Text="Aceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" runat="server" />
                <a href="Tabla.aspx">Cancelar</a>
            </div>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <div class="mt-2">
                        <asp:Button ID="btnEliminar" Text="Eliminar" CssClass="btn  btn-danger" OnClick="btnEliminar_Click" runat="server" />
                        <asp:Button ID="btnDesactivar" Text="Dar de baja" CssClass="btn  btn-secondary" OnClick="btnDesactivar_Click" runat="server" />
                    </div>
                     <%if (confirmInactivar)

                        {%>
                    <div class="mt-2">
                        <asp:CheckBox ID="chkConfirmInactivar" runat="server" />
                        <asp:Label Text="Confimar baja..." CssClass="form-label" runat="server" />
                        <asp:Button ID="btnConfirmBaja" Text="Dar de baja" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnConfirmBaja_Click" runat="server" />
                    </div>
                    <%} %>


                    <%if (confirmEliminar)

                        {%>
                    <div class="mt-2">
                        <asp:CheckBox ID="chkConfirmEliminar" runat="server" />
                        <asp:Label Text="( ! ) Confimar eliminación permanente ..." Style="color: red;" runat="server" />
                        <asp:Button ID="btnConfirmEliminar" Text="Eliminar" CssClass="btn btn-sm btn-outline-danger" OnClick="btnConfirmEliminar_Click" runat="server" />
                    </div>
                    <%} %>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="col-6">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <asp:Label ID="lblUrlImg" CssClass="form-label" runat="server" Text="URL Imagen"></asp:Label>
                        <asp:TextBox ID="txtUrlImg" CssClass="form-control" OnTextChanged="txtUrlImg_TextChanged" AutoPostBack="true" runat="server"></asp:TextBox>
                    </div>
                    <div class="container text-center col-10">
                        <asp:Image ID="imgArticulo" runat="server" Width="100%" />
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>


</asp:Content>

