<template>
    <div class="card mb-3 h-100">
        <figure>
            <img v-bind:src="item.imagen" class="card-img-top" v-bind:alt="item.nombre">
        </figure>
        <div class="card-body text-center">
            <h3 class="card-title fs-4 mb-2 fw-bold text-center" v-text="item.nombre"></h3>
            <p class=" mb-2 fw-bold text-center" v-text="item.nombre_categoria"></p>
            <ul class="list-unstyled text-center">
                <li class="d-block mb-4 fs-5 fw-bold" v-text="'$' + item.precio"></li>
            </ul>
            <button type="button" class="btn btn-custom d-block text-center mt-1 mx-auto" v-on:click="addCart">Agregar al carrito
                <i class="fa-solid fa-cart-shopping" style="color: #ebe7e1;"></i>
            </button>
        </div>
  </div>
</template>

<script>

    import Toastify from 'toastify-js';
    import "toastify-js/src/toastify.css";

    export default {
        name: 'Card',
        props: {
            item: {
                type: Object
            }
        },
        methods: {
            addCart() {
                // Recuperar el carrito actual desde localStorage
                let cart = JSON.parse(localStorage.getItem('cart')) || [];

                // Buscar si el producto ya está en el carrito
                const existingProduct = cart.find(product => product.id_producto === this.item.id_producto);

                if (existingProduct) {
                    // Si existe, incrementar la cantidad
                    existingProduct.quantity++;
                } else {
                    // Si no existe, agregarlo con una cantidad inicial
                    cart.push({ ...this.item, quantity: 1 });
                }

                // Guardar el carrito actualizado en localStorage
                localStorage.setItem('cart', JSON.stringify(cart));

                // Notificar al usuario
                Toastify({
                text: `¡${this.item.nombre} agregado al carrito!`,
                duration: 3000,
                gravity: "top",
                position: "right",
                style: {
                    background: "#925c46",
                    color: "#ffffff",
                    borderRadius: "5px",
                    padding: "10px"
                }
                }).showToast();
            }
        }
    }
</script>

<style>
    .btn-custom {
        background-color: #925c46; 
        border: none;
        transition: background-color 0.3s ease;
        color: #ebe7e1;
    }
    .btn-custom:hover {
        background-color: #4e5f59;
        color: #ebe7e1;
    }
</style>