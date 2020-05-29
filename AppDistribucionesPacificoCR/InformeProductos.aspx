<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="InformeProductos.aspx.cs" Inherits="AppDistribucionesPacificoCR.InformeLineaBlanca" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server" />
    <div class="Panel">
        <div class="card">
            <div class="card-header">
                <h5 class="card-title">Informe de productos</h5>
            </div>
            <div class="card-body">
                <rsweb:ReportViewer ID="ReportViewer1" width="100%" Height="450px" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226">
                    <LocalReport ReportPath="Informes\InformeProductos.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource Name="DtsModelosInformesProductos" DataSourceId="SqlDataSource2"></rsweb:ReportDataSource>
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ProyectoConnectionString %>' SelectCommand="SELECT [codBarra], [NombreProducto], [descripcion], [precioCompra], [precioVenta], [exento], [estado], [impuestoVenta], [impuestoIVA], [tipo] FROM [Vp_Informe_Productos]"></asp:SqlDataSource>
            </div>
            <div class="card-footer">

            </div>
        </div>
    </div>

</asp:Content>
