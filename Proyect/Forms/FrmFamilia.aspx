<%@ Page Title="" Language="C#" MasterPageFile="~/Proyect/Forms/Master.Master" AutoEventWireup="true" CodeBehind="FrmFamilia.aspx.cs" Inherits="VentaProductos.Proyect.Forms.Formulario_web11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Familia
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <form runat="server">
        <div class="form-container my-4">
            <div class="form card p-3 bg-secondary">
                <h4 class="text-center title">Formulario IN05</h4>
                <asp:TextBox runat="server" ID="txtFamiliaId" placeholder="ID" CssClass="form-control my-2" />
                <asp:TextBox runat="server" ID="txtNombreFamilia" placeholder="Nombre familia" CssClass="form-control my-2" />
                <asp:TextBox runat="server" ID="txtUsuarioIngreso" placeholder="Usuario ingreso" CssClass="form-control my-2" />
                <asp:TextBox runat="server" ID="txtEstado" placeholder="Estado" CssClass="form-control my-2" />
                <asp:Label Text="Resultado:" runat="server" ID="lblFamilia" CssClass="lbl my-2 alert alert-warning p-1" />
                <asp:Button Text="Agregar" runat="server" ID="btnAgregarFamilia" OnClick="btnAgregarFamilia_Click" CssClass="btn btn-dark" />
            </div>
            <div class="data grid2">
                <h5>Lista de familia</h5>
                <asp:GridView runat="server" ID="gridFamily" CellPadding="5" CellSpacing="10" EmptyDataText="Sin datos" CssClass="bg-white">
                    <AlternatingRowStyle BackColor="#000000" ForeColor="White" />
                </asp:GridView>
            </div>
        </div>
    </form>
</asp:Content>