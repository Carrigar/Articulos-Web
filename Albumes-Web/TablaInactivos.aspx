<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="TablaInactivos.aspx.cs" Inherits="Albumes_Web.TablaInactivos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Tabla de artículos Inactivos</h2>
    <div class="container col-10 mt-3">
        <asp:GridView ID="dgvIactivos" CssClass="table table-striped" DataKeyNames="Id" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvIactivos_SelectedIndexChanged">
            <Columns>
                <asp:BoundField HeaderText="Id" DataField="Id" />
                <asp:BoundField HeaderText="Código" DataField="Codigo" />
                <asp:BoundField HeaderText="Articulo" DataField="Nombre" />
                <asp:BoundField HeaderText="Marca" DataField="Marca.Descripcion" />
                <asp:BoundField HeaderText="Categoria" DataField="Categoria.Descripcion" />
                <asp:BoundField HeaderText="Precio" DataField="Precio" />          
                <asp:CommandField ShowSelectButton="true" HeaderText="Seleccionar" SelectText="Restaurar"/>
            </Columns>
        </asp:GridView>
        <a href="Tabla.aspx">Cancelar</a>
    </div>
</asp:Content>
