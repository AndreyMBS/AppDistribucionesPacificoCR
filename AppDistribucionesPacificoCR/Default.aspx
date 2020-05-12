<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AppDistribucionesPacificoCR.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
 
        <%--CARROUSEL--%>
        <div id="carouselExampleCaptions" class="carousel slide div-center" data-ride="carousel" style="width:80%; height:30%; text-align:center">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner div-radius">
                <div class="carousel-item active">
                    <img src="www/css/img/imagen4.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Microondas Mabe.</h5>
                        <p>Una máquina confiable para un tiempo de vida alargable.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="www/css/img/imagen5.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Computadoras de gama alta</h5>
                        <p>¿Ocupás un portátil en tu día a día? Nosotros lo tenemos.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="www/css/img/imagen6.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Abarrotes</h5>
                        <p>Productos selccionados en descuento hasta el 28 de Mayo.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <%----------------------------------------------------------------%>
    
    <br />
    <br />

    <div class="container">
        <div class="row div-center">
            <div class="col-sm">
                <div class="card div-radius" style="width: 18rem;">
                    <img src="https://www.greenit-solution.com/wp-content/uploads/2019/12/shutterstock_1165119418-300x150.jpg" class="card-img-top div-radius" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Linea blanca</h5>
                        <p class="card-text">Ofrecemos una gran gama de productos en linea blanca.</p>
                        <a href="#" class="btn" style="background-color:#0CE9B7;" border: 1.5px solid #000000; text-align:center;>Ver marcas</a>
                    </div>
                </div>
            </div>
            <div class="col-sm">
                <div class="card div-radius" style="width: 18rem;">
                    <img src="https://bantuhits.biz/wp-content/uploads/2020/02/lg-smartphones-banner_V40_V50_G7_D-300x150.jpg" class="card-img-top div-radius" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Tecnología</h5>
                        <p class="card-text">Si está a la venta, lo tenemos aquí.</p>
                        <a href="#" class="btn" style="background-color:#0CE9B7;" border: 1.5px solid #000000; text-align:center;>Ver marcas</a>
                    </div>
                </div>
            </div>
            <div class="col-sm">
                <div class="card div-radius" style="width: 18rem;">
                    <img src="https://images.canal1.com.co/wp-content/uploads/2020/02/26162224/Supermercado-300x150.jpg" class="card-img-top div-radius" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Abarrotes</h5>
                        <p class="card-text">No te preocupés por esos productos que te hacen falta, nosotros los llevamos a la puerta de tu casa.</p>
                        <a href="#" class="btn" style="background-color:#0CE9B7;" border: 1.5px solid #000000; text-align:center;">Ver marcas</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
