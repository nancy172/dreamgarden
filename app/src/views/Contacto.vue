<script setup>
    import Form from '../components/Form.vue';
</script>

<template>
    <div class="container">
        <div class="row">

            <div class="col-md">
                <h2 class="m-custom text-center py-4">¡Contáctanos!</h2>
    
                <!-- Formulario de contacto -->
                <Form></Form>
    
            </div>
    
            <!-- Imagen -->
            <figure class="col-md text-center mt-3">
                    <picture>
                        <source media="(min-width: 992px )" srcset="../assets/images/planta_contacto_pc.png">
                        <source media="(min-width: 768px )" srcset="../assets/images/planta_contacto_tablet.png">
                        <img src="../assets/images/planta_contacto_mobile.png" alt="Imagen de un dibujo de una planta">
                    </picture>
            </figure>

        </div>

    </div>
</template>

<style scoped>
    .container{
        margin-top: 10em;
    }
    .m-custom{
        margin-top: 2.3em;
    }
    
</style>