<%@ Page Title="" Language="C#" MasterPageFile="~/Proyect/Forms/Master.Master" AutoEventWireup="true" CodeBehind="FrmFamilia.aspx.cs" Inherits="VentaProductos.Proyect.Forms.Formulario_web11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Familia
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <form runat="server">
        <div class="row justify-content-center w-100 mt-3">
            <div class="col-3 mt-3">
                <div class="p-4 rounded-3 bg-light shadow">
                    <h5 class="text-center">Formulario IN05</h5>
                    <asp:TextBox runat="server" ID="txtNombreFamilia" placeholder="Nombre familia" CssClass="form-control my-4" required="true" />
                    <asp:TextBox runat="server" ID="txtUsuarioIngreso" placeholder="Usuario ingreso" CssClass="form-control my-4" required="true" />

                    <asp:DropDownList runat="server" id="listEstado" placeholder="Estado" CssClass="text-secondary form-select my-4">
                        <asp:ListItem Text="Estado" />                     
                        <asp:ListItem Text="0" />
                        <asp:ListItem Text="1" />
                    </asp:DropDownList>

                    <asp:Label Text="Resultado: Producto agregado." runat="server" ID="lblExito" class="d-block alert alert-success" Visible="false" />
                    <asp:Label Text="Resultado: Error de sistema." runat="server" ID="lblError" class="d-block alert alert-danger" Visible="false" />

                    <div class="d-grid mt-4">
                        <asp:Button Text="Agregar" runat="server" ID="btnAgregar" OnClick="btnAgregarFamilia_Click" class="d-block btn btn-outline-primary" />
                    </div>
                </div>
            </div>

            <div class="col-9" style="height: 85vh; width: 70%; overflow: auto;">
                <h5 class="text-center">Lista de productos</h5>
                <asp:GridView runat="server" ID="gridFamilia" CssClass="table table-striped bg-light">
                </asp:GridView>
            </div>
        </div>
    </form>
</asp:Content>