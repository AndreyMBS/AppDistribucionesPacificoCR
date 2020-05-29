<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AppDistribucionesPacificoCR.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />
    
    <div class="container columnaGeneral">
      <center>
      <div class="row columnaGeneral">
        <div class="col-sm-6 columnas">
          <div class="card div-radius" style="width: 18rem;">
            <img src="https://www.greenit-solution.com/wp-content/uploads/2019/12/shutterstock_1165119418-300x150.jpg" class="card-img-top div-radius" alt="...">
            <div class="card-body">
                <h5 class="card-title">Linea blanca</h5>
                <p class="card-text">Ofrecemos una gran gama de productos en linea blanca.</p>
                <a href="#" class="btn" style="background-color:#0CE9B7;" border: 1.5px solid #000000; text-align:center;>Ver marcas</a>
            </div>
        </div>
        </div>
        <div class="col-sm-6 columnas">
          <div class="card div-radius" style="width: 18rem;">
            <img src="https://bantuhits.biz/wp-content/uploads/2020/02/lg-smartphones-banner_V40_V50_G7_D-300x150.jpg" class="card-img-top div-radius" alt="...">
            <div class="card-body">
                <h5 class="card-title">Tecnología</h5>
                <p class="card-text">Si está a la venta, lo tenemos aquí.</p>
                <a href="#" class="btn" style="background-color:#0CE9B7;" border: 1.5px solid #000000; text-align:center;>Ver marcas</a>
            </div>
        </div>
        </div>
          <div class="col-sm-6 columnas">
          <div class="card div-radius" style="width: 18rem;">
            <img src="https://images.canal1.com.co/wp-content/uploads/2020/02/26162224/Supermercado-300x150.jpg" class="card-img-top div-radius" alt="...">
            <div class="card-body">
                <h5 class="card-title">Abarrotes</h5>
                <p class="card-text">No te preocupés por esos productos que te hacen falta, nosotros los llevamos a la puerta de tu casa.</p>
                <a href="#" class="btn" style="background-color:#0CE9B7;" border: 1.5px solid #000000; text-align:center;">Ver marcas</a>
            </div>
        </div>
        </div>
          <div class="col-sm-6 columnas">
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
        </center>
    </div>
    
    <br />
            
        <%----------------------------------------------------------------%>
    
    <br />
    <br />

    <div class="container" style="text-align: center">

            <div class="container">
                <div class="row">
                    <div class="col">
                        <h6 class="div-radius" style="text-align: justify; color: black; background-color:white;">Nuestra empresa es una distribuidora que se dedica a la comercialización
                                electrodomésticos, audio, video, cómputo, entre otros. Fue fundada en el año 2000. 
                                La empresa se expandió hacia otros mercados con poblaciones
                                potenciales, basándose en un mercado agresivo, facilidades de pago y consolidación financiera, 
                                dándose un crecimiento constante.
                                Con el tiempo el grupo fortaleció su operación en diferentes zonas del país.
                                En la actualidad la operación de Costa Rica se compone de más de 115  Puntos de Venta reconocidos,
                                Los almacenes se encuentran distribuidos por todo el territorio de Costa Rica, logrando
                                representación en las siete provincias y principales cantones del país.
                        </h6>
                    </div>
                    <div class="col">
                        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="www/css/img/4.jpg" class="d-block w-100; img-thumbnail" alt="4">
                                </div>
                                <div class="carousel-item">
                                    <img src="www/css/img/5.jpg" class="d-block w-100; img-thumbnail" alt="5">
                                </div>
                                <div class="carousel-item">
                                    <img src="www/css/img/6.jpg" class="d-block w-100; img-thumbnail" alt="6">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>

</asp:Content>
