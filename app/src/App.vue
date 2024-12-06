<script setup>

import 'bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

import Header from './components/Header.vue';

</script>


<template>

<div id="app">

    <Header></Header>
    <router-view></router-view>
    
    <footer class="text-center mt-5">
      <p>DV | Aplicaciones para Dispositivos Móviles | Correa Nancy</p>
    </footer>

  </div>

</template>

<style>
  .container {
    max-width: 1200px;
  }
  footer {
    padding: 3em 0;
    background-color: #4e5f59;
  }
  footer p{
      color: #ebe7e1;
  }

  
</style>

