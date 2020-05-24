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
                        <asp:Label Text="Categoría" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtCategoria" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtCategoria" ErrorMessage="La categoría es un campo requerido" ControlToValidate="txtCategoria" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

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
                    <div class="col-md-8">
                        <asp:TextBox id="txtMedida" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtMedida" ErrorMessage="La medida es un campo requerido" ControlToValidate="txtMedida" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator id="RequiredTxtPrecio" ErrorMessage="El precio es un campo requerido" ControlToValidate="txtMedida" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
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
                        <asp:DropDownList id="DropProveedor" runat="server" CssClass="form-control"/>
                    </div>
                    <div class="cold-md-1">
                        <asp:RequiredFieldValidator id="requiredDropDown" ErrorMessage="El proveedor a vender el producto es un campo requerido." ControlToValidate="DropProveedor" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
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
                        <asp:Button id="btnRegistrarCompra" CssClass="btn btn-light barraNavegacion" Text="Registrar producto" runat="server" style="color:#000000" />
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
