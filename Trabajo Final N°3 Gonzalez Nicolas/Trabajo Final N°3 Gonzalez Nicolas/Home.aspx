<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Trabajo_Final_N_3_Gonzalez_Nicolas.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class=" p-3 m-auto bg-warning text-dark">
        <div class="text-center">
            <h1><u>home</u></h1>
        </div>

        <div class="row row-cols-1 row-cols-md-3 g-4">
            
            
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                   
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Escudo_del_Club_Atl%C3%A9tico_Independiente.svg/800px-Escudo_del_Club_Atl%C3%A9tico_Independiente.svg.png"  CssClass=" d-block w-75" style="height: 400px" alt="rojo" />
                        <div class="carousel-caption d-none d-md-block">
                            
                            <p> rojo.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://resizer.glanacion.com/resizer/v2/los-jugadores-de-independiente-se-van-del-campo-HRRZHSBFIVB7DMOGKOVYISBNDI.JPG?auth=af20b5ac953012abe61ec21f664f749a68f77fc79f0759136fe160cbb1a1e34d&width=880&height=586&quality=70&smart=true" CssClass="d-block w-75" style=" height:400px" alt="equipo">
                        <div class="carousel-caption d-none d-md-block">
                            
                            <p>independiente.</p>
                        </div>
                    </div>
                
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

        </div>
    </div>


</asp:Content>
