<script setup>

import Card from '../components/Card.vue';

</script>

<script>
  export default {
    data(){
      return {
        products: [],
        categories: [],
        selectedCategory: '', // Categoría seleccionada
        filtro: '', // Filtro por nombre (buscador)
      }
    },
    created() {
      this.getCategories();
      this.getProducts();
    },
    computed: {
        // Filtra por nombre y por categoría
        filteredProducts() {
          console.log('Categoria seleccionada:', this.selectedCategory); // Depuración
            return this.products.filter(product => {
                return (
                    (!this.selectedCategory || Number(product.id_categoria) === Number(this.selectedCategory)) &&
                    (!this.filtro || product.nombre.toLowerCase().includes(this.filtro.toLowerCase()))
                );
            });
        },
    },
    methods: {

      async getProducts(){

        try {
          const endPoint = 'http://localhost/backend/getProducts.php';
          console.log('fetch')
          const response = await fetch(endPoint);
          const json = await response.json();
          console.log(json);
          this.products = json;
          
        } catch (error) {
          alert('Error del servidor')
        }
      },

      async getCategories(){

        try {
          const endPoint = 'http://localhost/backend/getCategories.php';
          console.log('fetch')
          const response = await fetch(endPoint);
          const json = await response.json();
          console.log(json);
          this.categories = json;
          
        } catch (error) {
          alert('Error del servidor')
        }
      },

      selectCategory(categoryId) {
          this.selectedCategory = categoryId; // Actualiza la categoría seleccionada
      },

      
    }
  }
</script>


<template>
    
  <div class="container">

    <h2 class="text-center py-5">Productos</h2>

    <div class="col mb-5 filter">
      <div class="row align-items-center">
        <div class="col-auto">
            <p class="mb-0">Filtrar por:</p>
        </div>
        <div class="col-auto">
          <select class="form-select" v-model="selectedCategory">
              <option value="">Todos los productos</option>
              <option v-for="category in categories" :key="category.id_categoria" :value="category.id_categoria" v-text="category.nombre"></option>
          </select>
        </div>
            
        <div class="col-auto ms-auto d-flex align-items-center">
                <input type="search" class="form-control me-2" placeholder="Buscar..." v-model="filtro">
                <button type="button" class="btn btn-custom">Buscar</button>
        </div>
      </div>
    </div>

    <div class="row justify-content-center">
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 mb-4" v-for="product in filteredProducts" :key="product.id_producto">
        <Card v-bind:item="product"></Card>
      </div>
    </div>

</div>

</template>

<style scoped>
  .container{
    margin-top: 10em;
  }
  .filter select:focus, .filter input:focus {
      outline: none !important; 
      box-shadow: none !important; 
  }

</style>
  