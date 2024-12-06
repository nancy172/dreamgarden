<script setup>

import Card from '../components/Card.vue';
import Filter from '../components/Filter.vue';

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

      // Actualiza la categoría seleccionada en el componente padre
      selectCategory(categoryId) {
          this.selectedCategory = categoryId; 
      },

      // Actualiza el texto de búsqueda en el componente padre
      updateSearch(query) {
          this.filtro = query;
      }

      
    }
  }
</script>


<template>
    
  <div class="container">

    <h2 class="text-center py-5">Productos</h2>

    <!-- Filtros -->
    <!-- Se pasan los datos del componente padre al componente hijo Filter y se escuchan los eventos emitidos desde el componente hijo-->
    <Filter  
      v-bind:categories="categories" 
      v-bind:selectedCategory="selectedCategory" 
      v-bind:searchQuery="filtro" 
      @update:selectedCategory="selectCategory"
      @update:searchQuery="updateSearch">
    </Filter>

    <!-- Productos filtrados -->
    <div class="row justify-content-center">
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 mb-4" v-for="product in filteredProducts" :key="product.id_producto">
        <Card v-bind:item="product"></Card>
      </div>
    </div>

    <!-- Mostrar mensaje si no hay resultados -->
    <div v-if="filteredProducts.length === 0" class="text-center py-4">
      <p class="fs-5">No hay resultados para tu búsqueda.</p>
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
  