<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AppDistribucionesPacificoCR.RegistroProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Login--%>

    <div class="container col-md-6 col-lg-6 col-xl-6 text-center div-radius loginContainer" >
        <div class="justify-content-center text-center">
            <%--Form content--%>
            <%--Title form holder--%>
            <div class="form-group mt-4">
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label Text="Formulario" runat="server" style="color:white"/>
                    </div>
                </div>
            </div>

            <%--Incoming name data form--%>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Usuario" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtUsuario" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtUsuario" ErrorMessage="El usuario es un campo requerido" ControlToValidate="txtUsuario" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label Text="Contraseña" runat="server" style="color:white"/>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox id="txtContrasena" Type="password" CssClass="form-control" MaxLenght="80" runat="server" />  
                    </div>
                    <div class="col-md-1"> 
                        <asp:RequiredFieldValidator id="requiredTxtContrasena" ErrorMessage="La contraseña es un campo requerido" ControlToValidate="txtContrasena" ForeColor="Red" runat="server">*</asp:RequiredFieldValidator>
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
                        <asp:Button id="btnIngresar" CssClass="btn btn-light barraNavegacion" OnClick="btnIngresar_Click" Text="Ingresar" runat="server" style="color:#000000" />
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
