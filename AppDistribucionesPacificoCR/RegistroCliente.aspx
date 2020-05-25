<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroCliente.aspx.cs" Inherits="AppDistribucionesPacificoCR.RegistroCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-md-6 col-lg-6 col-xl-6 text-center div-radius loginContainerRegistroProducto" >
        <div class="justify-content-center text-center">
            <div class="form-group mt-4">
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label Text="Registro de cliente" runat="server" style="color:white"/>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Nombre completo" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox id="txtNombre" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtNombre" ErrorMessage="El nombre es un campo requerido" ControlToValidate="txtNombre" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Cedula" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox id="txtCedula" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtCedula" ErrorMessage="El precio es un campo requerido" ControlToValidate="txtCedula" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Telefono" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox id="txtTelefono" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtTelefono" ErrorMessage="El teléfono es un campo requerido" ControlToValidate="txtTelefono" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Email" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox id="txtEmail" type="email" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtEmail" ErrorMessage="El email es un campo requerido" ControlToValidate="txtEmail" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Direccion" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox id="txtDireccion" type="text" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtDireccion" ErrorMessage="La direccion es un campo requerido" ControlToValidate="txtDireccion" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <p style="color:white;"><b>_________________________________________________________________________________________________</b></p>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Nombre de usuario" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox id="txtNombreUsuario" type="text" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtNombreUsuario" ErrorMessage="El nombre de usuario es un campo requerido" ControlToValidate="txtNombreUsuario" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Contraseña de usuario" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox type="password" id="txtContrasenaUsuario" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtContrasenaUsuario" ErrorMessage="La contraseña de su usuario es un campo requerido" ControlToValidate="txtContrasenaUsuario" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-12 text-left">
                        <asp:ValidationSummary id="validaciones" ForeColor="White" DisplayMode="BulletList" HeaderText="Datos requeridos" Font-Names="verdana" Font-Size="12" runat="server" />
                    </div>
                </div>
            </div>

            <div class="form-group ">
                <div class="row">
                    <div class="col-md-12"> 
                        <asp:Button id="btnRegistrarProducto" CssClass="btn btn-light barraNavegacion" Text="Registrar producto" runat="server" style="color:#000000" />
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
