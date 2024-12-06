<template>
    <div class="mensaje-enviado container">
      <h2 class="fs-1">Mensaje Enviado</h2>
      <p class=" fs-5">Gracias por ponerte en contacto con nosotros. Hemos recibido tu mensaje y te responderemos a la brevedad.</p>
      <router-link to="/" class=" btn-custom">Volver a Inicio</router-link>
    </div>
</template>
  
  
<style scoped>
    .mensaje-enviado {
        text-align: center;
        margin-top: 15em;
    }
    p{
        margin: 3em 0;
    }
    .btn-custom {
        background-color: #925c46; 
        border: none;
        padding: .4em 1em;
        text-decoration: none;
        border-radius: 10px;
        transition: background-color 0.3s ease;
        color: #ebe7e1;
    }
    .btn-custom:hover {
        background-color: #4e5f59;
        color: #ebe7e1;
    }
</style>