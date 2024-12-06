<template>
    <div id="inicio-banner" class="container-fluid p-0">
        <div id="banners" class="carousel slide" data-bs-ride="carousel">

            <div class="carousel-indicators">
                <button type="button" data-bs-target="#banners" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Imagen 1"></button>
                <button type="button" data-bs-target="#banners" data-bs-slide-to="1" aria-label="Imagen 2"></button>
            </div>
            
            <div class="carousel-inner">
                
                <picture class="carousel-item active">
                        <source media="(min-width: 768px )" srcset="../assets/images/banner1_pc.jpg">
                        <source media="(min-width: 577px )" srcset="../assets/images/banner1_tablet.jpg">
                        <img class="d-block w-100" src="../assets/images/banner1_mobile.jpg" alt="Banner de la marca con tres plantas.">
                        <div class="carousel-caption top-right">
                            <h2>Nuevas plantas cactáceas disponibles</h2>
                            <p class="fs-5">Fáciles de cuidar, ideales para cualquier espacio.</p>
                        </div>
                </picture>
                
                <picture class="carousel-item">
                        <source media="(min-width: 768px )" srcset="../assets/images/banner2_pc.jpg">
                        <source media="(min-width: 577px )" srcset="../assets/images/banner2_tablet.jpg">
                        <img class="d-block w-100" src="../assets/images/banner2_mobile.jpg" alt="Banner de plantas, asesoramiento.">
                        <div class="carousel-caption top-right-2">
                            <h2>¡No te quedes con las dudas!</h2>
                            <p class="p-display fs-5">Te ofrecemos asesoramiento en todo momento, antes y después de tu compra.</p>
                        </div>
                </picture>
                
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#banners" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Anterior</span>
            </button>

            <button class="carousel-control-next" type="button" data-bs-target="#banners" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Siguiente</span>
            </button>
        </div>
    </div>

    <section id="sec-sobre-nosotros">
        <article class="container">

            <div class="row gap-4">
                <div class="col-md">
                    <h2 class="pb-5">Sobre nosotros</h2>
                    <p>En Jardín Soñado, nuestra misión es acercarte a la naturaleza a través de una <strong> cuidada selección de plantas</strong>. Creemos que cada hogar puede beneficiarse de un toque verde, y nos esforzamos por ofrecerte <strong>plantas saludables y asesoramiento experto</strong>. Descubrí nuestra <strong>variedad de plantas</strong> y transformá tu espacio con nosotros.</p>
                    <p>Desde <strong>cactáceas</strong> hasta <strong>plantas tropicales</strong>, nuestra variedad está diseñada para adaptarse a todos los gustos y estilos de vida. En Jardín Soñado, cada planta cuenta una historia, y estamos aquí para ayudarte a encontrar la tuya.</p>
                </div>

                <figure class="col-md">
                    <picture>
                        <source media="(min-width: 992px )" srcset="../assets/images/sobre_nosotros_pc.jpg">
                        <source media="(min-width: 768px )" srcset="../assets/images/sobre_nosotros_tablet.jpg">
                        <img src="../assets/images/sobre_nosotros_mobile.jpg" alt="Imagen de una persona sosteniendo una planta." class="w-100 rounded">
                    </picture>
                </figure>
            </div>
        </article>
    </section>

    <section id="sec-benef">
        <h2 class="pb-5 text-center">Nuestros beneficios</h2>
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card py-4">
                        <figure class="text-center pt-5">
                            <img src="../assets/images/beneficio1.png" class="card-img-top img-fluid" alt="Ícono de una planta.">
                        </figure>
                        <div class="card-body">
                            <h3 class="card-title text-center fs-4 pb-3">Variedad de Plantas</h3>
                            <p class="card-text text-center">Ofrecemos una amplia gama de plantas para satisfacer todos los gustos y necesidades.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card py-4">
                        <figure class="text-center pt-5">
                            <img src="../assets/images/beneficio2.png" class="card-img-top" alt="Ícono sobre asesoramiento.">
                        </figure>
                        <div class="card-body">
                            <h3 class="card-title text-center fs-4 pb-3">Asesoramiento Personalizado</h3>
                            <p class="card-text text-center">Recibí consejos de expertos para el cuidado y mantenimiento de tus plantas.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card py-4">
                        <figure class="text-center pt-5">
                            <img src="../assets/images/beneficio3.png" class="card-img-top" alt="Ícono de entrega rápida.">
                        </figure>
                        <div class="card-body">
                            <h3 class="card-title text-center fs-4 pb-3">Entregas Rápidas</h3>
                            <p class="card-text text-center">Garantizamos entregas rápidas para que disfrutes de tus plantas lo antes posible.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<style scoped>
    .carousel-indicators [data-bs-target]  {
        width: 19px;
        height: 19px;
        border: none;
        border-radius: 50%;
        background: #4e5f59d7;
    }
    .carousel-indicators .active {
        background: #4e5f59;
    }
    .top-right, .top-right-2{
        position: absolute;
        top: 200px;
        right: 100px;
        text-align: right;
        color: #4e5f59;
    }
    .top-right p{
        display: none;
    }
    .carousel-inner {
        max-height: 880px;
    }
    #sec-sobre-nosotros, #sec-benef{
        margin-top: 6em;
    }
    #sec-benef, .pr-card{
        margin-bottom: 4em;
    }
    #sec-benef figure img{
        height: 128px;
        width: 128px;
    }

</style>
  