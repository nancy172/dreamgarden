<template>
    <div class="mt-4">
        <ul v-if="cart.length" class="list-group">
            <li class="list-group-item d-flex align-items-center" v-for="item in cart" :key="item.id_producto">
                <img :src="item.imagen" :alt="item.nombre" class="img-thumbnail" style="width: 100px; height: 100px; margin-right: 20px;">
                <div class="flex-grow-1">
                    <h5>{{ item.nombre }}</h5>
                    <p>{{ `$${item.precio}` }}</p>
                    <div class="d-flex align-items-center">
                        <button class="btn btn-outline-secondary btn-sm" v-on:click="decrease(item)">-</button>
                        <span class="mx-2">{{ item.quantity }}</span>
                        <button class="btn btn-outline-secondary btn-sm" v-on:click="increase(item)">+</button>
                    </div>
                </div>
                <div >
                    <p class="m-0">Total: ${{ item.precio * item.quantity }}</p>
                </div>
                <button v-on:click="deleteItem(item)" class="delete-btn btn btn-danger m-5">Eliminar</button>
            </li>
        </ul>

        <p v-else class="text-center fs-5">No hay productos en el carrito.</p>

        <h3 class="mt-4">Total: ${{ total }}</h3>
        <button v-on:click="clearCart" v-bind:disabled="cart.length === 0" class="btn btn-danger my-4">Vaciar carrito</button>
    </div>
</template>

<script>

    import Swal from 'sweetalert2';

    export default {
        data() {
            return {
                cart: [], // Carrito
            };
        },
        computed: {
            // Calcula el total del carrito
            total() {
                return this.cart.reduce((sum, item) => sum + item.precio * item.quantity, 0);
            },
        },
        created() {
            this.loadCart(); // Cargar el carrito desde localStorage al iniciar
        },
        methods: {
            // Cargar carrito desde localStorage
            loadCart() {
                const cartSaved = JSON.parse(localStorage.getItem('cart'));
                if (cartSaved) this.cart = cartSaved;
            },
            // Guardar carrito en localStorage
            saveCart() {
                localStorage.setItem('cart', JSON.stringify(this.cart));
            },
            // Incrementar cantidad de un producto
            increase(item) {
                item.quantity++;
                this.saveCart();
            },
            // Decrementar cantidad de un producto
            decrease(item) {
                if (item.quantity > 1) {
                    item.quantity--;
                    this.saveCart();
                } else {
                    this.deleteItem(item);
                }
            },
            // Eliminar un producto del carrito
            deleteItem(item) {
                this.cart = this.cart.filter(cartItem => cartItem.id_producto !== item.id_producto);
                this.saveCart();
            },
            // Vaciar el carrito
            clearCart() {
                Swal.fire({
                    title: "Vaciar",
                    text: "¿Está seguro que desea vaciar el carrito?",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#4e5f59",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "Si",
                    cancelButtonText: "No"
                }).then((result) => {
                    if (result.isConfirmed) {
                        this.cart = []; 
                        this.saveCart(); 
                    }
                });
            },
    },
};
</script>
