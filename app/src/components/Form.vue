<template>
    <div class="contact-form">

        <!-- Llama al método formSubmit() cuando se hace clic en el botón "Enviar" y se evita el recargo de la página. -->
      <form v-on:submit.prevent="formSubmit" class="container">

        <!--  Se enlazan los valores del campo con las propiedades en data con el v-model -->
        <div class="form-group mb-3">
          <label for="name" class="form-label fw-bold">Nombre*</label>
          <input type="text" class="form-control" id="name" v-model="name" placeholder="Ingresa tu nombre" required />
        </div>

        <div class="form-group mb-3">
          <label for="email" class="form-label fw-bold">Email*</label>
          <input type="email" class="form-control" id="email" v-model="email" placeholder="Ingresa tu correo" required />
        </div>

        <div class="form-group mb-3">
          <label for="subject" class="fw-bold">Asunto*</label>
          <select id="subject" class="form-control" v-model="subject" required>
            <option value="">Seleccioná un asunto</option>
            <option value="productos">Consulta sobre Productos</option>
            <option value="pedidos">Consulta sobre Pedidos</option>
            <option value="asesoramiento">Asesoramiento sobre Plantas</option>
            <option value="otro">Otro</option>
        </select>
        </div>

        <div class="form-group mb-3">
          <label for="message" class="form-label fw-bold">Mensaje*</label>
          <textarea id="message" class="form-control" v-model="message" placeholder="Escribe tu mensaje" style="height: 130px; resize: none;" maxlength="120" required></textarea>
        </div>

        <button type="submit" class="btn btn-custom my-3">Enviar</button>

      </form>

</div>


</template>
  
<script>
  export default {
    data() {
      return {
        name: '',
        email: '',
        subject: '',
        message: '',
        messageSent: null, // null: no enviado, true: éxito, false: error
      };
    },
    methods: {
      formSubmit() {
        // Validación de los campos requeridos
        if (this.name && this.email && this.subject && this.message) {
          this.messageSent = true;
          this.$router.push('/mensaje-enviado'); // Redirige a la vista de "mensaje enviado"
          this.resetForm(); // Cuando se envía se resetea el formulario
        } else {
          this.messageSent = false;
        }
      },
      resetForm() {
        // Se resetea, reinicia los valores de los campos
        this.name = '';
        this.email = '';
        this.subject = '';
        this.message = '';
      }
    }
  };
</script>
  
<style scoped>
    .btn-custom {
        padding: 0.75rem 1.5rem;
        font-size: 1.2rem;
        border-radius: 0.5rem;
        background-color: #925c46; 
        border: none;
        transition: background-color 0.3s ease;
        color: #ebe7e1;
    }
    .btn-custom:hover {
        background-color: #4e5f59;
        color: #ebe7e1;
    }
    .container form input, 
    .container form select, 
    .container form textarea {
        font-size: 1em;
    }
    form input, form textarea, form select{
        outline: 2px solid #4e5f59;
    }
    input:focus, textarea:focus, select:focus{
        border-color: transparent  !important;
        box-shadow: 0 0 0 0.2rem rgba(165, 111, 82, 0.5) !important;
    }
    button[type="submit"]{
        outline: 0px;
        width: 100%;
    }
    .message p {
        font-size: 1.2rem;
        font-weight: bold;
        margin: 10px 0;
        padding-left: 1em;
    }
  
</style>
  