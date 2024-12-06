<template>
    <header class="container-fluid">
      <nav class="navbar navbar-expand-lg container">
        <div class="container-fluid">
          <!-- Logo con router-link -->
          <h1 id="logo">
            <router-link class="navbar-brand" to="/">Jardín soñado</router-link>
          </h1>
  
          <!-- Menú hamburguesa -->
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <img src="../assets/images/icon-menu.png" alt="Menu icon">
          </button>
  
          <!-- Barra de navegación -->
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item mx-3">
                <router-link class="nav-link fs-5" to="/">Inicio</router-link>
              </li>
              <li class="nav-item mx-3">
                <router-link class="nav-link fs-5" to="/tienda">Tienda</router-link>
              </li>
              <li class="nav-item mx-3">
                <router-link class="nav-link fs-5" to="/carrito"><i class="fa-solid fa-cart-shopping" style="color: #ebe7e1;"></i></router-link>
              </li>
              <li class="nav-item mx-3">
                <router-link class="nav-link fs-5" to="/contacto">Contacto</router-link>
              </li>
              <!-- <li class="nav-item mx-3">
                <router-link class="nav-link fs-5" to="/gestion">Gestión</router-link>
              </li> -->
              
            </ul>
          </div>
        </div>
      </nav>
    </header>
  </template>

<script>

   export default {
        name: 'Header',
    };
    
</script>

<style scoped>
    header {
        background-color: #4e5f59;
        color: #ebe7e1;
        padding: .5em 0;
        position: fixed;
        z-index: 100;
        top: 0;
    }
    #logo{
        background-image: url('../assets/images/logo.png');
        width: 175px;
        height: 50px;
    }
    #logo a{
        display: block;
        width: 100%; 
        height: 100%;
        text-indent: -9999px;
    }
    header .nav-link, header .nav-link:hover{
        color: #ebe7e1;
        margin: .8em 0;
    }
    header nav div ul{
        text-align: center;
        margin-top: 1em;
    }
    header button{
        color: #ebe7e1;
    }
</style>