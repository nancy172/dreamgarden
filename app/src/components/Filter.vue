<template>
    <div class="col mb-5 filter">
      <div class="row align-items-center">
        <div class="col-auto">
          <p class="mb-0">Filtrar por:</p>
        </div>

        <!-- Filtro por categorías -->
        <div class="col-auto">
          <select class="form-select" v-bind:value="selectedCategory" @change="CategoryChange">
            <option value="">Todos los productos</option>
            <option v-for="category in categories" :key="category.id_categoria" v-bind:value="category.id_categoria" v-text="category.nombre"></option>
          </select>
        </div>
        
        <!-- Input para buscar -->
        <div class="col-auto ms-auto d-flex align-items-center">
          <input type="search" class="form-control me-2" placeholder="Buscar..." v-bind:value="searchQuery" @input="SearchChange">
          <button type="button" class="btn btn-custom">Buscar</button>
        </div>

      </div>
    </div>
  </template>
  
  <script>
  export default {

    // Propiedades que el componente recibe del componente padre
    props: {
      categories: Array,
      selectedCategory: String,
      searchQuery: String
    },
    methods: {

      // El componente hijo emite eventos para que el padre actualice esos valores
      // Emite un evento llamado update:selectedCategory al componente padre, pasando el valor seleccionado (e.target.value)
      CategoryChange(e) {
        this.$emit('update:selectedCategory', e.target.value);
      },

      // Emite un evento llamado update:searchQuery al componente padre, pasando el valor del campo de búsqueda (e.target.value)
      SearchChange(e) {
        this.$emit('update:searchQuery', e.target.value);
      }
    }
  };
  </script>
  
  <style scoped>
    .filter select:focus, .filter input:focus {
        outline: none !important; 
        box-shadow: none !important;
    }
  </style>
  