<script setup>
    import Carrito from '../components/Carrito.vue';
</script>

<template>
    <div class="container">
            <h2 class="m-custom text-center py-5">Mi carrito<i class="fa-solid fa-cart-shopping"></i></h2>
    
            <router-link to="/tienda" class="mb-4 a-custom"><i class="fa-solid fa-arrow-left fa-lg pe-3" style="color: #925c46;"></i>Volver a Productos</router-link>

            <Carrito></Carrito>

    </div>
</template>

<style scoped>
    .container{
        margin-top: 10em;
    }
    .m-custom{
        margin-top: 2.3em;
        }
    .a-custom{
        font-size: 1.1em;
        text-decoration: none;
        color: #925c46;
        padding-bottom: 1em;
    }
</style>