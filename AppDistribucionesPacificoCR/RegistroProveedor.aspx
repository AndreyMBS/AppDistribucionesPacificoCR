<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegistroProveedor.aspx.cs" Inherits="AppDistribucionesPacificoCR.RegistroProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container col-lg-6 col-sm-6 col-md-6 col-xl-6 text-center div-radius registroProveedor">
        <div class="justify-content-center text-center">
             <%--contenido del formulario--%>
            <%--contenedor del titulo para formulario--%>
            <div class="form-group mt-4">
                <div class="row">
                    <div class="col-md-12">
                       <asp:Label Text="Registro de Proveedor" runat="server" style="color:white;"/>
                    </div>
                </div>
            </div>
            <%--contenedor para la entrada de datos para la cédula--%>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label Text="Cédula Legal" runat="server" style="color:white;" />
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtCedula" CssClass="form-control" runat="server"
                            placeholder="##-###-###" MaxLength="12" />
                    </div>
                     <div class="col-md-1"> <%--validador de campo requerido--%>
                        <asp:RequiredFieldValidator id="requiredTxtCedula"
                            ErrorMessage="Por favor, la cédula es requerida" 
                            ControlToValidate="txtCedula" 
                            ForeColor="Red"
                            runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>


            <%--contenedor para la entrada de datos del nombre completo--%>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label Text="Nombre Completo" runat="server" style="color:white;"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtNombreCompleto" CssClass="form-control" runat="server"
                            placeholder="Nombre Apellido1 Apellido2" MaxLength="80" />
                    </div>
                    <div class="col-md-1"> <%--validador de campo requerido--%>
                        <asp:RequiredFieldValidator id="RequiredTxtNombreCompleto"
                            ErrorMessage="Por favor, el nombre es requerido" 
                            ControlToValidate="txtNombreCompleto" 
                            ForeColor="Red"
                            runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <%--contenedor para la entrada de datos de telefono--%>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label Text="Teléfono" runat="server" style="color:white;"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtTelefono" CssClass="form-control" placeholder="########"
                             TextMode="Number" MaxLength="8" runat="server" />
                    </div>
                    <div class="col-md-1"> <%--validador de campo requerido--%>
                        <asp:RequiredFieldValidator id="RequiredtxtTelefono"
                            ErrorMessage="Por favor, el teléfono es requerido" 
                            ControlToValidate="txtTelefono" 
                            ForeColor="Red"
                            runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <%--contenedor para la entrada de datos email--%>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label Text="Email" runat="server" style="color:white;"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="distribuciones@domain.com"
                            MaxLength="50" TextMode="Email" runat="server" />
                    </div>
                    <div class="col-md-1"> <%--validador de campo requerido--%>
                        <asp:RequiredFieldValidator id="RequiredTxtEmail"
                            ErrorMessage="Por favor, el email es requerido" 
                            ControlToValidate="txtEmail" 
                            ForeColor="Red"
                            runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-3">
                        <asp:Label Text="Dirección" runat="server" style="color:white;" />
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtDireccion" CssClass="form-control" 
                            MaxLength="100" runat="server" />
                    </div>
                    <div class="col-md-1"> <%--Validador de campo requerido--%>
                        <asp:RequiredFieldValidator id="RequiredFieldValidator1"
                            ErrorMessage="Por favor, el email es requerido" 
                            ControlToValidate="txtDireccion" 
                            ForeColor="Red"
                            runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            

            <%--contenedor para mostrar mensajesde validación de campos obligatorios--%>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-12 text-left">
                        <asp:ValidationSummary 
                             id="validaciones"
                             ForeColor="White" 
                             DisplayMode="BulletList" 
                             HeaderText="Datos requeridos" 
                             Font-Names="verdana"
                             Font-Size="12" 
                             runat="server" />        
                    </div>
                </div>
            </div>

            <%--contenerdor para el boton de registro--%>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-12">
                        <asp:Button ID="btnRegistro" CssClass="btn btn-primary" OnClick="btnRegistro_Click" Text="Registrar Proveedor" runat="server"/>
                    </div>
                </div>
            </div>

        </div>

    </div>

</asp:Content>
