<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="FormImg.aspx.cs" Inherits="Albumes_Web.FormImg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container mt-3">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="col">
                    <asp:TextBox ID="txtUrl" CssClass="form-label" runat="server"></asp:TextBox>
                    <asp:Button ID="BtnCargar" runat="server" OnClick="BtnCargar_Click" Text="Cargar" />
                </div>
                <div class="col">
                    <img src="<%: UrlImg %>" alt="Alternate Text" width="35%"/>


                </div>



            </ContentTemplate>
        </asp:UpdatePanel>



    </div>



</asp:Content>
