<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CatalogoLineaBlanca.aspx.cs" Inherits="AppDistribucionesPacificoCR.CatalogoProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-lg-10 mt-5">
        <div class="justify-content-center text-center">
            <div class="card">
                <div class="card-header">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <h4 class="card-title">Catálogo de línea blanca</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body">

                    <asp:DataList ID="lista" runat="server" RepeatLayout="table"
                        RepeatDirection="Horizontal"
                        RepeatColumns="3"
                        DataSourceID="dataProductos"
                        AlternatingItemStyle-Wrap="true"
                        CssClass="table table-responsive-lg">
                        <ItemTemplate>
                            <div class="Card">
                                <div class="card-header">
                                    <h5 class="card-title text-center">

                                        <asp:Label ID="lblNombreProducto" Text='<%# DataBinder.Eval(Container.DataItem,"nombreProducto") %>' Font-Bold="true" runat="Server" />
                                    </h5>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <asp:Label Text="Descripción: " runat="server" />
                                                <asp:Label ID="lblDescripcion" Text='<%#DataBinder.Eval(Container.DataItem, "descripcion") %>' Font-Bold="true"
                                                    runat="server" />
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <asp:Label Text="Precio: " runat="server" />
                                                <asp:Label ID="lblPrecio" Text='<%#DataBinder.Eval(Container.DataItem, "precioVenta") %>' Font-Bold="true"
                                                    runat="server" />
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <img src='CatalogoProductos/<%# Eval("foto") %>'
                                                        alt='<%#Eval("codBarra") %>'
                                                        class="img-fluid rounded"
                                                        style="width: 580px; height: 250px" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target='#ID<%# DataBinder.Eval(Container.DataItem, "codBarra") %>'>Agregar al carrito</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id='ID<%# DataBinder.Eval(Container.DataItem,"codBarra") %>' class="modal" tabindex="-1" role="dialog">
                                <div class="modal-dialog modal-dialog-centered" role="Document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" style="color: #46a74e;">Producto agregado correctamente al carrito</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">

                                            <div class="container">
                                                <div class="row">
                                                    <div class="col">
                                                        <%--CARD BODY COMPLETO--%>

                                                        <div class="card-body">
                                                            <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <img src='CatalogoProductos/<%# Eval("foto") %>'
                                                                            alt='<%#Eval("codBarra") %>'
                                                                            class="img-fluid rounded"
                                                                            style="width: 400px; height: 160px" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                             <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-dismiss="modal" %>Continuar con la compra</button>
                                                                    </div>
                                                                </div>
                                                          </div>
                                                        </div>

                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <asp:Label Text="Nombre: " runat="server" />
                                                                        <asp:Label ID="Label1" Text='<%#DataBinder.Eval(Container.DataItem, "nombreProducto") %>' Font-Bold="true"
                                                                            runat="server" />
                                                                    </div>
                                                                </div>
                                                          </div>
                                                        <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <asp:Label Text="Precio: " runat="server" />
                                                                        <asp:Label ID="Label2" Text='<%#DataBinder.Eval(Container.DataItem, "precioVenta") %>' Font-Bold="true"
                                                                            runat="server" />
                                                                    </div>
                                                                </div>
                                                          </div>
                                                        <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <asp:Label Text="Exento de impuestos: " runat="server" />
                                                                        <asp:Label ID="Label3" Text='<%#DataBinder.Eval(Container.DataItem, "exento") %>' Font-Bold="true"
                                                                            runat="server" />
                                                                    </div>
                                                                </div>
                                                          </div>
                                                        <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <asp:Label Text="Descripción: " runat="server" />
                                                                        <asp:Label ID="Label4" Text='<%#DataBinder.Eval(Container.DataItem, "descripcion") %>' Font-Bold="true"
                                                                            runat="server" />
                                                                    </div>
                                                                </div>
                                                          </div>

                                                          

                                                        <div class="form-group">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-dismiss="modal" %>Ir al carrito</button>
                                                                    </div>
                                                                </div>
                                                          </div>

                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>

    <asp:SqlDataSource ID="dataProductos" runat="server" ConnectionString='<%$ ConnectionStrings:ProyectoConnectionString %>' SelectCommand="SELECT codBarra, nombreProducto, descripcion, precioVenta, foto, exento FROM TblProducto WHERE (idClasificacion = 1) AND (estado='Disponible')"></asp:SqlDataSource>


</asp:Content>
