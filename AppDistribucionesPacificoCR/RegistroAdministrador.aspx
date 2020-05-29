<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroAdministrador.aspx.cs" Inherits="AppDistribucionesPacificoCR.RegistroAdministrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container col-md-6 col-lg-6 col-xl-6 text-center div-radius loginContainerRegistroProducto" >
        <div class="justify-content-center text-center">

            <div class="form-group mt-4">
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label Text="Registro de administradores" runat="server" style="color:white"/>
                    </div>
                </div>
            </div>

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
                        <asp:Button id="btnRegistrarAdministrador" CssClass="btn btn-light barraNavegacion" OnClick="btnRegistrarAdministrador_Click" Text="Registrar administrador" runat="server" style="color:#000000" />
                     </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
