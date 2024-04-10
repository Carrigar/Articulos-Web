<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="Albumes_Web.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Catálogo de productos</h2>
    <div class="container ">
        <div class="row row-cols-1 row-cols-lg-4 row-cols-md-3  row-cols-sm-2 g-4 container">
            <%
                foreach (dominio.Articulo articulo in ListaArticulo)
                { %>
            <div class="col">
                <div class="card">
                    <img src="<%: articulo.Urlimg %>" class="card-img-top" style="padding:10px;" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%: articulo.Nombre %></h5>
                        <p class="card-text"><%: articulo.Descripcion %></p>
                        <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</asp:Content>
