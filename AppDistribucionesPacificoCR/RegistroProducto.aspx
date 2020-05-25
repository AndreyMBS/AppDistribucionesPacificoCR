<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroProducto.aspx.cs" Inherits="AppDistribucionesPacificoCR.RegistroProducto1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-6 col-lg-6 col-xl-6 text-center div-radius loginContainerRegistroProducto" >
        <div class="justify-content-center text-center">
            <%--Form content--%>
            <%--Title form holder--%>
            <div class="form-group mt-4">
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label Text="Registro de producto" runat="server" style="color:white"/>
                    </div>
                </div>
            </div>

            <%--Incoming name data form--%>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Marca" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox id="txtMarca" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtMarca" ErrorMessage="La marca es un campo requerido" ControlToValidate="txtMarca" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Unidad de medida" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8" >
                        <asp:DropDownList CssClass="form-control" ID="DropUnidad" class="col-md-12" runat="server">
                            <asp:ListItem Text="Selecciona una unidad de medida" />
                            <asp:ListItem Text="Unidad" />
                            <asp:ListItem Text="Peso" />
                            <asp:ListItem Text="Volumen" />
                        </asp:DropDownList>  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredDropUnidad" ErrorMessage="La medida es un campo requerido" ControlToValidate="DropUnidad" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Precio" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox id="txtPrecio" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="RequiredTxtPrecio" ErrorMessage="El precio es un campo requerido" ControlToValidate="txtPrecio" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Código de barra" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox id="txtCodigoBarra" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtCodigoBarra" ErrorMessage="El código de barra es un campo requerido" ControlToValidate="txtCodigoBarra" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

              <div class="form-group">
                 <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Proveedor" runat="server"  />
                    </div>
                    <div class="col-md-8">
                        <asp:DropDownList ID="DropProveedor" DataSourceID="dataSourceProducto" runat="server" CssClass="form-control" DataTextField="nombreCompleto" DataValueField="cedulaLegal">
                            <asp:ListItem Text="Seleccione un proveedor" Value="0" Selected="false" />
                        </asp:DropDownList>
                    </div>
                    <div class="cold-md-1">
                        <asp:RequiredFieldValidator id="requiredDropProveedor" ErrorMessage="El proveedor a vender el producto es un campo requerido." ControlToValidate="DropProveedor" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                 <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Categoria" runat="server"  />
                    </div>
                    <div class="col-md-8">
                        <asp:DropDownList ID="DropClasificacion" DataSourceID="dataSourceClasificacion" runat="server" CssClass="form-control" DataTextField="tipo" DataValueField="idClasificacion">
                            <asp:ListItem Text="Seleccione una clasificación" Value="0" Selected="false" />
                        </asp:DropDownList>
                    </div>
                    <div class="cold-md-1">
                        <asp:RequiredFieldValidator id="RequiredDropClasificacion" ErrorMessage="La clasificación del producto es requerida." ControlToValidate="DropClasificacion" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Subir foto" style="color:white;" runat="server" />
                    </div>
                    <div class="col-md-10 text-left">
                        <asp:FileUpload ID="fileUpload" style="color:white;"  runat="server" BorderStyle="None" Font-Bold="true" />
                    </div>
                </div>
            </div>

            <%--Holder to show validation messages in required fields--%>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-12 text-left">
                        <asp:ValidationSummary id="validaciones" ForeColor="White" DisplayMode="BulletList" HeaderText="Datos requeridos" Font-Names="verdana" Font-Size="12" runat="server" />
                    </div>
                </div>
            </div>

            <%--Button holder--%>

            <div class="form-group ">
                <div class="row">
                    <div class="col-md-12"> 
                        <asp:Button id="btnRegistrarProducto" CssClass="btn btn-light barraNavegacion" OnClick="btnRegistrarProducto_Click" Text="Registrar producto" runat="server" style="color:#000000" />
                    </div>
                </div>
            </div>

        </div>
    </div>

    <asp:SqlDataSource ID="dataSourceProducto" runat="server" ConnectionString='<%$ ConnectionStrings:ProyectoConnectionString %>' SelectCommand="SELECT [cedulaLegal], [nombreCompleto] FROM [TblProveedor]" />    
    <asp:SqlDataSource ID="dataSourceClasificacion" runat="server" ConnectionString='<%$ ConnectionStrings:ProyectoConnectionString %>' SelectCommand="SELECT [idClasificacion], [tipo] FROM [TblClasificacion]" />    


</asp:Content>
