<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="FormsEx.aspx.cs" Inherits="Albumes_Web.FormsEx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3">
        <h2>Formulario por Filtro</h2>

        <%--  Se necesita SCRIPTMANAGER -> UPDATEPANEL -> CONTENTTEMPLATE --%>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container row mt-3">
                    <div class="col">
                        <asp:Label ID="lblMarca" Text="Marca" CssClass="form-label" runat="server" />
                        <asp:DropDownList ID="ddlMarca" CssClass="btn btn-sm active" OnSelectedIndexChanged="ddlMarca_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:DropDownList>
                    </div>
                    <div class="col">
                        <asp:Label ID="lblArticulo" Text="Artículo" CssClass="form-label" runat="server" />
                        <asp:DropDownList ID="ddlArticulo" CssClass="btn btn-sm active" runat="server"></asp:DropDownList>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
