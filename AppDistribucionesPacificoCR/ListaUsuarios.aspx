<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ListaUsuarios.aspx.cs" Inherits="AppDistribucionesPacificoCR.ListaUsuarios" %>
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
                                <h4 class="card-title">Lista de Clientes</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <%--Creacion de los item de cada moto registrada en la BD--%>

                    <asp:DataList ID="lista" runat="server" RepeatLayout="table"
                        RepeatDirection="Horizontal"
                        RepeatColumns="2"
                        DataSourceID="dataSource"
                        AlternatingItemStyle-Wrap="true"
                        CssClass="table table-responsive-lg"
                        OnItemCommand="">
                        <ItemTemplate>
                            <div class="Card">
                                <div class="card-header">
                                    <h5 class="card-title text-center">
                                        <%--Serie--%>
                                        <asp:Label ID="lblCedula" Text='<%# DataBinder.Eval(Container.DataItem,"cedula") %>' Font-Bold="true" runat="Server" />
                                    </h5>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <asp:Label Text="Nombre" runat="server" />
                                                <asp:Label ID="lblNombreCompleto" Text='<%#DataBinder.Eval(Container.DataItem, "nombreCompleto") %>' Font-Bold="true"
                                                    runat="server" />
                                            </div>
                                        </div>

                                        <%--Campo para la marca de la moto.--%>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <asp:Label Text="Email: " runat="server" />
                                                <asp:Label ID="lblEmail" Text='<%#DataBinder.Eval(Container.DataItem, "email") %>' Font-Bold="true"
                                                    runat="server" />
                                            </div>
                                        </div>
                                        <%--Campo para el botón de acciones--%>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target='#ID<%# DataBinder.Eval(Container.DataItem, "cedula") %>'>Acciones</button>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <%--Modal de acciones--%>
                            <div id='ID<%# DataBinder.Eval(Container.DataItem,"cedula") %>' class="modal" tabindex="-1" role="dialog">
                                <div class="modal-dialog modal-dialog-centered" role="Document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Selecciona la acción a realizar</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <asp:Button ID="btnAsignarRol" Text="Asignar rol" runat="server"
                                            CommandName="asignarrol"
                                            CommandArgument='<%# ( (DataListItem) Container).ItemIndex %>'    
                                            CssClass="btn btn-primary" />
                                                
                                            <asp:Button ID="btnEliminar" Text="Eliminar usuario" runat="server" CssClass="btn btn-info"
                                             CommandName="eliminar"
                                             CommandArgument='<%# ( (DataListItem) Container).ItemIndex %>'/>
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
    
    
    
</asp:Content>
