<%@ Page Title="" Language="C#" MasterPageFile="~/Proyect/Forms/Master.Master" AutoEventWireup="true" CodeBehind="FrmProductos.aspx.cs" Inherits="VentaProductos.Proyect.Forms.Formulario_web1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Productos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <form runat="server">
        <div class="row justify-content-center w-100">
            <div class="col-3 mt-3">
                <div class="p-4 rounded-3 bg-light shadow">
                    <h5 class="text-center">Formulario IN04</h5>
                    <asp:TextBox runat="server" ID="txtDescripcion" placeholder="Descripcion" class="form-control mb-3" required="true"/>
                    <asp:TextBox runat="server" ID="txtPrecio" placeholder="Precio" class="form-control mb-3" required="true"/>
                    <asp:TextBox runat="server" ID="txtSaldo" placeholder="Saldo" class="form-control mb-3" required="true"/>
                    <asp:TextBox runat="server" TextMode="DateTimeLocal" ID="txtFecha" placeholder="Fecha" class="form-control mb-3" required="true"/>
                    <asp:TextBox runat="server" ID="txtUsuario" placeholder="Usuario" class="form-control mb-3" required="true"/>
                    <asp:TextBox runat="server" ID="txtFamilia" placeholder="Familia" class="form-control mb-3" required="true"/>
                    <asp:Label Text="Resultado: Producto agregado." runat="server" ID="lblExito" class="d-block alert alert-success" Visible="false"/>
                    <asp:Label Text="Resultado: Error de sistema." runat="server" ID="lblError" class="d-block alert alert-danger" Visible="false"/>

                    <div class="d-grid my-2">
                        <asp:Button Text="Agregar" runat="server" ID="btnAgregar" OnClick="btnAgregar_Click" class="d-block btn btn-outline-primary"/>
                    </div>
                </div>
            </div>

            <div class="col-9" style="height:85vh; width:70%; overflow:auto;">
                <h5 class="text-center">Lista de productos</h5>
                <asp:GridView runat="server" ID="gridProductos" CssClass="table table-striped bg-light">
                </asp:GridView>
            </div>
        </div>
    </form>
</asp:Content>
