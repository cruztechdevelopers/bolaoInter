import { createRouter, createWebHistory } from 'vue-router'

import { usarAutenticacaoStore } from '../stores/autenticacao'
import AdminPainelView from '../views/AdminPainelView.vue'
import EntrarView from '../views/EntrarView.vue'
import InicioView from '../views/InicioView.vue'
import PainelView from '../views/PainelView.vue'

export const roteador = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/',
      name: 'inicio',
      component: InicioView,
    },
    {
      path: '/entrar',
      name: 'entrar',
      component: EntrarView,
    },
    {
      path: '/painel',
      name: 'painel',
      component: PainelView,
      meta: { requerAutenticacao: true },
    },
    {
      path: '/admin',
      name: 'admin',
      component: AdminPainelView,
      meta: { requerAutenticacao: true, requerAdministrador: true },
    },
  ],
})

roteador.beforeEach((to) => {
  const autenticacao = usarAutenticacaoStore()

  if (to.meta.requerAutenticacao && !autenticacao.estaAutenticado) {
    return { name: 'entrar' }
  }

  if (to.meta.requerAdministrador && !autenticacao.eAdministrador) {
    return { name: 'painel' }
  }

  return true
})
