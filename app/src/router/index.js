import { createRouter, createWebHistory } from 'vue-router';

// Se importan las vistas
import Inicio from '../views/Inicio.vue';
import Tienda from '../views/Tienda.vue';
import Carrito from '../views/Carrito.vue';
import Contacto from '../views/Contacto.vue';
// import Gestion from '../views/Gestion.vue';
import MensajeEnviado from '../views/MensajeEnviado.vue';

const routes = [
  {
    path: '/',
    name: 'Inicio',
    component: Inicio,
  },
  {
    path: '/tienda',
    name: 'Tienda',
    component: Tienda,
  },
  {
    path: '/carrito',
    name: 'Carrito',
    component: Carrito,
  },
  {
    path: '/contacto',
    name: 'Contacto',
    component: Contacto,
  },
  // {
  //   path: '/gestion',
  //   name: 'Gestion',
  //   component: Gestion,
  // },
  {
    path: '/mensaje-enviado',
    name: 'MensajeEnviado',
    component: MensajeEnviado,
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
