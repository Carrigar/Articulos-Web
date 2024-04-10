<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Tabla.aspx.cs" Inherits="Albumes_Web.Tabla" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


    <h2>Tabla de artículos</h2>
    <div class="container col-10 mt-3">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="col-6 mb-3">
                    <h5>Filtro:</h5>
                    <%--<asp:Label runat="server" CssClass="form-label" Text="Filtro:"></asp:Label>--%>
                    <asp:TextBox ID="txtFiltro" runat="server" OnTextChanged="txtFiltro_TextChanged" AutoPostBack="true" CssClass="form-control"></asp:TextBox>
                    <asp:CheckBox ID="chkFiltroAvanzado" Text="Filtro Avanzado:" AutoPostBack="true" OnCheckedChanged="chkFiltroAvanzado_CheckedChanged" runat="server" />
                </div>
                <% if (chkFiltroAvanzado.Checked)
                    {%>
                   <div class="row mb-3">
                    <div class="col-3">
                        <asp:Label Text="Campo" CssClass="form-label" runat="server" />
                        <asp:DropDownList ID="ddlCampo" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged" runat="server">
                            <asp:ListItem Text="Precio" />
                            <asp:ListItem Text="Categoría" />
                            <asp:ListItem Text="Marca" />
                        </asp:DropDownList>
                    </div>
                    <div class="col-3">
                        <asp:Label Text="Citerio" CssClass="form-label" runat="server" />
                        <asp:DropDownList ID="ddlCriterio" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                    <div class="col-4">
                        <asp:Label Text="Filtro" CssClass="form-label" runat="server" />
                        <asp:TextBox ID="txtFiltroAvanzado" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-2 pt-4">
                        <asp:Button ID="btnFiltro" CssClass="btn btn-primary" OnClick="btnFiltro_Click" runat="server" Text="Filtrar" />
                    </div>
                </div>
                    <%} %>
             


                <asp:GridView ID="dgvArticulos" CssClass="table table-striped" DataKeyNames="Id" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvArticulos_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField HeaderText="Id" DataField="Id" />
                        <asp:BoundField HeaderText="Código" DataField="Codigo" />
                        <asp:BoundField HeaderText="Articulo" DataField="Nombre" />
                        <asp:BoundField HeaderText="Marca" DataField="Marca.Descripcion" />
                        <asp:BoundField HeaderText="Categoria" DataField="Categoria.Descripcion" />
                        <asp:BoundField HeaderText="Precio" DataField="Precio" />
                        <asp:CommandField ShowSelectButton="true" HeaderText="Editar" SelectText="&#128393" />
                    </Columns>
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
        <a href="FormArticulo.aspx" class="btn btn-primary">Agregar</a>
        <a href="TablaInactivos.aspx" class="btn btn-secondary">Ver Inactivos</a>
    </div>
</asp:Content>
